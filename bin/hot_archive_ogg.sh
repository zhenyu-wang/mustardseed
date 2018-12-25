#!/bin/sh

#------------------------------------------------------
#功能：脚本返回 当前goldengate所占用的归档文件 sequence
#done: zhenyu-wang 2018-12-24
#------------------------------------------------------

# 获取当前执行脚本的用户
CUSER=`id |cut -d"(" -f2 | cut -d ")" -f1`
 
# 可以按需要指定日志的路径
RMAN_LOG_FILE=${0}.`date +%y%m%d`

# 如果不想记录每一次执行的日子，则将以下注释去掉
#if [ -f "$RMAN_LOG_FILE" ]
#then
#	rm -f "$RMAN_LOG_FILE"
#fi

# 初始日志文件的内容
echo >> $RMAN_LOG_FILE
chmod 666 $RMAN_LOG_FILE
 
echo Script $0 >> $RMAN_LOG_FILE
echo ==== started on `date` ==== >> $RMAN_LOG_FILE
echo >> $RMAN_LOG_FILE
 
# 环境变量配置
ORACLE_HOME=/oracle/product/10.2.0/db
export ORACLE_HOME

ORACLE_SID=epmpln2
export ORACLE_SID

ORACLE_USER=oracle

TARGET_CONNECT_STR=system/neusoft
 
RMAN=$ORACLE_HOME/bin/rman

# 输出变量设置到日志文件
echo >> $RMAN_LOG_FILE
echo   "RMAN: $RMAN" >> $RMAN_LOG_FILE
echo   "ORACLE_SID: $ORACLE_SID" >> $RMAN_LOG_FILE
echo   "ORACLE_USER: $ORACLE_USER" >> $RMAN_LOG_FILE
echo   "ORACLE_HOME: $ORACLE_HOME" >> $RMAN_LOG_FILE

# ---------------------------------------------------------------------------
# Print out the value of the variables set by bphdb.
# ---------------------------------------------------------------------------

echo  >> $RMAN_LOG_FILE
echo   "NB_ORA_FULL: $NB_ORA_FULL" >> $RMAN_LOG_FILE
echo   "NB_ORA_INCR: $NB_ORA_INCR" >> $RMAN_LOG_FILE
echo   "NB_ORA_CINC: $NB_ORA_CINC" >> $RMAN_LOG_FILE
echo   "NB_ORA_SERV: $NB_ORA_SERV" >> $RMAN_LOG_FILE
echo   "NB_ORA_POLICY: $NB_ORA_POLICY" >> $RMAN_LOG_FILE

# ---------------------------------------------------------------------------
# NOTE: This script assumes that the database is properly opened. If desired,
# this would be the place to verify that.
# ---------------------------------------------------------------------------

echo >> $RMAN_LOG_FILE
 
# 根据变量值设置备份 LEVEL
if [ "$NB_ORA_FULL" = "1" ]
then
        echo "Full backup requested" >> $RMAN_LOG_FILE
        BACKUP_TYPE="INCREMENTAL LEVEL=0"
 
elif [ "$NB_ORA_INCR" = "1" ]
then
        echo "Differential incremental backup requested" >> $RMAN_LOG_FILE
        BACKUP_TYPE="INCREMENTAL LEVEL=1"
 
elif [ "$NB_ORA_CINC" = "1" ]
then
        echo "Cumulative incremental backup requested" >> $RMAN_LOG_FILE
        BACKUP_TYPE="INCREMENTAL LEVEL=1 CUMULATIVE"
 
elif [ "$BACKUP_TYPE" = "" ]
then
        echo "Default - Full backup requested" >> $RMAN_LOG_FILE
        BACKUP_TYPE="INCREMENTAL LEVEL=0"
fi




##############Goldengate Start##################
#Ver 1.2, use send extract showtrans instead
#Ver 1.1, added support for multiple extracts
#

OGG_LOG_FILE=${0}.ogg
if [ -f "$OGG_LOG_FILE" ]
then
rm -f "$OGG_LOG_FILE"
fi

#goldengate环境变量设置
OGG_HOME=/goldengate
OGG_HOST="emlnqdb1"
EXTRACT1_NAME=extla
EXTRACT2_NAME=extdb
RSH=ssh	#use remsh on HP-UX, rsh on AIX, on all platform with ssh installed, ssh is preferred
# 备份机（与target不一定在同一台机器上）
BACKUP_HOST=`hostname`
echo $BACKUP_HOST

#/oracle/scripts/ogg_arch.sh on goldengate host
# 如果备份机与target不在一台机器上
if [ ${BACKUP_HOST} != ${OGG_HOST} ]; then
   CMDSTR="$RSH ${OGG_HOST} /oracle/scripts/ogg_arch.sh"
else
   CMDSTR="/oracle/scripts/ogg_arch.sh"
fi

echo $CMDSTR
su - $ORACLE_USER -c "$CMDSTR" >$OGG_LOG_FILE 2>/dev/null 

get_oggseq() {
LISTFILE=$OGG_LOG_FILE
THREAD=$1
SEQUENCE=-1
FOUND_RECOVERY="false"
THREAD_MATCH="false"
RAC="false"
while read COL1 COL2 COL3 COL4
do
  if [ "$COL1" = "Recovery" -a "$COL2" = "Checkpoint" ]; then
    FOUND_RECOVERY="true"
  elif [ "$COL1" = "Thread" -a "$COL2" = "#:" -a "${FOUND_RECOVERY}" = "true" ]; then
    RAC="true"
    if [ "$COL3" = "$THREAD" ]; then
      THREAD_MATCH="true"
    fi
  elif [ "$COL1" = "Sequence" -a "$COL2" = "#:" -a "${FOUND_RECOVERY}" = "true" ]; then
    if [ "$RAC" = "false" -o "${THREAD_MATCH}" = "true" ]; then
      if [ "$SEQUENCE" -le 0 -o "$SEQUENCE" -gt "${COL3}" ]; then
        SEQUENCE="$COL3"
      fi
    fi
  else
    FOUND_RECOVERY="false"
    THREAD_MATCH="false"
  fi
#echo "inloop $SEQUENCE ${FOUND_RECOVERY}"
done < ${LISTFILE}

SEQUENCE=`expr $SEQUENCE - 1`
if [ $SEQUENCE -lt 0 ]; then
  SEQUENCE=0
fi
echo $SEQUENCE
}

seqid=`get_oggseq 1`
echo "GoldenGate Logseq1: $seqid" >> $RMAN_LOG_FILE

if [ $seqid -le 0 ]
then
  seqid=1
fi
logseq1=$seqid


seqid=`get_oggseq 2`
echo "GoldenGate Logseq2: $seqid" >> $RMAN_LOG_FILE
if [ $seqid -le 0 ]
then
seqid=1
fi
logseq2=$seqid


##############Goldengate End##################

echo "Logseq1: $logseq1" >> $RMAN_LOG_FILE
echo "Logseq2: $logseq2" >> $RMAN_LOG_FILE

##############Quest End##################




CMD_STR="
ORACLE_HOME=$ORACLE_HOME
export ORACLE_HOME
ORACLE_SID=$ORACLE_SID
export ORACLE_SID
$RMAN target $TARGET_CONNECT_STR nocatalog append << EOF
RUN {
# backup all archive logs
ALLOCATE CHANNEL dev1 TYPE disk;
ALLOCATE CHANNEL dev2 TYPE disk;
BACKUP
   filesperset 20
   FORMAT '/oraexp2/arc_rman_bak/al_%s_%p_%t'
   ARCHIVELOG until  sequence=$logseq1 thread=1 delete input ;
RELEASE CHANNEL dev1;
RELEASE CHANNEL dev2;
}

EOF
"
# Initiate the command string
 
if [ "$CUSER" = "root" ]
then
    su - $ORACLE_USER -c "$CMD_STR" >> $RMAN_LOG_FILE
    RSTAT=$?
else
    /usr/bin/sh -c "$CMD_STR" >> $RMAN_LOG_FILE
    RSTAT=$?
fi

CMD_STR="
ORACLE_HOME=$ORACLE_HOME
export ORACLE_HOME
ORACLE_SID=$ORACLE_SID
export ORACLE_SID
$RMAN target $TARGET_CONNECT_STR nocatalog append << EOF
RUN {
# backup all archive logs
ALLOCATE CHANNEL dev1 TYPE disk;
ALLOCATE CHANNEL dev2 TYPE disk;
BACKUP
   filesperset 20
   FORMAT '/oraexp2/arc_rman_bak/al_%s_%p_%t'
   ARCHIVELOG until  sequence=$logseq2 thread=2 delete input ;
RELEASE CHANNEL dev1;
RELEASE CHANNEL dev2;

ALLOCATE CHANNEL dev1 TYPE disk;
BACKUP
    # recommended format
    FORMAT '/oraexp2/arc_rman_bak/cntrl_%s_%p_%t'
    CURRENT CONTROLFILE;
RELEASE CHANNEL dev1;
}

EOF
"
# Initiate the command string
 
if [ "$CUSER" = "root" ]
then
    su - $ORACLE_USER -c "$CMD_STR" >> $RMAN_LOG_FILE
    RSTAT=$?
else
    /usr/bin/sh -c "$CMD_STR" >> $RMAN_LOG_FILE
    RSTAT=$?
fi


##############Quest End##################

# ---------------------------------------------------------------------------
# Log the completion of this script.
# ---------------------------------------------------------------------------
 
if [ "$RSTAT" = "0" ]
then
    LOGMSG="ended successfully"
else
    LOGMSG="ended in error"
fi
 
echo >> $RMAN_LOG_FILE
echo Script $0 >> $RMAN_LOG_FILE
echo ==== $LOGMSG on `date` ==== >> $RMAN_LOG_FILE
echo >> $RMAN_LOG_FILE
 
exit $RSTAT


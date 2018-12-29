umask 022
ORACLE_BASE=/oracle
ORACLE_HOME=$ORACLE_BASE/database
ORACLE_SID=gbkdb
export ORACLE_BASE ORACLE_SID ORACLE_HOME
export PATH=$PATH:$HOME/bin:$ORACLE_HOME/bin
LD_LIBRARY_PATH=$ORACLE_HOME/lib
export LD_LIBRARY_PATH=/ogg:$LD_LIBRARY_PATH
export GG_HOME=/ogg

_EXT_NAME=${1:-"extab"}
echo info ${_EXT_NAME}, showch|${GG_HOME}/ggsci>/oracle/scripts/ogg_arch.log
cat /oracle/scripts/ogg_arch.log

                                                                                                                        
  CREATE TABLE "EPM_MD"."C_METER"                                                                                       
   (	"CONS_MT_ID" NUMBER(16,0),                                                                                         
	"METER_ID" NUMBER(16,0),                                                                                               
	"INST_LOC" VARCHAR2(256),                                                                                              
	"INST_DATE" DATE,                                                                                                      
	"T_FACTOR" NUMBER(10,2),                                                                                               
	"REF_METER_FLAG" VARCHAR2(8),                                                                                          
	"REF_METER_ID" NUMBER(16,0),                                                                                           
	"VALIDATE_CODE" VARCHAR2(32),                                                                                          
	"MODULE_NO" VARCHAR2(32),                                                                                              
	"ORG_NO" VARCHAR2(16),                                                                                                 
	"MR_FACTOR" VARCHAR2(8),                                                                                               
	"LAST_CHK_DATE" DATE,                                                                                                  
	"ROTATE_CYCLE" NUMBER(5,0),                                                                                            
	"ROTATE_VALID_DATE" DATE,                                                                                              
	"SIM_CARD_NO" VARCHAR2(32),                                                                                            
	"CHK_CYCLE" NUMBER(5,0),                                                                                               
	"BIN_MT_POS" VARCHAR2(16),                                                                                             
	"MADE_NO" VARCHAR2(32),                                                                                                
	"ASSET_NO" VARCHAR2(32),                                                                                               
	"BAR_CODE" VARCHAR2(32),                                                                                               
	"COMM_ADDR1" VARCHAR2(16),                                                                                             
	"COMM_ADDR2" VARCHAR2(16),                                                                                             
	"COMM_NO" VARCHAR2(8),                                                                                                 
	"BAUDRATE" VARCHAR2(16),                                                                                               
	"COMM_MODE" VARCHAR2(8),                                                                                               
	"ATTACHEQUIP_TYPE_CODE" VARCHAR2(8),                                                                                   
	"METER_KIND" VARCHAR2(16),                                                                                             
	"INST_ENVIRONMENT" VARCHAR2(8),                                                                                        
	"IS_SUPPORT_MOUDLE" VARCHAR2(8),                                                                                       
	"BIND_MOUDLE_FLAG" VARCHAR2(8)                                                                                         
   ) PCTFREE 0 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                        
 NOCOMPRESS  LOGGING                                                                                                    
  TABLESPACE "TBSDATA"                                                                                                
  PARTITION BY RANGE ("ORG_NO")                                                                                         
 (PARTITION "A01_01"  VALUES LESS THAN ('1540403') SEGMENT CREATION IMMEDIATE                                           
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A01_02"  VALUES LESS THAN ('15421') SEGMENT CREATION IMMEDIATE                                              
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A02_01"  VALUES LESS THAN ('1542102') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A02_02"  VALUES LESS THAN ('1542103') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A02_03"  VALUES LESS THAN ('1542104') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A02_04"  VALUES LESS THAN ('1542106') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A02_05"  VALUES LESS THAN ('15422') SEGMENT CREATION IMMEDIATE                                              
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A03"  VALUES LESS THAN ('15423') SEGMENT CREATION IMMEDIATE                                                 
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A04_01"  VALUES LESS THAN ('1542302') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A04_02"  VALUES LESS THAN ('15424') SEGMENT CREATION IMMEDIATE                                              
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A05_01"  VALUES LESS THAN ('1545104') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A05_02"  VALUES LESS THAN ('1545106') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A05_03"  VALUES LESS THAN ('1545108') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A05_04"  VALUES LESS THAN ('1545110') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A05_05"  VALUES LESS THAN ('1545111') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A05_06"  VALUES LESS THAN ('1545112') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A05_07"  VALUES LESS THAN ('1545201') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A06_01"  VALUES LESS THAN ('1545202') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A06_02"  VALUES LESS THAN ('1545203') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A06_03"  VALUES LESS THAN ('1545204') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A06_04"  VALUES LESS THAN ('1545205') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A06_05"  VALUES LESS THAN ('1545207') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A06_06"  VALUES LESS THAN ('1545301') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A07_01"  VALUES LESS THAN ('1545303') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A07_02"  VALUES LESS THAN ('1545401') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A08_01"  VALUES LESS THAN ('1545403') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "A08_02"  VALUES LESS THAN ('1545409') SEGMENT CREATION IMMEDIATE                                            
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" ,                                                                                              
 PARTITION "AOTHER"  VALUES LESS THAN (MAXVALUE) SEGMENT CREATION IMMEDIATE                                             
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255                                                                          
 NOCOMPRESS LOGGING                                                                                                     
  TABLESPACE "TBSDATA" )  ENABLE ROW MOVEMENT ;                                                                       
                                                                                                                        
                                                                                                                        
  CREATE UNIQUE INDEX "EPM_MD"."PK_C_METER" ON "EPM_MD"."C_METER" ("CONS_MT_ID")                                        
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING                                                       
  TABLESPACE "TBSDATA" ;                                                                                                 
                                                                                                                        
                                                                                                                        
  CREATE UNIQUE INDEX "EPM_MD"."PK_METER_ID" ON "EPM_MD"."C_METER" ("METER_ID")                                         
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING                                                       
  TABLESPACE "TBSDATA" ;                                                                                                
                                                                                                                        
                                                                                                                        
  CREATE INDEX "EPM_MD"."IDX_C_METER_MADE_NO" ON "EPM_MD"."C_METER" ("MADE_NO")                                         
  PCTFREE 10 INITRANS 2 MAXTRANS 255                                                                                    
  TABLESPACE "TBSDATA"  LOCAL                                                                                            
 (PARTITION "A01_01"                                                                                                    
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A01_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A03"                                                                                                        
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A04_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A04_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_06"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_07"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_06"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A07_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A07_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A08_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A08_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "AOTHER"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ) ;                                                                                               
                                                                                                                        
                                                                                                                        
  CREATE INDEX "EPM_MD"."IDX_C_METER_BAR_CODE" ON "EPM_MD"."C_METER" ("BAR_CODE")                                       
  PCTFREE 10 INITRANS 2 MAXTRANS 255                                                                                    
  TABLESPACE "TBSDATA"  LOCAL                                                                                            
 (PARTITION "A01_01"                                                                                                    
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A01_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A03"                                                                                                        
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A04_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A04_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_06"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_07"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_06"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A07_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A07_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A08_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A08_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "AOTHER"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ) ;                                                                                               
                                                                                                                        
                                                                                                                        
  CREATE INDEX "EPM_MD"."IDX_C_METER_ASSET_NO" ON "EPM_MD"."C_METER" ("ASSET_NO")                                       
  PCTFREE 10 INITRANS 2 MAXTRANS 255                                                                                    
  TABLESPACE "TBSDATA"  LOCAL                                                                                            
 (PARTITION "A01_01"                                                                                                    
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A01_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A02_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A03"                                                                                                        
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A04_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A04_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_06"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A05_07"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A06_06"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A07_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A07_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A08_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "A08_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ,                                                                                                 
 PARTITION "AOTHER"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "TBSDATA" ) ;                                                                                               
                                                                                                                        
                                                                                                                        
  ALTER TABLE "EPM_MD"."C_METER" ADD CONSTRAINT "PK_C_METER" PRIMARY KEY ("CONS_MT_ID")                                 
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING                                           
  TABLESPACE "TBSDATA"  ENABLE;                                                                                          
                                                                                                                        
                                                                                                                        
  ALTER TABLE "EPM_MD"."C_METER" MODIFY ("CONS_MT_ID" NOT NULL ENABLE);                                                 
                                                                                                                        

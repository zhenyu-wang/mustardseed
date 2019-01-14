                                                                                                                        
  CREATE INDEX "EPM_MD"."IDX_C_METER_BAR_CODE" ON "EPM_MD"."C_METER" ("BAR_CODE")                                       
  PCTFREE 10 INITRANS 2 MAXTRANS 255                                                                                    
  TABLESPACE "EPMIDX"  LOCAL                                                                                            
 (PARTITION "A01_01"                                                                                                    
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A01_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A02_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A02_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A02_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A02_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A02_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A03"                                                                                                        
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A04_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A04_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A05_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A05_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A05_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A05_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A05_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A05_06"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A05_07"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A06_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A06_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A06_03"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A06_04"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A06_05"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A06_06"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A07_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A07_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A08_01"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "A08_02"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ,                                                                                                 
 PARTITION "AOTHER"                                                                                                     
  PCTFREE 10 INITRANS 2 MAXTRANS 255 LOGGING                                                                            
  TABLESPACE "EPMIDX" ) ;                                                                                               
                                                                                                                        

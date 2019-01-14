                                                                                                                        
  ALTER TABLE "EPM_MD"."C_METER" ADD CONSTRAINT "PK_C_METER" PRIMARY KEY ("CONS_MT_ID")                                 
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOLOGGING                                           
  TABLESPACE "EPMIDX"  ENABLE;                                                                                          
                                                                                                                        

XGISDI ;CLD/JOLLIS - FileMan wrappers for XGIS;29 Apr 2013
;;1.0;XGIS;**PATCHES**;29 Apr 2013;Build 1

FEATURE(ID,OUT)
 N DDNUM S DDNUM=5.7
 N IEN S IEN=$$FIND1^DIC(DDNUM,"","O",ID)
 D GETS^DIQ(DDNUM,IEN,"**","R","OUT")
 D CLEAN^DILF
 Q

LAYERBYNAME(LAYERID,OUT)
 N DDNUM S DDNUM=5.6
 N IEN S IEN=$$FIND1^DIC(DDNUM,"","O",LAYERID)
 D GETS^DIQ(DDNUM,IEN,"**","R","OUT","B")
 D CLEAN^DILF
 Q 

WEBRES(URL,OUT)
 N DDNUM S DDNUM=5.8
 N IEN S IEN=$$FIND1^DIC(DDNUM,"","O",URL,"C")
 D GETS^DIQ(5.8,IEN,"**","R","OUT","B")
 D CLEAN^DILF
 Q IEN
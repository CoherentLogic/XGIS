XGISJSON ;CLD/JOLLIS - GeoJSON Routines for XGIS;29 Apr 2013
;;1.0;XGIS;**PATCHES**;29 Apr 2013;Build 1

FEATURE(ID)
 N OUT
 D FEATURE^XGISDI(ID,.OUT)
 Q $$GEOJSON^XGISJSON(.OUT)

GEOJSON(FDA)
 N OARRAY,DDNUM,IENS S DDNUM="",IENS=""
 S OARRAY("type")="FeatureCollection"
 F I=0:0 S DDNUM=$O(FDA(DDNUM)) Q:DDNUM=""  D
 . I DDNUM=5.7 D				;layer properties
 . . S OARRAY("features",1)=""
 . . S OARRAY("features",1,"type")="Feature"
 . . S OARRAY("features",1,"properties")=""
 . . S OARRAY("features",1,"properties","feature_id")=FDA(DDNUM,"1,","NAME")
 . . S OARRAY("features",1,"properties","layer_id")=FDA(DDNUM,"1,","LAYER")
 . I DDNUM=5.71 D				;coordinates
 . . N GEOMTYPE,LAYER D LAYERBYNAME^XGISDI(FDA(5.7,"1,","LAYER"),.LAYER)
 . . S GEOMTYPE=LAYER(5.6,"1,","GEOMETRY TYPE")
 . . S OARRAY("features",1,"geometry","type")=GEOMTYPE
 . . F J=1:1 S IENS=$O(FDA(DDNUM,IENS)) Q:IENS=""  D
 . . . N XC S XC=FDA(DDNUM,IENS,"X COORDINATE")
 . . . N YC S YC=FDA(DDNUM,IENS,"Y COORDINATE")
 . . . S OARRAY("features",1,"geometry","coordinates",J,1)=XC
 . . . S OARRAY("features",1,"geometry","coordinates",J,2)=YC
 Q $$arrayToJSON^%zewdJSON("OARRAY")

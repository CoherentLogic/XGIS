XGISMATH ;CLD/JOLLIS - Spatial Math Support;28 Apr 2013
;;1.0;XGIS;**PATCHES**;28 Apr 2013;Build 1

;; Copyright 2013 Coherent Logic Development
;;
;;  Licensed under the Apache License, Version 2.0 (the "License");
;;   you may not use this file except in compliance with the License.
;;   You may obtain a copy of the License at
;;
;;       http://www.apache.org/licenses/LICENSE-2.0
;;
;;   Unless required by applicable law or agreed to in writing, software
;;   distributed under the License is distributed on an "AS IS" BASIS,
;;   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;;   See the License for the specific language governing permissions and
;;   limitations under the License.

;; 
;; tests
;; 
 D ASSERT^XGISUTIL($$SQRT^XGISMATH(72.54867),8.517551)
 D ASSERT^XGISUTIL($$SIN^XGISMATH(72.54867),-.287905)
 D ASSERT^XGISUTIL($$COS^XGISMATH(72.54867),-0.957659)
 D ASSERT^XGISUTIL($$TAN^XGISMATH(72.54867),0.300635)
 Q

FACTORIAL(NUM)   
 N RESULT S RESULT=0
 F I=1:1:NUM D
 . S RESULT=RESULT*I
 Q RESULT

SIN(NUM)
 N RESULT D &xgismath.sin(NUM,.RESULT)
 Q RESULT

COS(NUM)
 N RESULT D &xgismath.cos(NUM,.RESULT)
 Q RESULT

TAN(NUM)
 N RESULT D &xgismath.tan(NUM,.RESULT)
 Q RESULT

ASIN(NUM)
 N RESULT D &xgismath.asin(NUM,.RESULT)
 Q RESULT

ACOS(NUM)
 N RESULT D &xgismath.acos(NUM,.RESULT)
 Q RESULT

ATAN(NUM)
 N RESULT D &xgismath.atan(NUM,.RESULT)
 Q RESULT

ATAN2(NUMY,NUMX)
 N RESULT D &xgismath.atan2(NUMY,NUMX,.RESULT)
 Q RESULT

SINH(NUM)
 N RESULT D &xgismath.sinh(NUM,.RESULT)
 Q RESULT

COSH(NUM)
 N RESULT D &xgismath.cosh(NUM,.RESULT)
 Q RESULT

TANH(NUM)
 N RESULT D &xgismath.tanh(NUM,.RESULT)
 Q RESULT

EXP(NUM)
 N RESULT D &xgismath.exp(NUM,.RESULT)
 Q RESULT

LOG(NUM)
 N RESULT D &xgismath.log(NUM,.RESULT)
 Q RESULT

LOG10(NUM)
 N RESULT D &xgismath.log10(NUM,.RESULT)
 Q RESULT

POW(NUMX,NUMY)
 N RESULT D &xgismath.pow(NUMX,NUMY,.RESULT)
 Q RESULT

SQRT(NUM)
 N RESULT D &xgismath.sqrt(NUM,.RESULT)
 Q RESULT

CEIL(NUM)
 N RESULT D &xgismath.ceil(NUM,.RESULT)
 Q RESULT

FLOOR(NUM)
 N RESULT D &xgismath.floor(NUM,.RESULT)
 Q RESULT

ABS(NUM)
 N RESULT D &xgismath.abs(NUM,.RESULT)
 Q RESULT

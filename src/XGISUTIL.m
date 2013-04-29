XGISUTIL ;CLD/JOLLIS - Support routines for XGIS;29 Apr 2013
;;1.0;XGIS;**PATCHES**;29 Apr 2013;Build 1

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

ASSERT(VAL1,VAL2)
 N RESULT I VAL1=VAL2 S RESULT=1 E S RESULT=0 
 I RESULT=0 W "ASSERTION ",VAL1,"=",VAL2,"FAILED"
 Q RESULT
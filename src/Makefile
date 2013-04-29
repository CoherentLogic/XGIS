#
# Makefile
#
# Part of XGIS
# Copyright (C) 2013 Coherent Logic Development LLC
#
# Author: JP Willis <jwillis@coherent-logic.com>
# Date: 28 Apr 2013
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

xgismath.so: xgismath.o
	gcc -o xgismath.so -g -shared xgismath.o

xgismath.o: xgismath.c
	gcc -c -g -fPIC -I/opt/lsb-gtm xgismath.c

clean:
	rm xgismath.so
	rm xgismath.o

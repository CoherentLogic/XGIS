/**
 * xgismath.c
 *  
 * Math wrappers for GT.M callout interface
 *
 * Copyright (C) 2013 Coherent Logic Development LLC
 * 
 * Author: JP Willis <jwillis@coherent-logic.com>
 * Date: 28 Apr 2013
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

#include <math.h>
#include "gtmxc_types.h"

int m_sin(int c, double *x, double *out)
{
  *out = sin(*x);
  return(0);
}

int m_cos(int c, double *x, double *out)
{
  *out = cos(*x);
  return(0);
}

int m_tan(int c, double *x, double *out)
{
  *out = tan(*x);
  return(0);
}

int m_asin(int c, double *x, double *out)
{
  *out = asin(*x);
  return(0);
}

int m_acos(int c, double *x, double *out)
{
  *out = acos(*x);
  return(0);
}

int m_atan(int c, double *x, double *out)
{
  *out = atan(*x);
  return(0);
}

int m_atan2(int c, double *y, double *x, double *out)
{
  *out = atan2(*y, *x);
  return(0);
}

int m_sinh(int c, double *x, double *out)
{
  *out = sinh(*x);
  return(0);
}

int m_cosh(int c, double *x, double *out)
{
  *out = cosh(*x);
  return(0);
}

int m_tanh(int c, double *x, double *out)
{
  *out = tanh(*x);
  return(0);
}

int m_exp(int c, double *x, double *out)
{
  *out = exp(*x);
  return(0);
}

int m_log(int c, double *x, double *out)
{
  *out = log(*x);
  return(0);
}

int m_log10(int c, double *x, double *out)
{
  *out = log10(*x);
  return(0);
}

int m_pow(int c, double *x, double *y, double *out)
{
  *out = pow(*x, *y);
  return(0);
}

int m_sqrt(int c, double *x, double *out)
{
  *out = sqrt(*x);
  return(0);
}

int m_ceil(int c, double *x, double *out)
{
  *out = ceil(*x);
  return(0);
}

int m_floor(int c, double *x, double *out)
{
  *out = floor(*x);
  return(0);
}

int m_fabs(int c, double *x, double *out)
{
  *out = fabs(*x);
  return(0);
}


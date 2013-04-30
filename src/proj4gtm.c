/*
 * proj4gtm.c
 *
 * GT.M callout wrapper for proj4 library
 *
 * Copyright (C) 2013 Coherent Logic Development LLC
 *
 * Author: JP Willis <jwillis@coherent-logic.com>
 * Date: 29 Apr 2013
 *
 */


#include <proj_api.h>
#include "gtmxc_types.h"

#define RADIANS 0
#define DEGREES 1

int m_transform(int count, char *srcdefn, char *destdefn, double *x_in, double *y_in, double *x_out, double *y_out)
{
  double x, y;
  projPJ pj_source, pj_dest;
  int transform_result;

  if(!(pj_source = pj_init_plus(srcdefn))) {
    return(1);
  }
  if(!(pj_dest = pj_init_plus(destdefn))) {
    return(1);
  }

  x = *x_in;
  y = *y_in;
  
  transform_result = pj_transform(pj_source, pj_dest, 1, 1, &x, &y, NULL);
 
  *x_out = x;
  *y_out = y;
  
  return(transform_result ? 1 : 0);
}

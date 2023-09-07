/*
 *  Name: onsokumaru
 *  Email: 11082686+onsokumaru@users.noreply.github.com
 *  Date: 2023-08-31
 *  File: main.c
 *  License: GPL v3.0
 *  
 *  Copyright 2023 Mike Furtado
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses\>.
 *
 */

#include <stdlib.h>
#include <string.h>

#include "functions.h"


int main (int argc, char *argv[])
{
  if (argc < 2 || (argc == 2 && strcmp(argv[1], "--help")==0)){
    help(argv[0]);
    EXIT_FAILURE;
  } 

  // if (argc == 2 && strcmp(argv[1], "--help")==0) {
  //   help(argv[0]);
  //   EXIT_FAILURE;
  // }
  else {
    for (int i = 1; i < argc; i++) {
      printf("Arg#{%d} is %s\n", i, argv[i]);
    }
    EXIT_SUCCESS;
  }
  return 0;
}



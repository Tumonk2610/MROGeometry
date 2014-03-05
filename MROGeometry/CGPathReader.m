//
// CGPathReader.c
//
// Created by Marcus Rohrmoser on 11.03.10.
// Copyright 2010-2014 Marcus Rohrmoser mobile Software. All rights reserved.
//

#import "CGPathReader.h"
#import "PathParser.h"

CGPathRef CGPathCreateFromSVG(const char *path, NSError **errPtr)
{
	if( path == NULL )
		return NULL;
	const size_t len = strlen(path);
	// #FIXME check overflow
	PathParser *p = [[PathParser alloc] init];
	CGPathRef ret = [p parseChar:path length:len trafo:NULL error:(NSError **)errPtr];
	return ret;
}

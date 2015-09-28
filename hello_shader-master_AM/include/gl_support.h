#ifndef _GL_SUPPORT_H_PIERRE
#define _GL_SUPPORT_H_PIERRE

/***************************************************************************//**
\brief     OpenGL code for interfacing with GLSL shaders.
\author    John K. Johnstone jkj at uab dot edu
\version   0.0
\date      2015
\copyright MIT License
*******************************************************************************/

#include <cmath>
#include <ctime>
#include <cstdlib>
#include <iostream>
#include <string>
#include <vector>
using namespace std;

#include "typedefs_eigen.h"
using namespace pierre;

namespace pierre
{

void   DriverDiagnostics ();
void   InitGLEW ();
void   InitGL (Eigen::Vector3f rgb_background, bool flatland=false);
void   CompileShader (const char *fn, GLuint sh);
 
} // namespace pierre

#endif


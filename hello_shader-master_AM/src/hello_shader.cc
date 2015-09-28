/***************************************************************************//**
\brief     Hello shader: an introduction to OpenGL and vertex/fragment shaders.
           UAB CS 470/670/770: Computer Graphics.
\reference - Steven Gortler's Foundations of 3D Computer Graphics;
             inspired by Gortler's HW1, App A, and Gortler's elegant approach
	     to OpenGL;
	     main changes are simplifying to a more atomic first hello program;
	     switching to my coding style, including Crane's elegant style of
	     separating the viewer; changing from GLUT to GLFW; adding VAO
           - OpenGL Programming Guide 8th edition, particularly for VAO/VBO
	     (see initGeometry / display in viewer.cc)
	   - stackoverflow for -framework CoreVideo in Makefile
	   - Keenan Crane's DDG code, separation of viewer:
	     originally at brickisland.net/cs177fa12, 
	     now released at github.com/dgpdec/course
      	   The error handling in this code is but a suggestion, neither 
	   fully implemented nor as thorough as Gortler's HW1 code.
	   Anyway, error handling for OpenGL is at best but a shot in the dark.
\pre       install cmake / GLFW 3.1.1 / GLEW / Eigen 3.2.5
\author    John K. Johnstone jkj at uab dot edu
\version   0.0
\date      2015
\copyright MIT License
*******************************************************************************/

#include <iostream>
using namespace std;

#include "typedefs_eigen.h"
#include "viewer.h"
using namespace pierre;

static void Usage()
{
  cout << "Hello shader" << endl;
  exit(-1);
}

/******************************************************************************/
int main (int argc, char **argv)
{
 int args_parsed = 1;
 while (args_parsed < argc)
  {
   if ('-' == argv[args_parsed][0])
    switch (argv[args_parsed++][1])
     {
     case 'h': 
     default:  Usage(); break;
     }
   else args_parsed++;
  }

 // *******************************************************************

 vector<Pt2> vert;
 vert.push_back (Pt2(-1.,-1.));   // revealing OpenGL's screen coordinate system
 vert.push_back (Pt2( 1.,-1.));
 vert.push_back (Pt2( 0., 1.));
    
    vert.push_back (Pt2(-1.,-1.)); //lower left
    vert.push_back (Pt2( 0.,1.)); //upper right
    vert.push_back (Pt2( -0.7, 0.8)); //upper left point on small triangle
    
 Viewer viewer;
 viewer.vert_ = vert;
 viewer.init ();
 return 0;
}

#ifndef HELLO_SHADER_H_PIERRE_
#define HELLO_SHADER_H_PIERRE_

/***************************************************************************//**
\brief     Viewer for hello shader.
\author    John K. Johnstone jkj at uab dot edu
\version   0.0
\date      2015
\copyright MIT License
*******************************************************************************/

#include <vector>
using namespace std;

#include <GLFW/glfw3.h>                          // which includes OpenGL header

#include "typedefs_eigen.h"
#include "interface.h"                       // WindowInterface, ShaderInterface
using namespace pierre;

namespace pierre {

class Viewer
{
 public:

  static void init ();
  static vector<Pt2> vert_;                          // vertices of the triangle

 protected:

  static WindowInterface glass_;
  static ShaderInterface curtain_;
  static GLuint          vao_[1];
  static GLuint          vbo_[1];
  static bool            flatland_;           // does the scene live in 2-space?
  
  static void initGLFW (const char* title_bar);
  static void error_callback (int error, const char* description);
  static void key_callback (GLFWwindow* window, int key, int scancode,
			    int action, int mods);
  static void framebuffer_size_callback (GLFWwindow* window, int w, int h);

  static void initGeometry ();
  static void display ();
  static void freeMemory ();
  
};

} // namespace pierre

#endif

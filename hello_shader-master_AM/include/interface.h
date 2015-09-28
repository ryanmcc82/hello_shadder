#ifndef _INTERFACE_H_PIERRE
#define _INTERFACE_H_PIERRE

/***************************************************************************//**
\brief     Organization of window, shader, mouse, pipeline vars under one tent.
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

#include "GLFW/glfw3.h"

#include "typedefs_eigen.h"
using namespace pierre;

namespace pierre
{

/***************************************************************************//**
\brief Collects the window variables.
*******************************************************************************/
 
struct WindowInterface
{
  GLFWwindow* window;                    // OpenGL context
  int         window_size[2];            // 0=width; 1=height
  int         window_pos[2];             // (x,y) coordinates of top left corner

  WindowInterface (int w = 1618, int h = 1000, int x = 100, int y = 100)
  {
    window = NULL;
    window_size[0] = w; window_size[1] = h;
    window_pos[0]  = x; window_pos[1]  = y;
  }
};

/***************************************************************************//**
\brief Collect the shader handles; initialize the shaders (compile and link).
*******************************************************************************/
  
class ShaderInterface
{
 public:

  ShaderInterface ();
 ~ShaderInterface ();
  GLuint get_program_h ();

  void initShaders (const char *vsfn,
		    const char *fsfn,
		    bool norm_included = true,
		    bool tex_included = false,
		    bool color_included = false);

 private:
  
  GLuint program_h_;
  GLuint vs_h_;
  GLuint fs_h_;
  
  void linkShaders (GLuint vsh, GLuint fsh);

};

} // namespace pierre

#endif


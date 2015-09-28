/***************************************************************************//**
\brief     Hello shader: an introduction to OpenGL and vertex/fragment shaders.
           UAB CS 470/670/770: Computer Graphics
\author    John K. Johnstone jkj at uab dot edu
\version   1.0
\date      2015
\copyright MIT License
*******************************************************************************/

#include <cmath>
#include <cstdlib>
#include <iostream>
#include <fstream>
#include <vector>
#include <stdexcept>
using namespace std;

#include <GL/glew.h>                // GL extensions ; must precede GLFW include
#include <GLFW/glfw3.h>                                             // windowing

#include "typedefs_eigen.h"                                               // Pt2
#include "interface.h"                       // WindowInterface, ShaderInterface
#include "gl_support.h"                       // InitGLEW, InitGL, CompileShader
#include "viewer.h"
using namespace pierre;

namespace pierre
{
  
vector<Pt2> Viewer::vert_;
  
WindowInterface Viewer::glass_ (1618, 1000, 100, 100);
ShaderInterface Viewer::curtain_;
GLuint          Viewer::vao_[1] ={0};  
GLuint          Viewer::vbo_[1] ={0};  
bool            Viewer::flatland_ = true;
  
/******************************************************************************/
void Viewer::init ()
{
  try
   {
    initGLFW ("Hello shader");                          // must precede InitGLEW
    InitGLEW ();
    InitGL (Eigen::Vector3f(0.f, 1.f, 0.f), flatland_);      // green background
    curtain_.initShaders ("src/shaders/hello.vert",
			  "src/shaders/hello.frag",
			  false, false, false);
    initGeometry ();
    display();
  }
 catch (const runtime_error& e)
  {
   cout << "Exception caught: " << e.what() << endl;
  }
}

/***************************************************************************//**
\brief     Modern windowing.
\details   Initialize GLFW, handle OSX, set window size and pos, callbacks
\note      Must precede GLEW initialization.
\param[in] title_bar
*******************************************************************************/

void Viewer::initGLFW (const char* title_bar)
{
  glfwSetErrorCallback (error_callback);
  
  int success = glfwInit();
  if (!success) throw runtime_error ("problem initializing GLFW3 library");

#ifdef __APPLE__
  glfwWindowHint (GLFW_CONTEXT_VERSION_MAJOR, 3);
  glfwWindowHint (GLFW_CONTEXT_VERSION_MINOR, 2);
  glfwWindowHint (GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
  glfwWindowHint (GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
#endif

  glass_.window = glfwCreateWindow (glass_.window_size[0],
				    glass_.window_size[1],
				    title_bar, NULL, NULL);
  if (!glass_.window)
    { glfwTerminate (); throw runtime_error ("problem creating GLFW window"); }
  glfwSetWindowPos (glass_.window, glass_.window_pos[0], glass_.window_pos[1]);
  glfwMakeContextCurrent (glass_.window);
  glfwSwapInterval (1);
  glfwSetKeyCallback             (glass_.window, key_callback);
  glfwSetFramebufferSizeCallback (glass_.window, framebuffer_size_callback);
}

/***************************************************************************//**
\brief Error callback function.
       Its prototype is dictated by glfwSetErrorCallback.
*******************************************************************************/

void Viewer::error_callback (int error, const char* description)
{
  throw runtime_error (description);
}
  
/***************************************************************************//**
\brief     Key callback function.
           Its prototype is dictated by glfwSetErrorCallback.
\reference www.glfw.org/docs/latest/input.html#input_keyboard
*******************************************************************************/

void Viewer::key_callback (GLFWwindow* window, int key, int scancode,
			   int action, int mods)
{
 if (action == GLFW_PRESS)
  {
   switch (key) {
   case GLFW_KEY_ESCAPE: glfwSetWindowShouldClose (window, GL_TRUE); break;
   default:              break;
   };
  }
}
  
/***************************************************************************//**
\brief   framebuffer has been resized to (w,h).
\details analogous to GLUT reshape callback function
\reference http://www.glfw.org/docs/latest/window.html : Framebuffer size
*******************************************************************************/
  
void Viewer::framebuffer_size_callback (GLFWwindow* window, int w, int h)
{
  glass_.window_size[0] = w;
  glass_.window_size[1] = h;
  glViewport (0,0,w,h);
}
  
/******************************************************************************/
  
void Viewer::initGeometry ()
{
  // wrap vbos up in a vertex array object, outside the display loop
  glGenVertexArrays (1, vao_);             // generate 1 VAO and return its name
  glBindVertexArray (vao_[0]);

  // copy data into a vertex buffer
  glGenBuffers (1, vbo_);
  glBindBuffer (GL_ARRAY_BUFFER, vbo_[0]);
  glBufferData (GL_ARRAY_BUFFER,
		vert_.size() * sizeof(Pt2),
		&vert_[0],
		GL_STATIC_DRAW);

  // describe the vertex
  glEnableVertexAttribArray (0); // 0 = vtxPosition
  glVertexAttribPointer (0,      // 0 = vtxPosition
			 2,
#ifdef REALISFLOAT
                         GL_FLOAT,
#else
                         GL_DOUBLE,
#endif
                         GL_FALSE, 0, NULL);

  // unbind the VAO
  glBindVertexArray (0); 
}
/******************************************************************************/
void Viewer::display ()
{
  while (!glfwWindowShouldClose (glass_.window))
   {
    glClear (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glUseProgram (curtain_.get_program_h());

    glEnableVertexAttribArray (0);
    glBindVertexArray (vao_[0]);

    glDrawArrays (GL_TRIANGLES, 0, vert_.size());

    glDisableVertexAttribArray (0);

    glfwPollEvents ();
    glfwSwapBuffers (glass_.window);
   }
  freeMemory ();
  glfwDestroyWindow (glass_.window);
  glfwTerminate ();
}

/***************************************************************************//**
\brief Free memory for objects that have been allocated so far.
*******************************************************************************/

void Viewer::freeMemory ()
{
  if (vbo_[0]  != 0) glDeleteBuffers (1, vbo_);
  if (vao_[0]  != 0) glDeleteVertexArrays (1, vao_);
}

} // namespace pierre

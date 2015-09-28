/***************************************************************************//**
\brief     OpenGL code for interfacing with GLSL shaders.
\author    John K. Johnstone jkj at uab dot edu
\version   0.0
\date      2015
\copyright MIT License
*******************************************************************************/

#include <iostream>
#include <fstream>

#include "GL/glew.h"
#include "GLFW/glfw3.h"                                            // for OpenGL

#include "typedefs_eigen.h"
#include "gl_support.h"
using namespace pierre;

namespace pierre
{

/***************************************************************************//**
\brief What hardware do you have?
\details Both string and integer GLSL versions are provided, for illustration.
*******************************************************************************/
  
void DriverDiagnostics ()
{
  const GLubyte* vendor       = glGetString (GL_VENDOR);
  const GLubyte* renderer     = glGetString (GL_RENDERER);
  const GLubyte* version      = glGetString (GL_VERSION);
  const GLubyte* version_glsl = glGetString (GL_SHADING_LANGUAGE_VERSION);
  printf ("Vendor: %s\n", vendor);
  printf ("Renderer: %s\n", renderer);
  printf ("OpenGL version supported: %s\n", version);
  printf ("GLSL version supported: %s\n", version_glsl);

  GLint major, minor;                                    // requires OpenGL 3.x:
  glGetIntegerv (GL_MAJOR_VERSION, &major);
  glGetIntegerv (GL_MINOR_VERSION, &minor);
  printf ("OpenGL version supported (integer): %d.%d\n", major, minor);
}

/******************************************************************************/

void InitGLEW ()
{
  glewExperimental = GL_TRUE;
  glewInit ();
  if (!GLEW_VERSION_3_0)
    throw runtime_error("GPU/driver does not support OpenGL 3.0");
}
    
/***************************************************************************//**
\brief Initialize the OpenGL environment.
\param[in] rgb_background : 
\param[in] flatland : does the scene to be rendered live in 2-space?
*******************************************************************************/

void InitGL (Eigen::Vector3f rgb_background, bool flatland)
{
  DriverDiagnostics ();
  glClearColor (rgb_background[0], rgb_background[1], rgb_background[2], 0.0f);
  if (flatland) glEnable (GL_FRAMEBUFFER_SRGB);           // requires OpenGL 3.x
  else
   {
    glEnable (GL_DEPTH_TEST);
    glDepthFunc (GL_LESS);  // accept fragment if closer to camera than previous
   }
}
  
/***************************************************************************//**
\brief     Dump a file into a string. 
\note      Original is in miscellany.cc.
\details   Calculate the file size by seeking to the end.
\reference insanecoding.blogspot.com/2011/11/how-to-read-in-file-in-c.html
           where it is also shown that this may be the most efficient method.
\param[in] filename
\returns   the file as a string
*******************************************************************************/

string ReadFile_gl_support (const char *filename)
{
  ifstream in (filename, std::ios::in | std::ios::binary);
  if (in)
   {
    string contents;
    in.seekg (0, std::ios::end);
    contents.resize (in.tellg());
    in.seekg (0, std::ios::beg);
    in.read (&contents[0], contents.size());
    in.close();
    return (contents);
   }
  cout << "filename does not exist" << endl;
  throw (errno);
}
  
/***************************************************************************//**
\brief Read shader source, compile shader, and detect errors.
\note  Has no side effects, so it can be plucked out of ShaderInterface.
\param[in]: fn : shader file name
\param[in]: sh : shader handle
*******************************************************************************/
  
void CompileShader (const char *fn, GLuint sh)
{
  string source_str = ReadFile_gl_support (fn);
  const GLchar* source = (const GLchar*) source_str.c_str();
  glShaderSource  (sh, 1, &source, NULL);
  
  glCompileShader (sh);

  GLint is_compiled = 0;
  glGetShaderiv (sh, GL_COMPILE_STATUS, &is_compiled);
  if (!is_compiled)
   {
    GLint max_len = 0;
    glGetShaderiv (sh, GL_INFO_LOG_LENGTH, &max_len);
    GLchar* info_log = new GLchar[max_len];
    glGetShaderInfoLog (sh, max_len, &max_len, info_log);
    string info_log_str = reinterpret_cast<GLchar*> (info_log);
    cout << "compilation problem: " << info_log_str << endl;
    throw runtime_error (info_log_str);
   }
}
  
} // namespace pierre

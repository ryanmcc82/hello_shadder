/***************************************************************************//**
\brief     Organization of window, shader, mouse, pipeline vars under one tent.
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
#include "gl_support.h"                                         // CompileShader
#include "interface.h"
using namespace pierre;

namespace pierre
{

/******************************************************************************/
  
ShaderInterface::ShaderInterface () : program_h_ (0),
				      vs_h_ (0),
				      fs_h_ (0)
{
}

/***************************************************************************//**
\brief Free memory.
*******************************************************************************/

ShaderInterface::~ShaderInterface ()
{
  if (vs_h_ != 0) glDeleteShader (vs_h_);
  if (fs_h_ != 0) glDeleteShader (fs_h_);
  if (program_h_ != 0) glDeleteProgram (program_h_);
}

/******************************************************************************/
  
GLuint ShaderInterface::get_program_h () { return program_h_; }

/***************************************************************************//**
\brief Attach shaders, link to program, detect errors, detach shaders.
\param[in]: vsh : vertex shader handle
\param[in]: fsh : fragment shader handle
*******************************************************************************/
  
void ShaderInterface::linkShaders (GLuint vsh, GLuint fsh)
{
  glAttachShader (program_h_, vsh);
  glAttachShader (program_h_, fsh);
  glLinkProgram (program_h_);

  GLint is_linked = 0;
  glGetProgramiv (program_h_, GL_LINK_STATUS, &is_linked);
  if (!is_linked)
   {
    GLint max_len = 0;
    glGetProgramiv (program_h_, GL_INFO_LOG_LENGTH, &max_len);
    GLchar* info_log = new GLchar[max_len];
    glGetProgramInfoLog (program_h_, max_len, &max_len, info_log);
    string info_log_str = reinterpret_cast<GLchar*> (info_log);
    throw runtime_error (info_log);
   }
  
  glDetachShader (program_h_, vsh);
  glDetachShader (program_h_, fsh);
}
  
/***************************************************************************//**
\brief Create, compile, link shaders; create program; bind shader variables.
\details    To play well with others:
            - bind vertex position/normal/texture/color to 0/1/2/3
!!          - name your shader variables:
              vtxPosition, vtxNormal, vtxTexture, vtxColor
\details    Important to bind the locations, so that attribute positions are 
            implicit, and named handles (e.g., h_vertexPosition_ of yore)
            do not need to be passed in (e.g., to an ASSIMP mesh renderer).
\example    code example that assumes this binding:
            shader_scene.cc : bindMeshToVAO , vertex attribute binding.
\reference  https://www.opengl.org/wiki/Generic_Vertex_Attribute_-_examples
\param[in]: vsfn           : vertex shader file name
\param[in]: fsfn           : fragment shader file name
\param[in]: norm_included  : does each vertex include a normal?
\param[in]: tex_included   : vertex texture coordinates included?
\param[in]: color_included : vertex color included?
*******************************************************************************/
  
void ShaderInterface::initShaders (const char *vsfn, const char *fsfn,
				   bool norm_included, bool tex_included,
				   bool color_included)
{
  vs_h_ = glCreateShader (GL_VERTEX_SHADER);
  fs_h_ = glCreateShader (GL_FRAGMENT_SHADER);
  if (vs_h_ == 0 || fs_h_ == 0)
    throw runtime_error ("problem creating shader");

  CompileShader (vsfn, vs_h_);
  CompileShader (fsfn, fs_h_);

  program_h_ = glCreateProgram ();
  if (program_h_ == 0)
    throw runtime_error ("problem creating program");

  // bind the attribute locations *before* linking the shaders
                      glBindAttribLocation (program_h_, 0, "vtxPosition");
  if (norm_included)  glBindAttribLocation (program_h_, 1, "vtxNormal");
  if (tex_included)   glBindAttribLocation (program_h_, 2, "vtxTexture");
  if (color_included) glBindAttribLocation (program_h_, 3, "vtxColor");

  linkShaders (vs_h_, fs_h_);
}

} // namespace pierre

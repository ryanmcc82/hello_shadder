#version 150                                         // GLSL 1.50 for OpenGL 3.2
                                                     // GLSL 1.30 for OpenGL 3.0

// uniform mat4 mvpMatrix;

in vec2 vtxPosition;

void main()
{
  gl_Position = vec4 (vtxPosition, 0, 1);
//  gl_Position = mvpMatrix * vec4 (vtxPosition, 0, 1);
}

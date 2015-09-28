#version 130

uniform vec4 Color = vec4 (1,1,0,1);

out vec4 fragColor;

void main ()
{              
    fragColor = Color; //vec4 (1, 1, 0, 1); //yellow triangle
}
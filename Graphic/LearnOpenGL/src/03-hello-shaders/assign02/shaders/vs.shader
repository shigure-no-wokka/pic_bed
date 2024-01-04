#version 450 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec4 vertexColor;

uniform float x_offset;

void main()
{
    gl_Position = vec4(aPos.x + x_offset, aPos.y, aPos.z, 1.0);
    vertexColor = vec4(aColor, 1.0);
}
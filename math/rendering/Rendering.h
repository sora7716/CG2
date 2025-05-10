#pragma once
#include "Vector2.h"
#include "Vector3.h"
#include "Vector4.h"
typedef struct Transform {
	Vector3 scale, rotate, translate;
}Transform;

typedef struct VertexData {
	Vector4 position;
	Vector2 texcoord;
}VertexData;
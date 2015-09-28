#ifndef _TYPEDEFS_EIGEN_H_PIERRE
#define _TYPEDEFS_EIGEN_H_PIERRE

/***************************************************************************//**
\brief     Vector / matrix / quaternion using Eigen. 
           Abstracts away from a specific scalar type.
	   Distinguishes vectors from points, at least notationally.
\author    John K. Johnstone jkj at uab dot edu
\version   1.0
\date      2014-15
\copyright MIT License
*******************************************************************************/

#include <Eigen/Core>
#include <Eigen/Geometry>                                          // Quaternion
using namespace Eigen;

namespace pierre
{

// #define REALISFLOAT                             // defined only if Real=float

  typedef double Real;              

  typedef Eigen::Vector2d Pt2;  
  typedef Eigen::Vector3d Pt3; 
  typedef Eigen::Vector4d Pt4;
  typedef Eigen::VectorXd PtX;

  typedef Eigen::Vector2d Vec2; 
  typedef Eigen::Vector3d Vec3; 
  typedef Eigen::Vector4d Vec4;
  typedef Eigen::VectorXd VecX;

  typedef Eigen::Vector2cd Pt2c;
  typedef Eigen::Vector3cd Pt3c; 
  typedef Eigen::Vector4cd Pt4c;
  typedef Eigen::VectorXcd PtXc;

  typedef Eigen::Vector2cd Vec2c; 
  typedef Eigen::Vector3cd Vec3c; 
  typedef Eigen::Vector4cd Vec4c;
  typedef Eigen::VectorXcd VecXc;

  typedef Eigen::Matrix3d Matrix3;
  typedef Eigen::Matrix4d Matrix4;
  typedef Eigen::MatrixXd MatrixX;

  typedef Eigen::Matrix3cd Matrix3c;
  typedef Eigen::Matrix4cd Matrix4c;
  typedef Eigen::MatrixXcd MatrixXc;

  typedef Eigen::Vector3d RGB;

  typedef Eigen::Quaterniond Quatern;

  // OpenGL shader types:
  // keep it float always, as glUniformMatrix wants float
  typedef Eigen::Transform<float,3,Affine>     RigidBody;  // rigid body transf
  typedef Eigen::Transform<float,3,Projective> Transform;  // general transform
  typedef Eigen::Vector3f Vec3f;
  typedef Eigen::Vector4f Vec4f;
  typedef Eigen::Matrix3f Matrix3f;
  typedef Eigen::Matrix4f Matrix4f;
  typedef Eigen::Affine3f Affine3f;
  typedef Eigen::Vector3f Pt3f;

} // namespace pierre

#endif

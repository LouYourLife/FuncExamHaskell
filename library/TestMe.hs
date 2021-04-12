module TestMe where

data Vector3D = Vector3D
  { x :: Float
  , y :: Float
  , z :: Float
  } deriving (Show)

add3D :: Vector3D -> Vector3D -> Vector3D
add3D v1 v2 =
  Vector3D (x v1 + x v2) (y v1 + y v2) (z v1 + z v2)
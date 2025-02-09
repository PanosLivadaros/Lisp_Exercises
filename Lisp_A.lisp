;; Define a base class for all shapes
(defclass shape ()
  ((colour :accessor shape-colour :initarg :colour :initform 0))) ;; Default color: Black (0)

;; Define a 2D shape class inheriting from shape
(defclass dim2 (shape)
  ((surface :accessor dim2-surface :initarg :surface :initform 0)))

;; Define a 3D shape class inheriting from shape
(defclass dim3 (shape)
  ((volume :accessor dim3-volume :initarg :volume :initform 0)))

;; Define specific shapes inheriting from 2D
(defclass square (dim2)
  ((side :accessor square-side :initarg :side :initform 0)))

(defclass rectangle (dim2)
  ((length :accessor rectangle-length :initarg :length :initform 0)
   (height :accessor rectangle-height :initarg :height :initform 0)))

(defclass triangle (dim2) ;; Equilateral triangle only
  ((base :accessor triangle-base :initarg :base :initform 0)
   (height :accessor triangle-height :initarg :height :initform 0)))

;; Define specific shapes inheriting from 3D
(defclass cube (dim3)
  ((side :accessor cube-side :initarg :side :initform 0)))

(defclass cuboid (dim3)
  ((length :accessor cuboid-length :initarg :length :initform 0)
   (breadth :accessor cuboid-breadth :initarg :breadth :initform 0)
   (height :accessor cuboid-height :initarg :height :initform 0)))

(defclass pyramid (dim3)
  ((sideA :accessor pyramid-sideA :initarg :sideA :initform 0)
   (sideB :accessor pyramid-sideB :initarg :sideB :initform 0)
   (height :accessor pyramid-height :initarg :height :initform 0)))

;; Creating and displaying instances

;; Creating a square
(defparameter square1 (make-instance 'square :colour 0 :side 10 :surface 100))
(format t "Square - Colour: ~d, Side: ~d, Surface: ~d~%"
        (shape-colour square1) (square-side square1) (dim2-surface square1))

;; Creating a rectangle
(defparameter rectangle1 (make-instance 'rectangle :colour 0 :length 10 :height 10 :surface 100))
(format t "Rectangle - Colour: ~d, Length: ~d, Height: ~d, Surface: ~d~%"
        (shape-colour rectangle1) (rectangle-length rectangle1) (rectangle-height rectangle1) (dim2-surface rectangle1))

;; Creating a triangle
(defparameter triangle1 (make-instance 'triangle :colour 0 :base 8 :height 7 :surface 28))
(format t "Triangle - Colour: ~d, Base: ~d, Height: ~d, Surface: ~d~%"
        (shape-colour triangle1) (triangle-base triangle1) (triangle-height triangle1) (dim2-surface triangle1))

;; Creating a cube
(defparameter cube1 (make-instance 'cube :colour 0 :side 10 :volume 1000))
(format t "Cube - Colour: ~d, Side: ~d, Volume: ~d~%"
        (shape-colour cube1) (cube-side cube1) (dim3-volume cube1))

;; Creating a cuboid
(defparameter cuboid1 (make-instance 'cuboid :colour 0 :length 10 :breadth 10 :height 10 :volume 1000))
(format t "Cuboid - Colour: ~d, Length: ~d, Breadth: ~d, Height: ~d, Volume: ~d~%"
        (shape-colour cuboid1) (cuboid-length cuboid1) (cuboid-breadth cuboid1) (cuboid-height cuboid1) (dim3-volume cuboid1))

;; Creating a pyramid
(defparameter pyramid1 (make-instance 'pyramid :colour 0 :sideA 10 :sideB 10 :height 30 :volume 1000))
(format t "Pyramid - Colour: ~d, SideA: ~d, SideB: ~d, Height: ~d, Volume: ~d~%"
        (shape-colour pyramid1) (pyramid-sideA pyramid1) (pyramid-sideB pyramid1) (pyramid-height pyramid1) (dim3-volume pyramid1))

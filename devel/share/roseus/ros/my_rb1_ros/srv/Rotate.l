;; Auto-generated. Do not edit!


(when (boundp 'my_rb1_ros::Rotate)
  (if (not (find-package "MY_RB1_ROS"))
    (make-package "MY_RB1_ROS"))
  (shadow 'Rotate (find-package "MY_RB1_ROS")))
(unless (find-package "MY_RB1_ROS::ROTATE")
  (make-package "MY_RB1_ROS::ROTATE"))
(unless (find-package "MY_RB1_ROS::ROTATEREQUEST")
  (make-package "MY_RB1_ROS::ROTATEREQUEST"))
(unless (find-package "MY_RB1_ROS::ROTATERESPONSE")
  (make-package "MY_RB1_ROS::ROTATERESPONSE"))

(in-package "ROS")





(defclass my_rb1_ros::RotateRequest
  :super ros::object
  :slots (_degrees ))

(defmethod my_rb1_ros::RotateRequest
  (:init
   (&key
    ((:degrees __degrees) 0.0)
    )
   (send-super :init)
   (setq _degrees (float __degrees))
   self)
  (:degrees
   (&optional __degrees)
   (if __degrees (setq _degrees __degrees)) _degrees)
  (:serialization-length
   ()
   (+
    ;; float32 _degrees
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _degrees
       (sys::poke _degrees (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _degrees
     (setq _degrees (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_rb1_ros::RotateResponse
  :super ros::object
  :slots (_result ))

(defmethod my_rb1_ros::RotateResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_rb1_ros::Rotate
  :super ros::object
  :slots ())

(setf (get my_rb1_ros::Rotate :md5sum-) "0643b709f08e1632b29259c672148c3b")
(setf (get my_rb1_ros::Rotate :datatype-) "my_rb1_ros/Rotate")
(setf (get my_rb1_ros::Rotate :request) my_rb1_ros::RotateRequest)
(setf (get my_rb1_ros::Rotate :response) my_rb1_ros::RotateResponse)

(defmethod my_rb1_ros::RotateRequest
  (:response () (instance my_rb1_ros::RotateResponse :init)))

(setf (get my_rb1_ros::RotateRequest :md5sum-) "0643b709f08e1632b29259c672148c3b")
(setf (get my_rb1_ros::RotateRequest :datatype-) "my_rb1_ros/RotateRequest")
(setf (get my_rb1_ros::RotateRequest :definition-)
      "float32 degrees #request rotation(degree) by users
---
bool result #response to client if rotation is successful
")

(setf (get my_rb1_ros::RotateResponse :md5sum-) "0643b709f08e1632b29259c672148c3b")
(setf (get my_rb1_ros::RotateResponse :datatype-) "my_rb1_ros/RotateResponse")
(setf (get my_rb1_ros::RotateResponse :definition-)
      "float32 degrees #request rotation(degree) by users
---
bool result #response to client if rotation is successful
")



(provide :my_rb1_ros/Rotate "0643b709f08e1632b29259c672148c3b")



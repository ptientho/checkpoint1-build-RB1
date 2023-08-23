; Auto-generated. Do not edit!


(cl:in-package my_rb1_ros-srv)


;//! \htmlinclude Rotate-request.msg.html

(cl:defclass <Rotate-request> (roslisp-msg-protocol:ros-message)
  ((degrees
    :reader degrees
    :initarg :degrees
    :type cl:float
    :initform 0.0))
)

(cl:defclass Rotate-request (<Rotate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rotate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rotate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_rb1_ros-srv:<Rotate-request> is deprecated: use my_rb1_ros-srv:Rotate-request instead.")))

(cl:ensure-generic-function 'degrees-val :lambda-list '(m))
(cl:defmethod degrees-val ((m <Rotate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_rb1_ros-srv:degrees-val is deprecated.  Use my_rb1_ros-srv:degrees instead.")
  (degrees m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rotate-request>) ostream)
  "Serializes a message object of type '<Rotate-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'degrees))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rotate-request>) istream)
  "Deserializes a message object of type '<Rotate-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'degrees) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rotate-request>)))
  "Returns string type for a service object of type '<Rotate-request>"
  "my_rb1_ros/RotateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rotate-request)))
  "Returns string type for a service object of type 'Rotate-request"
  "my_rb1_ros/RotateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rotate-request>)))
  "Returns md5sum for a message object of type '<Rotate-request>"
  "0643b709f08e1632b29259c672148c3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rotate-request)))
  "Returns md5sum for a message object of type 'Rotate-request"
  "0643b709f08e1632b29259c672148c3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rotate-request>)))
  "Returns full string definition for message of type '<Rotate-request>"
  (cl:format cl:nil "float32 degrees #request rotation(degree) by users~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rotate-request)))
  "Returns full string definition for message of type 'Rotate-request"
  (cl:format cl:nil "float32 degrees #request rotation(degree) by users~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rotate-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rotate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Rotate-request
    (cl:cons ':degrees (degrees msg))
))
;//! \htmlinclude Rotate-response.msg.html

(cl:defclass <Rotate-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Rotate-response (<Rotate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rotate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rotate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_rb1_ros-srv:<Rotate-response> is deprecated: use my_rb1_ros-srv:Rotate-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Rotate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_rb1_ros-srv:result-val is deprecated.  Use my_rb1_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rotate-response>) ostream)
  "Serializes a message object of type '<Rotate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rotate-response>) istream)
  "Deserializes a message object of type '<Rotate-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rotate-response>)))
  "Returns string type for a service object of type '<Rotate-response>"
  "my_rb1_ros/RotateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rotate-response)))
  "Returns string type for a service object of type 'Rotate-response"
  "my_rb1_ros/RotateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rotate-response>)))
  "Returns md5sum for a message object of type '<Rotate-response>"
  "0643b709f08e1632b29259c672148c3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rotate-response)))
  "Returns md5sum for a message object of type 'Rotate-response"
  "0643b709f08e1632b29259c672148c3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rotate-response>)))
  "Returns full string definition for message of type '<Rotate-response>"
  (cl:format cl:nil "bool result #response to client if rotation is successful~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rotate-response)))
  "Returns full string definition for message of type 'Rotate-response"
  (cl:format cl:nil "bool result #response to client if rotation is successful~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rotate-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rotate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Rotate-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Rotate)))
  'Rotate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Rotate)))
  'Rotate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rotate)))
  "Returns string type for a service object of type '<Rotate>"
  "my_rb1_ros/Rotate")
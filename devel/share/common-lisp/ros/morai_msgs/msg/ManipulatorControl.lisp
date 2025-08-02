; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude ManipulatorControl.msg.html

(cl:defclass <ManipulatorControl> (roslisp-msg-protocol:ros-message)
  ((ControlType
    :reader ControlType
    :initarg :ControlType
    :type cl:integer
    :initform 0)
   (x1
    :reader x1
    :initarg :x1
    :type cl:float
    :initform 0.0)
   (x2
    :reader x2
    :initarg :x2
    :type cl:float
    :initform 0.0)
   (x3
    :reader x3
    :initarg :x3
    :type cl:float
    :initform 0.0)
   (x4
    :reader x4
    :initarg :x4
    :type cl:float
    :initform 0.0)
   (x5
    :reader x5
    :initarg :x5
    :type cl:float
    :initform 0.0)
   (x6
    :reader x6
    :initarg :x6
    :type cl:float
    :initform 0.0)
   (GripperStatus
    :reader GripperStatus
    :initarg :GripperStatus
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ManipulatorControl (<ManipulatorControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManipulatorControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManipulatorControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<ManipulatorControl> is deprecated: use morai_msgs-msg:ManipulatorControl instead.")))

(cl:ensure-generic-function 'ControlType-val :lambda-list '(m))
(cl:defmethod ControlType-val ((m <ManipulatorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:ControlType-val is deprecated.  Use morai_msgs-msg:ControlType instead.")
  (ControlType m))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <ManipulatorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:x1-val is deprecated.  Use morai_msgs-msg:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'x2-val :lambda-list '(m))
(cl:defmethod x2-val ((m <ManipulatorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:x2-val is deprecated.  Use morai_msgs-msg:x2 instead.")
  (x2 m))

(cl:ensure-generic-function 'x3-val :lambda-list '(m))
(cl:defmethod x3-val ((m <ManipulatorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:x3-val is deprecated.  Use morai_msgs-msg:x3 instead.")
  (x3 m))

(cl:ensure-generic-function 'x4-val :lambda-list '(m))
(cl:defmethod x4-val ((m <ManipulatorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:x4-val is deprecated.  Use morai_msgs-msg:x4 instead.")
  (x4 m))

(cl:ensure-generic-function 'x5-val :lambda-list '(m))
(cl:defmethod x5-val ((m <ManipulatorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:x5-val is deprecated.  Use morai_msgs-msg:x5 instead.")
  (x5 m))

(cl:ensure-generic-function 'x6-val :lambda-list '(m))
(cl:defmethod x6-val ((m <ManipulatorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:x6-val is deprecated.  Use morai_msgs-msg:x6 instead.")
  (x6 m))

(cl:ensure-generic-function 'GripperStatus-val :lambda-list '(m))
(cl:defmethod GripperStatus-val ((m <ManipulatorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:GripperStatus-val is deprecated.  Use morai_msgs-msg:GripperStatus instead.")
  (GripperStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManipulatorControl>) ostream)
  "Serializes a message object of type '<ManipulatorControl>"
  (cl:let* ((signed (cl:slot-value msg 'ControlType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x6))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'GripperStatus) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManipulatorControl>) istream)
  "Deserializes a message object of type '<ManipulatorControl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ControlType) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x5) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x6) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'GripperStatus) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManipulatorControl>)))
  "Returns string type for a message object of type '<ManipulatorControl>"
  "morai_msgs/ManipulatorControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManipulatorControl)))
  "Returns string type for a message object of type 'ManipulatorControl"
  "morai_msgs/ManipulatorControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManipulatorControl>)))
  "Returns md5sum for a message object of type '<ManipulatorControl>"
  "2949cc268ce29a2b5dafef91eaf5bd1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManipulatorControl)))
  "Returns md5sum for a message object of type 'ManipulatorControl"
  "2949cc268ce29a2b5dafef91eaf5bd1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManipulatorControl>)))
  "Returns full string definition for message of type '<ManipulatorControl>"
  (cl:format cl:nil "int32 ControlType~%float32 x1~%float32 x2~%float32 x3~%float32 x4~%float32 x5~%float32 x6~%bool GripperStatus~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManipulatorControl)))
  "Returns full string definition for message of type 'ManipulatorControl"
  (cl:format cl:nil "int32 ControlType~%float32 x1~%float32 x2~%float32 x3~%float32 x4~%float32 x5~%float32 x6~%bool GripperStatus~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManipulatorControl>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManipulatorControl>))
  "Converts a ROS message object to a list"
  (cl:list 'ManipulatorControl
    (cl:cons ':ControlType (ControlType msg))
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':x2 (x2 msg))
    (cl:cons ':x3 (x3 msg))
    (cl:cons ':x4 (x4 msg))
    (cl:cons ':x5 (x5 msg))
    (cl:cons ':x6 (x6 msg))
    (cl:cons ':GripperStatus (GripperStatus msg))
))

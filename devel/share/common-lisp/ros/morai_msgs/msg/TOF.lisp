; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude TOF.msg.html

(cl:defclass <TOF> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0))
)

(cl:defclass TOF (<TOF>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOF>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOF)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<TOF> is deprecated: use morai_msgs-msg:TOF instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <TOF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:timestamp-val is deprecated.  Use morai_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <TOF>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:distance-val is deprecated.  Use morai_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOF>) ostream)
  "Serializes a message object of type '<TOF>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOF>) istream)
  "Deserializes a message object of type '<TOF>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOF>)))
  "Returns string type for a message object of type '<TOF>"
  "morai_msgs/TOF")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOF)))
  "Returns string type for a message object of type 'TOF"
  "morai_msgs/TOF")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOF>)))
  "Returns md5sum for a message object of type '<TOF>"
  "7fb9ac7b27b511cce0fecf3763a4d63e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOF)))
  "Returns md5sum for a message object of type 'TOF"
  "7fb9ac7b27b511cce0fecf3763a4d63e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOF>)))
  "Returns full string definition for message of type '<TOF>"
  (cl:format cl:nil "float64 timestamp~%int32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOF)))
  "Returns full string definition for message of type 'TOF"
  (cl:format cl:nil "float64 timestamp~%int32 distance~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOF>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOF>))
  "Converts a ROS message object to a list"
  (cl:list 'TOF
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':distance (distance msg))
))

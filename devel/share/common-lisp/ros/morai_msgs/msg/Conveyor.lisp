; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude Conveyor.msg.html

(cl:defclass <Conveyor> (roslisp-msg-protocol:ros-message)
  ((straight_reverse
    :reader straight_reverse
    :initarg :straight_reverse
    :type cl:integer
    :initform 0)
   (left_right
    :reader left_right
    :initarg :left_right
    :type cl:integer
    :initform 0))
)

(cl:defclass Conveyor (<Conveyor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Conveyor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Conveyor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<Conveyor> is deprecated: use morai_msgs-msg:Conveyor instead.")))

(cl:ensure-generic-function 'straight_reverse-val :lambda-list '(m))
(cl:defmethod straight_reverse-val ((m <Conveyor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:straight_reverse-val is deprecated.  Use morai_msgs-msg:straight_reverse instead.")
  (straight_reverse m))

(cl:ensure-generic-function 'left_right-val :lambda-list '(m))
(cl:defmethod left_right-val ((m <Conveyor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:left_right-val is deprecated.  Use morai_msgs-msg:left_right instead.")
  (left_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Conveyor>) ostream)
  "Serializes a message object of type '<Conveyor>"
  (cl:let* ((signed (cl:slot-value msg 'straight_reverse)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'left_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Conveyor>) istream)
  "Deserializes a message object of type '<Conveyor>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'straight_reverse) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Conveyor>)))
  "Returns string type for a message object of type '<Conveyor>"
  "morai_msgs/Conveyor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Conveyor)))
  "Returns string type for a message object of type 'Conveyor"
  "morai_msgs/Conveyor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Conveyor>)))
  "Returns md5sum for a message object of type '<Conveyor>"
  "29cf3f1705a2ed7d91592669dd89da67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Conveyor)))
  "Returns md5sum for a message object of type 'Conveyor"
  "29cf3f1705a2ed7d91592669dd89da67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Conveyor>)))
  "Returns full string definition for message of type '<Conveyor>"
  (cl:format cl:nil "int32 straight_reverse~%int32 left_right~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Conveyor)))
  "Returns full string definition for message of type 'Conveyor"
  (cl:format cl:nil "int32 straight_reverse~%int32 left_right~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Conveyor>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Conveyor>))
  "Converts a ROS message object to a list"
  (cl:list 'Conveyor
    (cl:cons ':straight_reverse (straight_reverse msg))
    (cl:cons ':left_right (left_right msg))
))

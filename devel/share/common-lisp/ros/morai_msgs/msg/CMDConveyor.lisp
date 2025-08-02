; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude CMDConveyor.msg.html

(cl:defclass <CMDConveyor> (roslisp-msg-protocol:ros-message)
  ((position_sensor
    :reader position_sensor
    :initarg :position_sensor
    :type cl:boolean
    :initform cl:nil)
   (palette_sensor1
    :reader palette_sensor1
    :initarg :palette_sensor1
    :type cl:boolean
    :initform cl:nil)
   (palette_sensor2
    :reader palette_sensor2
    :initarg :palette_sensor2
    :type cl:boolean
    :initform cl:nil)
   (limit_sensor
    :reader limit_sensor
    :initarg :limit_sensor
    :type cl:integer
    :initform 0))
)

(cl:defclass CMDConveyor (<CMDConveyor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CMDConveyor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CMDConveyor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<CMDConveyor> is deprecated: use morai_msgs-msg:CMDConveyor instead.")))

(cl:ensure-generic-function 'position_sensor-val :lambda-list '(m))
(cl:defmethod position_sensor-val ((m <CMDConveyor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:position_sensor-val is deprecated.  Use morai_msgs-msg:position_sensor instead.")
  (position_sensor m))

(cl:ensure-generic-function 'palette_sensor1-val :lambda-list '(m))
(cl:defmethod palette_sensor1-val ((m <CMDConveyor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:palette_sensor1-val is deprecated.  Use morai_msgs-msg:palette_sensor1 instead.")
  (palette_sensor1 m))

(cl:ensure-generic-function 'palette_sensor2-val :lambda-list '(m))
(cl:defmethod palette_sensor2-val ((m <CMDConveyor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:palette_sensor2-val is deprecated.  Use morai_msgs-msg:palette_sensor2 instead.")
  (palette_sensor2 m))

(cl:ensure-generic-function 'limit_sensor-val :lambda-list '(m))
(cl:defmethod limit_sensor-val ((m <CMDConveyor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:limit_sensor-val is deprecated.  Use morai_msgs-msg:limit_sensor instead.")
  (limit_sensor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CMDConveyor>) ostream)
  "Serializes a message object of type '<CMDConveyor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'position_sensor) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'palette_sensor1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'palette_sensor2) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'limit_sensor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CMDConveyor>) istream)
  "Deserializes a message object of type '<CMDConveyor>"
    (cl:setf (cl:slot-value msg 'position_sensor) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'palette_sensor1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'palette_sensor2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'limit_sensor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CMDConveyor>)))
  "Returns string type for a message object of type '<CMDConveyor>"
  "morai_msgs/CMDConveyor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CMDConveyor)))
  "Returns string type for a message object of type 'CMDConveyor"
  "morai_msgs/CMDConveyor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CMDConveyor>)))
  "Returns md5sum for a message object of type '<CMDConveyor>"
  "dff78b314b2d7216c66dfddb645260b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CMDConveyor)))
  "Returns md5sum for a message object of type 'CMDConveyor"
  "dff78b314b2d7216c66dfddb645260b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CMDConveyor>)))
  "Returns full string definition for message of type '<CMDConveyor>"
  (cl:format cl:nil "bool position_sensor~%bool palette_sensor1~%bool palette_sensor2~%int32 limit_sensor~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CMDConveyor)))
  "Returns full string definition for message of type 'CMDConveyor"
  (cl:format cl:nil "bool position_sensor~%bool palette_sensor1~%bool palette_sensor2~%int32 limit_sensor~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CMDConveyor>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CMDConveyor>))
  "Converts a ROS message object to a list"
  (cl:list 'CMDConveyor
    (cl:cons ':position_sensor (position_sensor msg))
    (cl:cons ':palette_sensor1 (palette_sensor1 msg))
    (cl:cons ':palette_sensor2 (palette_sensor2 msg))
    (cl:cons ':limit_sensor (limit_sensor msg))
))

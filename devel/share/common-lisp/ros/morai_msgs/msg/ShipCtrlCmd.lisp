; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude ShipCtrlCmd.msg.html

(cl:defclass <ShipCtrlCmd> (roslisp-msg-protocol:ros-message)
  ((thrust
    :reader thrust
    :initarg :thrust
    :type cl:float
    :initform 0.0)
   (rudder
    :reader rudder
    :initarg :rudder
    :type cl:float
    :initform 0.0))
)

(cl:defclass ShipCtrlCmd (<ShipCtrlCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShipCtrlCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShipCtrlCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<ShipCtrlCmd> is deprecated: use morai_msgs-msg:ShipCtrlCmd instead.")))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <ShipCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:thrust-val is deprecated.  Use morai_msgs-msg:thrust instead.")
  (thrust m))

(cl:ensure-generic-function 'rudder-val :lambda-list '(m))
(cl:defmethod rudder-val ((m <ShipCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:rudder-val is deprecated.  Use morai_msgs-msg:rudder instead.")
  (rudder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShipCtrlCmd>) ostream)
  "Serializes a message object of type '<ShipCtrlCmd>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thrust))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rudder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShipCtrlCmd>) istream)
  "Deserializes a message object of type '<ShipCtrlCmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rudder) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShipCtrlCmd>)))
  "Returns string type for a message object of type '<ShipCtrlCmd>"
  "morai_msgs/ShipCtrlCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShipCtrlCmd)))
  "Returns string type for a message object of type 'ShipCtrlCmd"
  "morai_msgs/ShipCtrlCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShipCtrlCmd>)))
  "Returns md5sum for a message object of type '<ShipCtrlCmd>"
  "85d5dbe9a6145daec25dfb99701cfc26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShipCtrlCmd)))
  "Returns md5sum for a message object of type 'ShipCtrlCmd"
  "85d5dbe9a6145daec25dfb99701cfc26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShipCtrlCmd>)))
  "Returns full string definition for message of type '<ShipCtrlCmd>"
  (cl:format cl:nil "float32 thrust~%float32 rudder~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShipCtrlCmd)))
  "Returns full string definition for message of type 'ShipCtrlCmd"
  (cl:format cl:nil "float32 thrust~%float32 rudder~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShipCtrlCmd>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShipCtrlCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ShipCtrlCmd
    (cl:cons ':thrust (thrust msg))
    (cl:cons ':rudder (rudder msg))
))

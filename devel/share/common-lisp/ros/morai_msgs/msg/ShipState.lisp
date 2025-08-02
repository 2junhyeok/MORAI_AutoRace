; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude ShipState.msg.html

(cl:defclass <ShipState> (roslisp-msg-protocol:ros-message)
  ((thrust
    :reader thrust
    :initarg :thrust
    :type cl:float
    :initform 0.0)
   (rudder
    :reader rudder
    :initarg :rudder
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type morai_msgs-msg:GeoVector3Message
    :initform (cl:make-instance 'morai_msgs-msg:GeoVector3Message))
   (rotation
    :reader rotation
    :initarg :rotation
    :type morai_msgs-msg:GeoVector3Message
    :initform (cl:make-instance 'morai_msgs-msg:GeoVector3Message))
   (velocity
    :reader velocity
    :initarg :velocity
    :type morai_msgs-msg:GeoVector3Message
    :initform (cl:make-instance 'morai_msgs-msg:GeoVector3Message))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type morai_msgs-msg:GeoVector3Message
    :initform (cl:make-instance 'morai_msgs-msg:GeoVector3Message)))
)

(cl:defclass ShipState (<ShipState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShipState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShipState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<ShipState> is deprecated: use morai_msgs-msg:ShipState instead.")))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <ShipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:thrust-val is deprecated.  Use morai_msgs-msg:thrust instead.")
  (thrust m))

(cl:ensure-generic-function 'rudder-val :lambda-list '(m))
(cl:defmethod rudder-val ((m <ShipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:rudder-val is deprecated.  Use morai_msgs-msg:rudder instead.")
  (rudder m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ShipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:position-val is deprecated.  Use morai_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <ShipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:rotation-val is deprecated.  Use morai_msgs-msg:rotation instead.")
  (rotation m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <ShipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:velocity-val is deprecated.  Use morai_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <ShipState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:angular_velocity-val is deprecated.  Use morai_msgs-msg:angular_velocity instead.")
  (angular_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShipState>) ostream)
  "Serializes a message object of type '<ShipState>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShipState>) istream)
  "Deserializes a message object of type '<ShipState>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShipState>)))
  "Returns string type for a message object of type '<ShipState>"
  "morai_msgs/ShipState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShipState)))
  "Returns string type for a message object of type 'ShipState"
  "morai_msgs/ShipState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShipState>)))
  "Returns md5sum for a message object of type '<ShipState>"
  "48473abafb39e8611d0c7321f91ca943")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShipState)))
  "Returns md5sum for a message object of type 'ShipState"
  "48473abafb39e8611d0c7321f91ca943")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShipState>)))
  "Returns full string definition for message of type '<ShipState>"
  (cl:format cl:nil "float32 thrust~%float32 rudder~%GeoVector3Message position~%GeoVector3Message rotation~%GeoVector3Message velocity~%GeoVector3Message angular_velocity~%================================================================================~%MSG: morai_msgs/GeoVector3Message~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShipState)))
  "Returns full string definition for message of type 'ShipState"
  (cl:format cl:nil "float32 thrust~%float32 rudder~%GeoVector3Message position~%GeoVector3Message rotation~%GeoVector3Message velocity~%GeoVector3Message angular_velocity~%================================================================================~%MSG: morai_msgs/GeoVector3Message~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShipState>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShipState>))
  "Converts a ROS message object to a list"
  (cl:list 'ShipState
    (cl:cons ':thrust (thrust msg))
    (cl:cons ':rudder (rudder msg))
    (cl:cons ':position (position msg))
    (cl:cons ':rotation (rotation msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
))

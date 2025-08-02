; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude GVStateCmd.msg.html

(cl:defclass <GVStateCmd> (roslisp-msg-protocol:ros-message)
  ((latCtrlType
    :reader latCtrlType
    :initarg :latCtrlType
    :type cl:integer
    :initform 0)
   (targetLongitudinalVelocity
    :reader targetLongitudinalVelocity
    :initarg :targetLongitudinalVelocity
    :type cl:float
    :initform 0.0)
   (targetAngularVelocity
    :reader targetAngularVelocity
    :initarg :targetAngularVelocity
    :type cl:float
    :initform 0.0)
   (targetSteerAngle
    :reader targetSteerAngle
    :initarg :targetSteerAngle
    :type (cl:vector cl:float)
   :initform (cl:make-array 10 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GVStateCmd (<GVStateCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GVStateCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GVStateCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<GVStateCmd> is deprecated: use morai_msgs-msg:GVStateCmd instead.")))

(cl:ensure-generic-function 'latCtrlType-val :lambda-list '(m))
(cl:defmethod latCtrlType-val ((m <GVStateCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:latCtrlType-val is deprecated.  Use morai_msgs-msg:latCtrlType instead.")
  (latCtrlType m))

(cl:ensure-generic-function 'targetLongitudinalVelocity-val :lambda-list '(m))
(cl:defmethod targetLongitudinalVelocity-val ((m <GVStateCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:targetLongitudinalVelocity-val is deprecated.  Use morai_msgs-msg:targetLongitudinalVelocity instead.")
  (targetLongitudinalVelocity m))

(cl:ensure-generic-function 'targetAngularVelocity-val :lambda-list '(m))
(cl:defmethod targetAngularVelocity-val ((m <GVStateCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:targetAngularVelocity-val is deprecated.  Use morai_msgs-msg:targetAngularVelocity instead.")
  (targetAngularVelocity m))

(cl:ensure-generic-function 'targetSteerAngle-val :lambda-list '(m))
(cl:defmethod targetSteerAngle-val ((m <GVStateCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:targetSteerAngle-val is deprecated.  Use morai_msgs-msg:targetSteerAngle instead.")
  (targetSteerAngle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GVStateCmd>) ostream)
  "Serializes a message object of type '<GVStateCmd>"
  (cl:let* ((signed (cl:slot-value msg 'latCtrlType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetLongitudinalVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'targetAngularVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'targetSteerAngle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GVStateCmd>) istream)
  "Deserializes a message object of type '<GVStateCmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latCtrlType) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetLongitudinalVelocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'targetAngularVelocity) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'targetSteerAngle) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'targetSteerAngle)))
    (cl:dotimes (i 10)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GVStateCmd>)))
  "Returns string type for a message object of type '<GVStateCmd>"
  "morai_msgs/GVStateCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GVStateCmd)))
  "Returns string type for a message object of type 'GVStateCmd"
  "morai_msgs/GVStateCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GVStateCmd>)))
  "Returns md5sum for a message object of type '<GVStateCmd>"
  "9c46684704317c52202cdb27e4bbbc62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GVStateCmd)))
  "Returns md5sum for a message object of type 'GVStateCmd"
  "9c46684704317c52202cdb27e4bbbc62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GVStateCmd>)))
  "Returns full string definition for message of type '<GVStateCmd>"
  (cl:format cl:nil "int32 latCtrlType~%float32 targetLongitudinalVelocity~%float32 targetAngularVelocity~%float32[10] targetSteerAngle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GVStateCmd)))
  "Returns full string definition for message of type 'GVStateCmd"
  (cl:format cl:nil "int32 latCtrlType~%float32 targetLongitudinalVelocity~%float32 targetAngularVelocity~%float32[10] targetSteerAngle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GVStateCmd>))
  (cl:+ 0
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'targetSteerAngle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GVStateCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'GVStateCmd
    (cl:cons ':latCtrlType (latCtrlType msg))
    (cl:cons ':targetLongitudinalVelocity (targetLongitudinalVelocity msg))
    (cl:cons ':targetAngularVelocity (targetAngularVelocity msg))
    (cl:cons ':targetSteerAngle (targetSteerAngle msg))
))

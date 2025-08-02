; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude GVDirectCmd.msg.html

(cl:defclass <GVDirectCmd> (roslisp-msg-protocol:ros-message)
  ((steerType
    :reader steerType
    :initarg :steerType
    :type cl:integer
    :initform 0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:float
    :initform 0.0)
   (skidSteering
    :reader skidSteering
    :initarg :skidSteering
    :type cl:float
    :initform 0.0)
   (steerAngle
    :reader steerAngle
    :initarg :steerAngle
    :type (cl:vector cl:float)
   :initform (cl:make-array 10 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GVDirectCmd (<GVDirectCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GVDirectCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GVDirectCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<GVDirectCmd> is deprecated: use morai_msgs-msg:GVDirectCmd instead.")))

(cl:ensure-generic-function 'steerType-val :lambda-list '(m))
(cl:defmethod steerType-val ((m <GVDirectCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:steerType-val is deprecated.  Use morai_msgs-msg:steerType instead.")
  (steerType m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <GVDirectCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:throttle-val is deprecated.  Use morai_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <GVDirectCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:brake-val is deprecated.  Use morai_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'skidSteering-val :lambda-list '(m))
(cl:defmethod skidSteering-val ((m <GVDirectCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:skidSteering-val is deprecated.  Use morai_msgs-msg:skidSteering instead.")
  (skidSteering m))

(cl:ensure-generic-function 'steerAngle-val :lambda-list '(m))
(cl:defmethod steerAngle-val ((m <GVDirectCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:steerAngle-val is deprecated.  Use morai_msgs-msg:steerAngle instead.")
  (steerAngle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GVDirectCmd>) ostream)
  "Serializes a message object of type '<GVDirectCmd>"
  (cl:let* ((signed (cl:slot-value msg 'steerType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'skidSteering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'steerAngle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GVDirectCmd>) istream)
  "Deserializes a message object of type '<GVDirectCmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steerType) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'skidSteering) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'steerAngle) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'steerAngle)))
    (cl:dotimes (i 10)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GVDirectCmd>)))
  "Returns string type for a message object of type '<GVDirectCmd>"
  "morai_msgs/GVDirectCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GVDirectCmd)))
  "Returns string type for a message object of type 'GVDirectCmd"
  "morai_msgs/GVDirectCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GVDirectCmd>)))
  "Returns md5sum for a message object of type '<GVDirectCmd>"
  "30caf69ae63756f977cf67485048deb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GVDirectCmd)))
  "Returns md5sum for a message object of type 'GVDirectCmd"
  "30caf69ae63756f977cf67485048deb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GVDirectCmd>)))
  "Returns full string definition for message of type '<GVDirectCmd>"
  (cl:format cl:nil "int32 steerType~%float32 throttle~%float32 brake~%float32 skidSteering~%float32[10] steerAngle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GVDirectCmd)))
  "Returns full string definition for message of type 'GVDirectCmd"
  (cl:format cl:nil "int32 steerType~%float32 throttle~%float32 brake~%float32 skidSteering~%float32[10] steerAngle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GVDirectCmd>))
  (cl:+ 0
     4
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'steerAngle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GVDirectCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'GVDirectCmd
    (cl:cons ':steerType (steerType msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':skidSteering (skidSteering msg))
    (cl:cons ':steerAngle (steerAngle msg))
))

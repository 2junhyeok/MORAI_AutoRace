; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude UGVServeSkidCtrlCmd.msg.html

(cl:defclass <UGVServeSkidCtrlCmd> (roslisp-msg-protocol:ros-message)
  ((steer_mode
    :reader steer_mode
    :initarg :steer_mode
    :type cl:integer
    :initform 0)
   (forward
    :reader forward
    :initarg :forward
    :type cl:float
    :initform 0.0)
   (skid_steering
    :reader skid_steering
    :initarg :skid_steering
    :type cl:float
    :initform 0.0)
   (ackermann_steering
    :reader ackermann_steering
    :initarg :ackermann_steering
    :type cl:float
    :initform 0.0)
   (ackermann_steering_rear_ratio
    :reader ackermann_steering_rear_ratio
    :initarg :ackermann_steering_rear_ratio
    :type cl:float
    :initform 0.0))
)

(cl:defclass UGVServeSkidCtrlCmd (<UGVServeSkidCtrlCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UGVServeSkidCtrlCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UGVServeSkidCtrlCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<UGVServeSkidCtrlCmd> is deprecated: use morai_msgs-msg:UGVServeSkidCtrlCmd instead.")))

(cl:ensure-generic-function 'steer_mode-val :lambda-list '(m))
(cl:defmethod steer_mode-val ((m <UGVServeSkidCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:steer_mode-val is deprecated.  Use morai_msgs-msg:steer_mode instead.")
  (steer_mode m))

(cl:ensure-generic-function 'forward-val :lambda-list '(m))
(cl:defmethod forward-val ((m <UGVServeSkidCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:forward-val is deprecated.  Use morai_msgs-msg:forward instead.")
  (forward m))

(cl:ensure-generic-function 'skid_steering-val :lambda-list '(m))
(cl:defmethod skid_steering-val ((m <UGVServeSkidCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:skid_steering-val is deprecated.  Use morai_msgs-msg:skid_steering instead.")
  (skid_steering m))

(cl:ensure-generic-function 'ackermann_steering-val :lambda-list '(m))
(cl:defmethod ackermann_steering-val ((m <UGVServeSkidCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:ackermann_steering-val is deprecated.  Use morai_msgs-msg:ackermann_steering instead.")
  (ackermann_steering m))

(cl:ensure-generic-function 'ackermann_steering_rear_ratio-val :lambda-list '(m))
(cl:defmethod ackermann_steering_rear_ratio-val ((m <UGVServeSkidCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:ackermann_steering_rear_ratio-val is deprecated.  Use morai_msgs-msg:ackermann_steering_rear_ratio instead.")
  (ackermann_steering_rear_ratio m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UGVServeSkidCtrlCmd>) ostream)
  "Serializes a message object of type '<UGVServeSkidCtrlCmd>"
  (cl:let* ((signed (cl:slot-value msg 'steer_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'forward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'skid_steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ackermann_steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ackermann_steering_rear_ratio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UGVServeSkidCtrlCmd>) istream)
  "Deserializes a message object of type '<UGVServeSkidCtrlCmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steer_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'forward) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'skid_steering) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ackermann_steering) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ackermann_steering_rear_ratio) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UGVServeSkidCtrlCmd>)))
  "Returns string type for a message object of type '<UGVServeSkidCtrlCmd>"
  "morai_msgs/UGVServeSkidCtrlCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UGVServeSkidCtrlCmd)))
  "Returns string type for a message object of type 'UGVServeSkidCtrlCmd"
  "morai_msgs/UGVServeSkidCtrlCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UGVServeSkidCtrlCmd>)))
  "Returns md5sum for a message object of type '<UGVServeSkidCtrlCmd>"
  "4f54afce325790f6ec15cfae04a11605")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UGVServeSkidCtrlCmd)))
  "Returns md5sum for a message object of type 'UGVServeSkidCtrlCmd"
  "4f54afce325790f6ec15cfae04a11605")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UGVServeSkidCtrlCmd>)))
  "Returns full string definition for message of type '<UGVServeSkidCtrlCmd>"
  (cl:format cl:nil "int32 steer_mode~%float32 forward~%float32 skid_steering~%float32 ackermann_steering~%float32 ackermann_steering_rear_ratio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UGVServeSkidCtrlCmd)))
  "Returns full string definition for message of type 'UGVServeSkidCtrlCmd"
  (cl:format cl:nil "int32 steer_mode~%float32 forward~%float32 skid_steering~%float32 ackermann_steering~%float32 ackermann_steering_rear_ratio~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UGVServeSkidCtrlCmd>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UGVServeSkidCtrlCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'UGVServeSkidCtrlCmd
    (cl:cons ':steer_mode (steer_mode msg))
    (cl:cons ':forward (forward msg))
    (cl:cons ':skid_steering (skid_steering msg))
    (cl:cons ':ackermann_steering (ackermann_steering msg))
    (cl:cons ':ackermann_steering_rear_ratio (ackermann_steering_rear_ratio msg))
))

; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude WheelControl.msg.html

(cl:defclass <WheelControl> (roslisp-msg-protocol:ros-message)
  ((wheel_steering_angle
    :reader wheel_steering_angle
    :initarg :wheel_steering_angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (wheel_rpm
    :reader wheel_rpm
    :initarg :wheel_rpm
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass WheelControl (<WheelControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<WheelControl> is deprecated: use morai_msgs-msg:WheelControl instead.")))

(cl:ensure-generic-function 'wheel_steering_angle-val :lambda-list '(m))
(cl:defmethod wheel_steering_angle-val ((m <WheelControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:wheel_steering_angle-val is deprecated.  Use morai_msgs-msg:wheel_steering_angle instead.")
  (wheel_steering_angle m))

(cl:ensure-generic-function 'wheel_rpm-val :lambda-list '(m))
(cl:defmethod wheel_rpm-val ((m <WheelControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:wheel_rpm-val is deprecated.  Use morai_msgs-msg:wheel_rpm instead.")
  (wheel_rpm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelControl>) ostream)
  "Serializes a message object of type '<WheelControl>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wheel_steering_angle))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'wheel_rpm))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelControl>) istream)
  "Deserializes a message object of type '<WheelControl>"
  (cl:setf (cl:slot-value msg 'wheel_steering_angle) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'wheel_steering_angle)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'wheel_rpm) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'wheel_rpm)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelControl>)))
  "Returns string type for a message object of type '<WheelControl>"
  "morai_msgs/WheelControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelControl)))
  "Returns string type for a message object of type 'WheelControl"
  "morai_msgs/WheelControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelControl>)))
  "Returns md5sum for a message object of type '<WheelControl>"
  "d7de35c959ef804c8f372b8c6582c692")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelControl)))
  "Returns md5sum for a message object of type 'WheelControl"
  "d7de35c959ef804c8f372b8c6582c692")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelControl>)))
  "Returns full string definition for message of type '<WheelControl>"
  (cl:format cl:nil "float32[4] wheel_steering_angle~%float32[4] wheel_rpm~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelControl)))
  "Returns full string definition for message of type 'WheelControl"
  (cl:format cl:nil "float32[4] wheel_steering_angle~%float32[4] wheel_rpm~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelControl>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_steering_angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_rpm) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelControl>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelControl
    (cl:cons ':wheel_steering_angle (wheel_steering_angle msg))
    (cl:cons ':wheel_rpm (wheel_rpm msg))
))

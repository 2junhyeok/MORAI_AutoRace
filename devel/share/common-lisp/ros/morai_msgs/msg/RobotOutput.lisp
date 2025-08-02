; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude RobotOutput.msg.html

(cl:defclass <RobotOutput> (roslisp-msg-protocol:ros-message)
  ((drive_mode
    :reader drive_mode
    :initarg :drive_mode
    :type cl:integer
    :initform 0)
   (safe_mode_en
    :reader safe_mode_en
    :initarg :safe_mode_en
    :type cl:boolean
    :initform cl:nil)
   (is_obstacle
    :reader is_obstacle
    :initarg :is_obstacle
    :type cl:boolean
    :initform cl:nil)
   (is_enabled
    :reader is_enabled
    :initarg :is_enabled
    :type cl:integer
    :initform 0)
   (is_collision
    :reader is_collision
    :initarg :is_collision
    :type cl:boolean
    :initform cl:nil)
   (is_emg_stop
    :reader is_emg_stop
    :initarg :is_emg_stop
    :type cl:boolean
    :initform cl:nil)
   (is_protect_stop
    :reader is_protect_stop
    :initarg :is_protect_stop
    :type cl:boolean
    :initform cl:nil)
   (is_brake
    :reader is_brake
    :initarg :is_brake
    :type cl:boolean
    :initform cl:nil)
   (is_speed_limit_on_safe_mode
    :reader is_speed_limit_on_safe_mode
    :initarg :is_speed_limit_on_safe_mode
    :type cl:boolean
    :initform cl:nil)
   (is_muting
    :reader is_muting
    :initarg :is_muting
    :type cl:boolean
    :initform cl:nil)
   (attach_exist
    :reader attach_exist
    :initarg :attach_exist
    :type cl:boolean
    :initform cl:nil)
   (attach_mode
    :reader attach_mode
    :initarg :attach_mode
    :type cl:integer
    :initform 0)
   (is_attach_sig
    :reader is_attach_sig
    :initarg :is_attach_sig
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotOutput (<RobotOutput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotOutput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotOutput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<RobotOutput> is deprecated: use morai_msgs-msg:RobotOutput instead.")))

(cl:ensure-generic-function 'drive_mode-val :lambda-list '(m))
(cl:defmethod drive_mode-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:drive_mode-val is deprecated.  Use morai_msgs-msg:drive_mode instead.")
  (drive_mode m))

(cl:ensure-generic-function 'safe_mode_en-val :lambda-list '(m))
(cl:defmethod safe_mode_en-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:safe_mode_en-val is deprecated.  Use morai_msgs-msg:safe_mode_en instead.")
  (safe_mode_en m))

(cl:ensure-generic-function 'is_obstacle-val :lambda-list '(m))
(cl:defmethod is_obstacle-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:is_obstacle-val is deprecated.  Use morai_msgs-msg:is_obstacle instead.")
  (is_obstacle m))

(cl:ensure-generic-function 'is_enabled-val :lambda-list '(m))
(cl:defmethod is_enabled-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:is_enabled-val is deprecated.  Use morai_msgs-msg:is_enabled instead.")
  (is_enabled m))

(cl:ensure-generic-function 'is_collision-val :lambda-list '(m))
(cl:defmethod is_collision-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:is_collision-val is deprecated.  Use morai_msgs-msg:is_collision instead.")
  (is_collision m))

(cl:ensure-generic-function 'is_emg_stop-val :lambda-list '(m))
(cl:defmethod is_emg_stop-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:is_emg_stop-val is deprecated.  Use morai_msgs-msg:is_emg_stop instead.")
  (is_emg_stop m))

(cl:ensure-generic-function 'is_protect_stop-val :lambda-list '(m))
(cl:defmethod is_protect_stop-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:is_protect_stop-val is deprecated.  Use morai_msgs-msg:is_protect_stop instead.")
  (is_protect_stop m))

(cl:ensure-generic-function 'is_brake-val :lambda-list '(m))
(cl:defmethod is_brake-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:is_brake-val is deprecated.  Use morai_msgs-msg:is_brake instead.")
  (is_brake m))

(cl:ensure-generic-function 'is_speed_limit_on_safe_mode-val :lambda-list '(m))
(cl:defmethod is_speed_limit_on_safe_mode-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:is_speed_limit_on_safe_mode-val is deprecated.  Use morai_msgs-msg:is_speed_limit_on_safe_mode instead.")
  (is_speed_limit_on_safe_mode m))

(cl:ensure-generic-function 'is_muting-val :lambda-list '(m))
(cl:defmethod is_muting-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:is_muting-val is deprecated.  Use morai_msgs-msg:is_muting instead.")
  (is_muting m))

(cl:ensure-generic-function 'attach_exist-val :lambda-list '(m))
(cl:defmethod attach_exist-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:attach_exist-val is deprecated.  Use morai_msgs-msg:attach_exist instead.")
  (attach_exist m))

(cl:ensure-generic-function 'attach_mode-val :lambda-list '(m))
(cl:defmethod attach_mode-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:attach_mode-val is deprecated.  Use morai_msgs-msg:attach_mode instead.")
  (attach_mode m))

(cl:ensure-generic-function 'is_attach_sig-val :lambda-list '(m))
(cl:defmethod is_attach_sig-val ((m <RobotOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:is_attach_sig-val is deprecated.  Use morai_msgs-msg:is_attach_sig instead.")
  (is_attach_sig m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotOutput>) ostream)
  "Serializes a message object of type '<RobotOutput>"
  (cl:let* ((signed (cl:slot-value msg 'drive_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'safe_mode_en) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_obstacle) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'is_enabled)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_collision) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_emg_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_protect_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_brake) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_speed_limit_on_safe_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_muting) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'attach_exist) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'attach_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_attach_sig) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotOutput>) istream)
  "Deserializes a message object of type '<RobotOutput>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drive_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'safe_mode_en) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_obstacle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_enabled) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_collision) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_emg_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_protect_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_brake) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_speed_limit_on_safe_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_muting) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'attach_exist) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'attach_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_attach_sig) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotOutput>)))
  "Returns string type for a message object of type '<RobotOutput>"
  "morai_msgs/RobotOutput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotOutput)))
  "Returns string type for a message object of type 'RobotOutput"
  "morai_msgs/RobotOutput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotOutput>)))
  "Returns md5sum for a message object of type '<RobotOutput>"
  "eaa8f4689886d42e18ac9f19e4d67999")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotOutput)))
  "Returns md5sum for a message object of type 'RobotOutput"
  "eaa8f4689886d42e18ac9f19e4d67999")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotOutput>)))
  "Returns full string definition for message of type '<RobotOutput>"
  (cl:format cl:nil "int32 drive_mode~%bool safe_mode_en~%bool is_obstacle~%int32 is_enabled~%bool is_collision~%bool is_emg_stop~%bool is_protect_stop~%bool is_brake~%bool is_speed_limit_on_safe_mode~%bool is_muting~%bool attach_exist~%int32 attach_mode~%bool is_attach_sig~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotOutput)))
  "Returns full string definition for message of type 'RobotOutput"
  (cl:format cl:nil "int32 drive_mode~%bool safe_mode_en~%bool is_obstacle~%int32 is_enabled~%bool is_collision~%bool is_emg_stop~%bool is_protect_stop~%bool is_brake~%bool is_speed_limit_on_safe_mode~%bool is_muting~%bool attach_exist~%int32 attach_mode~%bool is_attach_sig~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotOutput>))
  (cl:+ 0
     4
     1
     1
     4
     1
     1
     1
     1
     1
     1
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotOutput>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotOutput
    (cl:cons ':drive_mode (drive_mode msg))
    (cl:cons ':safe_mode_en (safe_mode_en msg))
    (cl:cons ':is_obstacle (is_obstacle msg))
    (cl:cons ':is_enabled (is_enabled msg))
    (cl:cons ':is_collision (is_collision msg))
    (cl:cons ':is_emg_stop (is_emg_stop msg))
    (cl:cons ':is_protect_stop (is_protect_stop msg))
    (cl:cons ':is_brake (is_brake msg))
    (cl:cons ':is_speed_limit_on_safe_mode (is_speed_limit_on_safe_mode msg))
    (cl:cons ':is_muting (is_muting msg))
    (cl:cons ':attach_exist (attach_exist msg))
    (cl:cons ':attach_mode (attach_mode msg))
    (cl:cons ':is_attach_sig (is_attach_sig msg))
))

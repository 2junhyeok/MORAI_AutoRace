;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::EgoVehicleStatus)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'EgoVehicleStatus (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::EGOVEHICLESTATUS")
  (make-package "MORAI_MSGS::EGOVEHICLESTATUS"))

(in-package "ROS")
;;//! \htmlinclude EgoVehicleStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::EgoVehicleStatus
  :super ros::object
  :slots (_header _unique_id _acceleration _position _velocity _heading _accel _brake _wheel_angle _lateral_offset _tire_lateral_force_fl _tire_lateral_force_fr _tire_lateral_force_rl _tire_lateral_force_rr _side_slip_angle_fl _side_slip_angle_fr _side_slip_angle_rl _side_slip_angle_rr _tire_cornering_stiffness_fl _tire_cornering_stiffness_fr _tire_cornering_stiffness_rl _tire_cornering_stiffness_rr ))

(defmethod morai_msgs::EgoVehicleStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:unique_id __unique_id) 0)
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:heading __heading) 0.0)
    ((:accel __accel) 0.0)
    ((:brake __brake) 0.0)
    ((:wheel_angle __wheel_angle) 0.0)
    ((:lateral_offset __lateral_offset) 0.0)
    ((:tire_lateral_force_fl __tire_lateral_force_fl) 0.0)
    ((:tire_lateral_force_fr __tire_lateral_force_fr) 0.0)
    ((:tire_lateral_force_rl __tire_lateral_force_rl) 0.0)
    ((:tire_lateral_force_rr __tire_lateral_force_rr) 0.0)
    ((:side_slip_angle_fl __side_slip_angle_fl) 0.0)
    ((:side_slip_angle_fr __side_slip_angle_fr) 0.0)
    ((:side_slip_angle_rl __side_slip_angle_rl) 0.0)
    ((:side_slip_angle_rr __side_slip_angle_rr) 0.0)
    ((:tire_cornering_stiffness_fl __tire_cornering_stiffness_fl) 0.0)
    ((:tire_cornering_stiffness_fr __tire_cornering_stiffness_fr) 0.0)
    ((:tire_cornering_stiffness_rl __tire_cornering_stiffness_rl) 0.0)
    ((:tire_cornering_stiffness_rr __tire_cornering_stiffness_rr) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _unique_id (round __unique_id))
   (setq _acceleration __acceleration)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _heading (float __heading))
   (setq _accel (float __accel))
   (setq _brake (float __brake))
   (setq _wheel_angle (float __wheel_angle))
   (setq _lateral_offset (float __lateral_offset))
   (setq _tire_lateral_force_fl (float __tire_lateral_force_fl))
   (setq _tire_lateral_force_fr (float __tire_lateral_force_fr))
   (setq _tire_lateral_force_rl (float __tire_lateral_force_rl))
   (setq _tire_lateral_force_rr (float __tire_lateral_force_rr))
   (setq _side_slip_angle_fl (float __side_slip_angle_fl))
   (setq _side_slip_angle_fr (float __side_slip_angle_fr))
   (setq _side_slip_angle_rl (float __side_slip_angle_rl))
   (setq _side_slip_angle_rr (float __side_slip_angle_rr))
   (setq _tire_cornering_stiffness_fl (float __tire_cornering_stiffness_fl))
   (setq _tire_cornering_stiffness_fr (float __tire_cornering_stiffness_fr))
   (setq _tire_cornering_stiffness_rl (float __tire_cornering_stiffness_rl))
   (setq _tire_cornering_stiffness_rr (float __tire_cornering_stiffness_rr))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:unique_id
   (&optional __unique_id)
   (if __unique_id (setq _unique_id __unique_id)) _unique_id)
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:accel
   (&optional __accel)
   (if __accel (setq _accel __accel)) _accel)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:wheel_angle
   (&optional __wheel_angle)
   (if __wheel_angle (setq _wheel_angle __wheel_angle)) _wheel_angle)
  (:lateral_offset
   (&optional __lateral_offset)
   (if __lateral_offset (setq _lateral_offset __lateral_offset)) _lateral_offset)
  (:tire_lateral_force_fl
   (&optional __tire_lateral_force_fl)
   (if __tire_lateral_force_fl (setq _tire_lateral_force_fl __tire_lateral_force_fl)) _tire_lateral_force_fl)
  (:tire_lateral_force_fr
   (&optional __tire_lateral_force_fr)
   (if __tire_lateral_force_fr (setq _tire_lateral_force_fr __tire_lateral_force_fr)) _tire_lateral_force_fr)
  (:tire_lateral_force_rl
   (&optional __tire_lateral_force_rl)
   (if __tire_lateral_force_rl (setq _tire_lateral_force_rl __tire_lateral_force_rl)) _tire_lateral_force_rl)
  (:tire_lateral_force_rr
   (&optional __tire_lateral_force_rr)
   (if __tire_lateral_force_rr (setq _tire_lateral_force_rr __tire_lateral_force_rr)) _tire_lateral_force_rr)
  (:side_slip_angle_fl
   (&optional __side_slip_angle_fl)
   (if __side_slip_angle_fl (setq _side_slip_angle_fl __side_slip_angle_fl)) _side_slip_angle_fl)
  (:side_slip_angle_fr
   (&optional __side_slip_angle_fr)
   (if __side_slip_angle_fr (setq _side_slip_angle_fr __side_slip_angle_fr)) _side_slip_angle_fr)
  (:side_slip_angle_rl
   (&optional __side_slip_angle_rl)
   (if __side_slip_angle_rl (setq _side_slip_angle_rl __side_slip_angle_rl)) _side_slip_angle_rl)
  (:side_slip_angle_rr
   (&optional __side_slip_angle_rr)
   (if __side_slip_angle_rr (setq _side_slip_angle_rr __side_slip_angle_rr)) _side_slip_angle_rr)
  (:tire_cornering_stiffness_fl
   (&optional __tire_cornering_stiffness_fl)
   (if __tire_cornering_stiffness_fl (setq _tire_cornering_stiffness_fl __tire_cornering_stiffness_fl)) _tire_cornering_stiffness_fl)
  (:tire_cornering_stiffness_fr
   (&optional __tire_cornering_stiffness_fr)
   (if __tire_cornering_stiffness_fr (setq _tire_cornering_stiffness_fr __tire_cornering_stiffness_fr)) _tire_cornering_stiffness_fr)
  (:tire_cornering_stiffness_rl
   (&optional __tire_cornering_stiffness_rl)
   (if __tire_cornering_stiffness_rl (setq _tire_cornering_stiffness_rl __tire_cornering_stiffness_rl)) _tire_cornering_stiffness_rl)
  (:tire_cornering_stiffness_rr
   (&optional __tire_cornering_stiffness_rr)
   (if __tire_cornering_stiffness_rr (setq _tire_cornering_stiffness_rr __tire_cornering_stiffness_rr)) _tire_cornering_stiffness_rr)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _unique_id
    4
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; float64 _heading
    8
    ;; float32 _accel
    4
    ;; float32 _brake
    4
    ;; float32 _wheel_angle
    4
    ;; float32 _lateral_offset
    4
    ;; float32 _tire_lateral_force_fl
    4
    ;; float32 _tire_lateral_force_fr
    4
    ;; float32 _tire_lateral_force_rl
    4
    ;; float32 _tire_lateral_force_rr
    4
    ;; float32 _side_slip_angle_fl
    4
    ;; float32 _side_slip_angle_fr
    4
    ;; float32 _side_slip_angle_rl
    4
    ;; float32 _side_slip_angle_rr
    4
    ;; float32 _tire_cornering_stiffness_fl
    4
    ;; float32 _tire_cornering_stiffness_fr
    4
    ;; float32 _tire_cornering_stiffness_rl
    4
    ;; float32 _tire_cornering_stiffness_rr
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _unique_id
       (write-long _unique_id s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _accel
       (sys::poke _accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_angle
       (sys::poke _wheel_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lateral_offset
       (sys::poke _lateral_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tire_lateral_force_fl
       (sys::poke _tire_lateral_force_fl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tire_lateral_force_fr
       (sys::poke _tire_lateral_force_fr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tire_lateral_force_rl
       (sys::poke _tire_lateral_force_rl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tire_lateral_force_rr
       (sys::poke _tire_lateral_force_rr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _side_slip_angle_fl
       (sys::poke _side_slip_angle_fl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _side_slip_angle_fr
       (sys::poke _side_slip_angle_fr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _side_slip_angle_rl
       (sys::poke _side_slip_angle_rl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _side_slip_angle_rr
       (sys::poke _side_slip_angle_rr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tire_cornering_stiffness_fl
       (sys::poke _tire_cornering_stiffness_fl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tire_cornering_stiffness_fr
       (sys::poke _tire_cornering_stiffness_fr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tire_cornering_stiffness_rl
       (sys::poke _tire_cornering_stiffness_rl (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tire_cornering_stiffness_rr
       (sys::poke _tire_cornering_stiffness_rr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _unique_id
     (setq _unique_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _accel
     (setq _accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake
     (setq _brake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_angle
     (setq _wheel_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lateral_offset
     (setq _lateral_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tire_lateral_force_fl
     (setq _tire_lateral_force_fl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tire_lateral_force_fr
     (setq _tire_lateral_force_fr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tire_lateral_force_rl
     (setq _tire_lateral_force_rl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tire_lateral_force_rr
     (setq _tire_lateral_force_rr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _side_slip_angle_fl
     (setq _side_slip_angle_fl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _side_slip_angle_fr
     (setq _side_slip_angle_fr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _side_slip_angle_rl
     (setq _side_slip_angle_rl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _side_slip_angle_rr
     (setq _side_slip_angle_rr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tire_cornering_stiffness_fl
     (setq _tire_cornering_stiffness_fl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tire_cornering_stiffness_fr
     (setq _tire_cornering_stiffness_fr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tire_cornering_stiffness_rl
     (setq _tire_cornering_stiffness_rl (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tire_cornering_stiffness_rr
     (setq _tire_cornering_stiffness_rr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::EgoVehicleStatus :md5sum-) "a54480c8f4c41293a77cf7a0eb3925c9")
(setf (get morai_msgs::EgoVehicleStatus :datatype-) "morai_msgs/EgoVehicleStatus")
(setf (get morai_msgs::EgoVehicleStatus :definition-)
      "Header header
int32 unique_id
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 position
geometry_msgs/Vector3 velocity

float64 heading
float32 accel
float32 brake
float32 wheel_angle
float32 lateral_offset

float32 tire_lateral_force_fl
float32 tire_lateral_force_fr
float32 tire_lateral_force_rl
float32 tire_lateral_force_rr

float32 side_slip_angle_fl
float32 side_slip_angle_fr
float32 side_slip_angle_rl
float32 side_slip_angle_rr

float32 tire_cornering_stiffness_fl
float32 tire_cornering_stiffness_fr
float32 tire_cornering_stiffness_rl
float32 tire_cornering_stiffness_rr
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :morai_msgs/EgoVehicleStatus "a54480c8f4c41293a77cf7a0eb3925c9")



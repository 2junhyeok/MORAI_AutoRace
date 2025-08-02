;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::ShipState)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'ShipState (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SHIPSTATE")
  (make-package "MORAI_MSGS::SHIPSTATE"))

(in-package "ROS")
;;//! \htmlinclude ShipState.msg.html


(defclass morai_msgs::ShipState
  :super ros::object
  :slots (_thrust _rudder _position _rotation _velocity _angular_velocity ))

(defmethod morai_msgs::ShipState
  (:init
   (&key
    ((:thrust __thrust) 0.0)
    ((:rudder __rudder) 0.0)
    ((:position __position) (instance morai_msgs::GeoVector3Message :init))
    ((:rotation __rotation) (instance morai_msgs::GeoVector3Message :init))
    ((:velocity __velocity) (instance morai_msgs::GeoVector3Message :init))
    ((:angular_velocity __angular_velocity) (instance morai_msgs::GeoVector3Message :init))
    )
   (send-super :init)
   (setq _thrust (float __thrust))
   (setq _rudder (float __rudder))
   (setq _position __position)
   (setq _rotation __rotation)
   (setq _velocity __velocity)
   (setq _angular_velocity __angular_velocity)
   self)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:rudder
   (&optional __rudder)
   (if __rudder (setq _rudder __rudder)) _rudder)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:rotation
   (&rest __rotation)
   (if (keywordp (car __rotation))
       (send* _rotation __rotation)
     (progn
       (if __rotation (setq _rotation (car __rotation)))
       _rotation)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:serialization-length
   ()
   (+
    ;; float32 _thrust
    4
    ;; float32 _rudder
    4
    ;; morai_msgs/GeoVector3Message _position
    (send _position :serialization-length)
    ;; morai_msgs/GeoVector3Message _rotation
    (send _rotation :serialization-length)
    ;; morai_msgs/GeoVector3Message _velocity
    (send _velocity :serialization-length)
    ;; morai_msgs/GeoVector3Message _angular_velocity
    (send _angular_velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rudder
       (sys::poke _rudder (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; morai_msgs/GeoVector3Message _position
       (send _position :serialize s)
     ;; morai_msgs/GeoVector3Message _rotation
       (send _rotation :serialize s)
     ;; morai_msgs/GeoVector3Message _velocity
       (send _velocity :serialize s)
     ;; morai_msgs/GeoVector3Message _angular_velocity
       (send _angular_velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _thrust
     (setq _thrust (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rudder
     (setq _rudder (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; morai_msgs/GeoVector3Message _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; morai_msgs/GeoVector3Message _rotation
     (send _rotation :deserialize buf ptr-) (incf ptr- (send _rotation :serialization-length))
   ;; morai_msgs/GeoVector3Message _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; morai_msgs/GeoVector3Message _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;;
   self)
  )

(setf (get morai_msgs::ShipState :md5sum-) "48473abafb39e8611d0c7321f91ca943")
(setf (get morai_msgs::ShipState :datatype-) "morai_msgs/ShipState")
(setf (get morai_msgs::ShipState :definition-)
      "float32 thrust
float32 rudder
GeoVector3Message position
GeoVector3Message rotation
GeoVector3Message velocity
GeoVector3Message angular_velocity
================================================================================
MSG: morai_msgs/GeoVector3Message
float64 x
float64 y
float64 z
")



(provide :morai_msgs/ShipState "48473abafb39e8611d0c7321f91ca943")



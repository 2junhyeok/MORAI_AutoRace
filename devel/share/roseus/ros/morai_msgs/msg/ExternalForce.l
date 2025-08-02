;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::ExternalForce)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'ExternalForce (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::EXTERNALFORCE")
  (make-package "MORAI_MSGS::EXTERNALFORCE"))

(in-package "ROS")
;;//! \htmlinclude ExternalForce.msg.html


(defclass morai_msgs::ExternalForce
  :super ros::object
  :slots (_position_x _position_y _position_z _force_x _force_y _force_z ))

(defmethod morai_msgs::ExternalForce
  (:init
   (&key
    ((:position_x __position_x) 0.0)
    ((:position_y __position_y) 0.0)
    ((:position_z __position_z) 0.0)
    ((:force_x __force_x) 0.0)
    ((:force_y __force_y) 0.0)
    ((:force_z __force_z) 0.0)
    )
   (send-super :init)
   (setq _position_x (float __position_x))
   (setq _position_y (float __position_y))
   (setq _position_z (float __position_z))
   (setq _force_x (float __force_x))
   (setq _force_y (float __force_y))
   (setq _force_z (float __force_z))
   self)
  (:position_x
   (&optional __position_x)
   (if __position_x (setq _position_x __position_x)) _position_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:position_z
   (&optional __position_z)
   (if __position_z (setq _position_z __position_z)) _position_z)
  (:force_x
   (&optional __force_x)
   (if __force_x (setq _force_x __force_x)) _force_x)
  (:force_y
   (&optional __force_y)
   (if __force_y (setq _force_y __force_y)) _force_y)
  (:force_z
   (&optional __force_z)
   (if __force_z (setq _force_z __force_z)) _force_z)
  (:serialization-length
   ()
   (+
    ;; float32 _position_x
    4
    ;; float32 _position_y
    4
    ;; float32 _position_z
    4
    ;; float32 _force_x
    4
    ;; float32 _force_y
    4
    ;; float32 _force_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _position_x
       (sys::poke _position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_y
       (sys::poke _position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_z
       (sys::poke _position_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force_x
       (sys::poke _force_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force_y
       (sys::poke _force_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force_z
       (sys::poke _force_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _position_x
     (setq _position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_y
     (setq _position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_z
     (setq _position_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force_x
     (setq _force_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force_y
     (setq _force_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force_z
     (setq _force_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::ExternalForce :md5sum-) "aefc97f66dbfb45872997157ecd3e94d")
(setf (get morai_msgs::ExternalForce :datatype-) "morai_msgs/ExternalForce")
(setf (get morai_msgs::ExternalForce :definition-)
      "float32 position_x
float32 position_y
float32 position_z
float32 force_x
float32 force_y
float32 force_z
")



(provide :morai_msgs/ExternalForce "aefc97f66dbfb45872997157ecd3e94d")



;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::GVDirectCmd)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'GVDirectCmd (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::GVDIRECTCMD")
  (make-package "MORAI_MSGS::GVDIRECTCMD"))

(in-package "ROS")
;;//! \htmlinclude GVDirectCmd.msg.html


(defclass morai_msgs::GVDirectCmd
  :super ros::object
  :slots (_steerType _throttle _brake _skidSteering _steerAngle ))

(defmethod morai_msgs::GVDirectCmd
  (:init
   (&key
    ((:steerType __steerType) 0)
    ((:throttle __throttle) 0.0)
    ((:brake __brake) 0.0)
    ((:skidSteering __skidSteering) 0.0)
    ((:steerAngle __steerAngle) (make-array 10 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _steerType (round __steerType))
   (setq _throttle (float __throttle))
   (setq _brake (float __brake))
   (setq _skidSteering (float __skidSteering))
   (setq _steerAngle __steerAngle)
   self)
  (:steerType
   (&optional __steerType)
   (if __steerType (setq _steerType __steerType)) _steerType)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:skidSteering
   (&optional __skidSteering)
   (if __skidSteering (setq _skidSteering __skidSteering)) _skidSteering)
  (:steerAngle
   (&optional __steerAngle)
   (if __steerAngle (setq _steerAngle __steerAngle)) _steerAngle)
  (:serialization-length
   ()
   (+
    ;; int32 _steerType
    4
    ;; float32 _throttle
    4
    ;; float32 _brake
    4
    ;; float32 _skidSteering
    4
    ;; float32[10] _steerAngle
    (* 4    10)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _steerType
       (write-long _steerType s)
     ;; float32 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _skidSteering
       (sys::poke _skidSteering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[10] _steerAngle
     (dotimes (i 10)
       (sys::poke (elt _steerAngle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _steerType
     (setq _steerType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _throttle
     (setq _throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake
     (setq _brake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _skidSteering
     (setq _skidSteering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[10] _steerAngle
   (dotimes (i (length _steerAngle))
     (setf (elt _steerAngle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get morai_msgs::GVDirectCmd :md5sum-) "30caf69ae63756f977cf67485048deb6")
(setf (get morai_msgs::GVDirectCmd :datatype-) "morai_msgs/GVDirectCmd")
(setf (get morai_msgs::GVDirectCmd :definition-)
      "int32 steerType
float32 throttle
float32 brake
float32 skidSteering
float32[10] steerAngle
")



(provide :morai_msgs/GVDirectCmd "30caf69ae63756f977cf67485048deb6")



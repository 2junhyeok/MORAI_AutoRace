;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::GVStateCmd)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'GVStateCmd (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::GVSTATECMD")
  (make-package "MORAI_MSGS::GVSTATECMD"))

(in-package "ROS")
;;//! \htmlinclude GVStateCmd.msg.html


(defclass morai_msgs::GVStateCmd
  :super ros::object
  :slots (_latCtrlType _targetLongitudinalVelocity _targetAngularVelocity _targetSteerAngle ))

(defmethod morai_msgs::GVStateCmd
  (:init
   (&key
    ((:latCtrlType __latCtrlType) 0)
    ((:targetLongitudinalVelocity __targetLongitudinalVelocity) 0.0)
    ((:targetAngularVelocity __targetAngularVelocity) 0.0)
    ((:targetSteerAngle __targetSteerAngle) (make-array 10 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _latCtrlType (round __latCtrlType))
   (setq _targetLongitudinalVelocity (float __targetLongitudinalVelocity))
   (setq _targetAngularVelocity (float __targetAngularVelocity))
   (setq _targetSteerAngle __targetSteerAngle)
   self)
  (:latCtrlType
   (&optional __latCtrlType)
   (if __latCtrlType (setq _latCtrlType __latCtrlType)) _latCtrlType)
  (:targetLongitudinalVelocity
   (&optional __targetLongitudinalVelocity)
   (if __targetLongitudinalVelocity (setq _targetLongitudinalVelocity __targetLongitudinalVelocity)) _targetLongitudinalVelocity)
  (:targetAngularVelocity
   (&optional __targetAngularVelocity)
   (if __targetAngularVelocity (setq _targetAngularVelocity __targetAngularVelocity)) _targetAngularVelocity)
  (:targetSteerAngle
   (&optional __targetSteerAngle)
   (if __targetSteerAngle (setq _targetSteerAngle __targetSteerAngle)) _targetSteerAngle)
  (:serialization-length
   ()
   (+
    ;; int32 _latCtrlType
    4
    ;; float32 _targetLongitudinalVelocity
    4
    ;; float32 _targetAngularVelocity
    4
    ;; float32[10] _targetSteerAngle
    (* 4    10)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _latCtrlType
       (write-long _latCtrlType s)
     ;; float32 _targetLongitudinalVelocity
       (sys::poke _targetLongitudinalVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _targetAngularVelocity
       (sys::poke _targetAngularVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[10] _targetSteerAngle
     (dotimes (i 10)
       (sys::poke (elt _targetSteerAngle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _latCtrlType
     (setq _latCtrlType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _targetLongitudinalVelocity
     (setq _targetLongitudinalVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _targetAngularVelocity
     (setq _targetAngularVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[10] _targetSteerAngle
   (dotimes (i (length _targetSteerAngle))
     (setf (elt _targetSteerAngle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get morai_msgs::GVStateCmd :md5sum-) "9c46684704317c52202cdb27e4bbbc62")
(setf (get morai_msgs::GVStateCmd :datatype-) "morai_msgs/GVStateCmd")
(setf (get morai_msgs::GVStateCmd :definition-)
      "int32 latCtrlType
float32 targetLongitudinalVelocity
float32 targetAngularVelocity
float32[10] targetSteerAngle
")



(provide :morai_msgs/GVStateCmd "9c46684704317c52202cdb27e4bbbc62")



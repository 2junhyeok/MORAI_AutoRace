;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::WheelControl)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'WheelControl (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::WHEELCONTROL")
  (make-package "MORAI_MSGS::WHEELCONTROL"))

(in-package "ROS")
;;//! \htmlinclude WheelControl.msg.html


(defclass morai_msgs::WheelControl
  :super ros::object
  :slots (_wheel_steering_angle _wheel_rpm ))

(defmethod morai_msgs::WheelControl
  (:init
   (&key
    ((:wheel_steering_angle __wheel_steering_angle) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:wheel_rpm __wheel_rpm) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _wheel_steering_angle __wheel_steering_angle)
   (setq _wheel_rpm __wheel_rpm)
   self)
  (:wheel_steering_angle
   (&optional __wheel_steering_angle)
   (if __wheel_steering_angle (setq _wheel_steering_angle __wheel_steering_angle)) _wheel_steering_angle)
  (:wheel_rpm
   (&optional __wheel_rpm)
   (if __wheel_rpm (setq _wheel_rpm __wheel_rpm)) _wheel_rpm)
  (:serialization-length
   ()
   (+
    ;; float32[4] _wheel_steering_angle
    (* 4    4)
    ;; float32[4] _wheel_rpm
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[4] _wheel_steering_angle
     (dotimes (i 4)
       (sys::poke (elt _wheel_steering_angle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _wheel_rpm
     (dotimes (i 4)
       (sys::poke (elt _wheel_rpm i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[4] _wheel_steering_angle
   (dotimes (i (length _wheel_steering_angle))
     (setf (elt _wheel_steering_angle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _wheel_rpm
   (dotimes (i (length _wheel_rpm))
     (setf (elt _wheel_rpm i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get morai_msgs::WheelControl :md5sum-) "d7de35c959ef804c8f372b8c6582c692")
(setf (get morai_msgs::WheelControl :datatype-) "morai_msgs/WheelControl")
(setf (get morai_msgs::WheelControl :definition-)
      "float32[4] wheel_steering_angle
float32[4] wheel_rpm
")



(provide :morai_msgs/WheelControl "d7de35c959ef804c8f372b8c6582c692")



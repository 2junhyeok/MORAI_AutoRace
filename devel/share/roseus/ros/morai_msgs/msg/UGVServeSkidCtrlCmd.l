;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::UGVServeSkidCtrlCmd)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'UGVServeSkidCtrlCmd (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::UGVSERVESKIDCTRLCMD")
  (make-package "MORAI_MSGS::UGVSERVESKIDCTRLCMD"))

(in-package "ROS")
;;//! \htmlinclude UGVServeSkidCtrlCmd.msg.html


(defclass morai_msgs::UGVServeSkidCtrlCmd
  :super ros::object
  :slots (_steer_mode _forward _skid_steering _ackermann_steering _ackermann_steering_rear_ratio ))

(defmethod morai_msgs::UGVServeSkidCtrlCmd
  (:init
   (&key
    ((:steer_mode __steer_mode) 0)
    ((:forward __forward) 0.0)
    ((:skid_steering __skid_steering) 0.0)
    ((:ackermann_steering __ackermann_steering) 0.0)
    ((:ackermann_steering_rear_ratio __ackermann_steering_rear_ratio) 0.0)
    )
   (send-super :init)
   (setq _steer_mode (round __steer_mode))
   (setq _forward (float __forward))
   (setq _skid_steering (float __skid_steering))
   (setq _ackermann_steering (float __ackermann_steering))
   (setq _ackermann_steering_rear_ratio (float __ackermann_steering_rear_ratio))
   self)
  (:steer_mode
   (&optional __steer_mode)
   (if __steer_mode (setq _steer_mode __steer_mode)) _steer_mode)
  (:forward
   (&optional __forward)
   (if __forward (setq _forward __forward)) _forward)
  (:skid_steering
   (&optional __skid_steering)
   (if __skid_steering (setq _skid_steering __skid_steering)) _skid_steering)
  (:ackermann_steering
   (&optional __ackermann_steering)
   (if __ackermann_steering (setq _ackermann_steering __ackermann_steering)) _ackermann_steering)
  (:ackermann_steering_rear_ratio
   (&optional __ackermann_steering_rear_ratio)
   (if __ackermann_steering_rear_ratio (setq _ackermann_steering_rear_ratio __ackermann_steering_rear_ratio)) _ackermann_steering_rear_ratio)
  (:serialization-length
   ()
   (+
    ;; int32 _steer_mode
    4
    ;; float32 _forward
    4
    ;; float32 _skid_steering
    4
    ;; float32 _ackermann_steering
    4
    ;; float32 _ackermann_steering_rear_ratio
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _steer_mode
       (write-long _steer_mode s)
     ;; float32 _forward
       (sys::poke _forward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _skid_steering
       (sys::poke _skid_steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ackermann_steering
       (sys::poke _ackermann_steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ackermann_steering_rear_ratio
       (sys::poke _ackermann_steering_rear_ratio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _steer_mode
     (setq _steer_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _forward
     (setq _forward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _skid_steering
     (setq _skid_steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ackermann_steering
     (setq _ackermann_steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ackermann_steering_rear_ratio
     (setq _ackermann_steering_rear_ratio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::UGVServeSkidCtrlCmd :md5sum-) "4f54afce325790f6ec15cfae04a11605")
(setf (get morai_msgs::UGVServeSkidCtrlCmd :datatype-) "morai_msgs/UGVServeSkidCtrlCmd")
(setf (get morai_msgs::UGVServeSkidCtrlCmd :definition-)
      "int32 steer_mode
float32 forward
float32 skid_steering
float32 ackermann_steering
float32 ackermann_steering_rear_ratio

")



(provide :morai_msgs/UGVServeSkidCtrlCmd "4f54afce325790f6ec15cfae04a11605")



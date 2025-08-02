;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::RobotState)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'RobotState (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::ROBOTSTATE")
  (make-package "MORAI_MSGS::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html


(defclass morai_msgs::RobotState
  :super ros::object
  :slots (_robot_state _error_state ))

(defmethod morai_msgs::RobotState
  (:init
   (&key
    ((:robot_state __robot_state) 0)
    ((:error_state __error_state) 0)
    )
   (send-super :init)
   (setq _robot_state (round __robot_state))
   (setq _error_state (round __error_state))
   self)
  (:robot_state
   (&optional __robot_state)
   (if __robot_state (setq _robot_state __robot_state)) _robot_state)
  (:error_state
   (&optional __error_state)
   (if __error_state (setq _error_state __error_state)) _error_state)
  (:serialization-length
   ()
   (+
    ;; int32 _robot_state
    4
    ;; int32 _error_state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _robot_state
       (write-long _robot_state s)
     ;; int32 _error_state
       (write-long _error_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _robot_state
     (setq _robot_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _error_state
     (setq _error_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::RobotState :md5sum-) "835553f45e086a919a7670752929a6e8")
(setf (get morai_msgs::RobotState :datatype-) "morai_msgs/RobotState")
(setf (get morai_msgs::RobotState :definition-)
      "int32 robot_state
int32 error_state
")



(provide :morai_msgs/RobotState "835553f45e086a919a7670752929a6e8")



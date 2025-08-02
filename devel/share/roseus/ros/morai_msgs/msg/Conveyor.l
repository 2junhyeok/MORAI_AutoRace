;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::Conveyor)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'Conveyor (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::CONVEYOR")
  (make-package "MORAI_MSGS::CONVEYOR"))

(in-package "ROS")
;;//! \htmlinclude Conveyor.msg.html


(defclass morai_msgs::Conveyor
  :super ros::object
  :slots (_straight_reverse _left_right ))

(defmethod morai_msgs::Conveyor
  (:init
   (&key
    ((:straight_reverse __straight_reverse) 0)
    ((:left_right __left_right) 0)
    )
   (send-super :init)
   (setq _straight_reverse (round __straight_reverse))
   (setq _left_right (round __left_right))
   self)
  (:straight_reverse
   (&optional __straight_reverse)
   (if __straight_reverse (setq _straight_reverse __straight_reverse)) _straight_reverse)
  (:left_right
   (&optional __left_right)
   (if __left_right (setq _left_right __left_right)) _left_right)
  (:serialization-length
   ()
   (+
    ;; int32 _straight_reverse
    4
    ;; int32 _left_right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _straight_reverse
       (write-long _straight_reverse s)
     ;; int32 _left_right
       (write-long _left_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _straight_reverse
     (setq _straight_reverse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _left_right
     (setq _left_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::Conveyor :md5sum-) "29cf3f1705a2ed7d91592669dd89da67")
(setf (get morai_msgs::Conveyor :datatype-) "morai_msgs/Conveyor")
(setf (get morai_msgs::Conveyor :definition-)
      "int32 straight_reverse
int32 left_right
")



(provide :morai_msgs/Conveyor "29cf3f1705a2ed7d91592669dd89da67")



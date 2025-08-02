;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::ManipulatorControl)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'ManipulatorControl (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MANIPULATORCONTROL")
  (make-package "MORAI_MSGS::MANIPULATORCONTROL"))

(in-package "ROS")
;;//! \htmlinclude ManipulatorControl.msg.html


(defclass morai_msgs::ManipulatorControl
  :super ros::object
  :slots (_ControlType _x1 _x2 _x3 _x4 _x5 _x6 _GripperStatus ))

(defmethod morai_msgs::ManipulatorControl
  (:init
   (&key
    ((:ControlType __ControlType) 0)
    ((:x1 __x1) 0.0)
    ((:x2 __x2) 0.0)
    ((:x3 __x3) 0.0)
    ((:x4 __x4) 0.0)
    ((:x5 __x5) 0.0)
    ((:x6 __x6) 0.0)
    ((:GripperStatus __GripperStatus) nil)
    )
   (send-super :init)
   (setq _ControlType (round __ControlType))
   (setq _x1 (float __x1))
   (setq _x2 (float __x2))
   (setq _x3 (float __x3))
   (setq _x4 (float __x4))
   (setq _x5 (float __x5))
   (setq _x6 (float __x6))
   (setq _GripperStatus __GripperStatus)
   self)
  (:ControlType
   (&optional __ControlType)
   (if __ControlType (setq _ControlType __ControlType)) _ControlType)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:x3
   (&optional __x3)
   (if __x3 (setq _x3 __x3)) _x3)
  (:x4
   (&optional __x4)
   (if __x4 (setq _x4 __x4)) _x4)
  (:x5
   (&optional __x5)
   (if __x5 (setq _x5 __x5)) _x5)
  (:x6
   (&optional __x6)
   (if __x6 (setq _x6 __x6)) _x6)
  (:GripperStatus
   (&optional (__GripperStatus :null))
   (if (not (eq __GripperStatus :null)) (setq _GripperStatus __GripperStatus)) _GripperStatus)
  (:serialization-length
   ()
   (+
    ;; int32 _ControlType
    4
    ;; float32 _x1
    4
    ;; float32 _x2
    4
    ;; float32 _x3
    4
    ;; float32 _x4
    4
    ;; float32 _x5
    4
    ;; float32 _x6
    4
    ;; bool _GripperStatus
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ControlType
       (write-long _ControlType s)
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x3
       (sys::poke _x3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x4
       (sys::poke _x4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x5
       (sys::poke _x5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x6
       (sys::poke _x6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _GripperStatus
       (if _GripperStatus (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ControlType
     (setq _ControlType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x2
     (setq _x2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x3
     (setq _x3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x4
     (setq _x4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x5
     (setq _x5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x6
     (setq _x6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _GripperStatus
     (setq _GripperStatus (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get morai_msgs::ManipulatorControl :md5sum-) "2949cc268ce29a2b5dafef91eaf5bd1c")
(setf (get morai_msgs::ManipulatorControl :datatype-) "morai_msgs/ManipulatorControl")
(setf (get morai_msgs::ManipulatorControl :definition-)
      "int32 ControlType
float32 x1
float32 x2
float32 x3
float32 x4
float32 x5
float32 x6
bool GripperStatus


")



(provide :morai_msgs/ManipulatorControl "2949cc268ce29a2b5dafef91eaf5bd1c")



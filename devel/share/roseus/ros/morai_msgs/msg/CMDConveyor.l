;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::CMDConveyor)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'CMDConveyor (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::CMDCONVEYOR")
  (make-package "MORAI_MSGS::CMDCONVEYOR"))

(in-package "ROS")
;;//! \htmlinclude CMDConveyor.msg.html


(defclass morai_msgs::CMDConveyor
  :super ros::object
  :slots (_position_sensor _palette_sensor1 _palette_sensor2 _limit_sensor ))

(defmethod morai_msgs::CMDConveyor
  (:init
   (&key
    ((:position_sensor __position_sensor) nil)
    ((:palette_sensor1 __palette_sensor1) nil)
    ((:palette_sensor2 __palette_sensor2) nil)
    ((:limit_sensor __limit_sensor) 0)
    )
   (send-super :init)
   (setq _position_sensor __position_sensor)
   (setq _palette_sensor1 __palette_sensor1)
   (setq _palette_sensor2 __palette_sensor2)
   (setq _limit_sensor (round __limit_sensor))
   self)
  (:position_sensor
   (&optional (__position_sensor :null))
   (if (not (eq __position_sensor :null)) (setq _position_sensor __position_sensor)) _position_sensor)
  (:palette_sensor1
   (&optional (__palette_sensor1 :null))
   (if (not (eq __palette_sensor1 :null)) (setq _palette_sensor1 __palette_sensor1)) _palette_sensor1)
  (:palette_sensor2
   (&optional (__palette_sensor2 :null))
   (if (not (eq __palette_sensor2 :null)) (setq _palette_sensor2 __palette_sensor2)) _palette_sensor2)
  (:limit_sensor
   (&optional __limit_sensor)
   (if __limit_sensor (setq _limit_sensor __limit_sensor)) _limit_sensor)
  (:serialization-length
   ()
   (+
    ;; bool _position_sensor
    1
    ;; bool _palette_sensor1
    1
    ;; bool _palette_sensor2
    1
    ;; int32 _limit_sensor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _position_sensor
       (if _position_sensor (write-byte -1 s) (write-byte 0 s))
     ;; bool _palette_sensor1
       (if _palette_sensor1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _palette_sensor2
       (if _palette_sensor2 (write-byte -1 s) (write-byte 0 s))
     ;; int32 _limit_sensor
       (write-long _limit_sensor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _position_sensor
     (setq _position_sensor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _palette_sensor1
     (setq _palette_sensor1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _palette_sensor2
     (setq _palette_sensor2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _limit_sensor
     (setq _limit_sensor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::CMDConveyor :md5sum-) "dff78b314b2d7216c66dfddb645260b4")
(setf (get morai_msgs::CMDConveyor :datatype-) "morai_msgs/CMDConveyor")
(setf (get morai_msgs::CMDConveyor :definition-)
      "bool position_sensor
bool palette_sensor1
bool palette_sensor2
int32 limit_sensor
")



(provide :morai_msgs/CMDConveyor "dff78b314b2d7216c66dfddb645260b4")



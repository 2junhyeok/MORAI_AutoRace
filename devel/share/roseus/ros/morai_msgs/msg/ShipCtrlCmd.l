;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::ShipCtrlCmd)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'ShipCtrlCmd (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SHIPCTRLCMD")
  (make-package "MORAI_MSGS::SHIPCTRLCMD"))

(in-package "ROS")
;;//! \htmlinclude ShipCtrlCmd.msg.html


(defclass morai_msgs::ShipCtrlCmd
  :super ros::object
  :slots (_thrust _rudder ))

(defmethod morai_msgs::ShipCtrlCmd
  (:init
   (&key
    ((:thrust __thrust) 0.0)
    ((:rudder __rudder) 0.0)
    )
   (send-super :init)
   (setq _thrust (float __thrust))
   (setq _rudder (float __rudder))
   self)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:rudder
   (&optional __rudder)
   (if __rudder (setq _rudder __rudder)) _rudder)
  (:serialization-length
   ()
   (+
    ;; float32 _thrust
    4
    ;; float32 _rudder
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rudder
       (sys::poke _rudder (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _thrust
     (setq _thrust (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rudder
     (setq _rudder (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::ShipCtrlCmd :md5sum-) "85d5dbe9a6145daec25dfb99701cfc26")
(setf (get morai_msgs::ShipCtrlCmd :datatype-) "morai_msgs/ShipCtrlCmd")
(setf (get morai_msgs::ShipCtrlCmd :definition-)
      "float32 thrust
float32 rudder
")



(provide :morai_msgs/ShipCtrlCmd "85d5dbe9a6145daec25dfb99701cfc26")



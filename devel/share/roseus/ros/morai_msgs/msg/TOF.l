;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::TOF)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'TOF (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::TOF")
  (make-package "MORAI_MSGS::TOF"))

(in-package "ROS")
;;//! \htmlinclude TOF.msg.html


(defclass morai_msgs::TOF
  :super ros::object
  :slots (_timestamp _distance ))

(defmethod morai_msgs::TOF
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:distance __distance) 0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _distance (round __distance))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; int32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _distance
       (write-long _distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _distance
     (setq _distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::TOF :md5sum-) "7fb9ac7b27b511cce0fecf3763a4d63e")
(setf (get morai_msgs::TOF :datatype-) "morai_msgs/TOF")
(setf (get morai_msgs::TOF :definition-)
      "float64 timestamp
int32 distance
")



(provide :morai_msgs/TOF "7fb9ac7b27b511cce0fecf3763a4d63e")



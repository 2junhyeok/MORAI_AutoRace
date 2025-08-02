;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::RobotOutput)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'RobotOutput (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::ROBOTOUTPUT")
  (make-package "MORAI_MSGS::ROBOTOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude RobotOutput.msg.html


(defclass morai_msgs::RobotOutput
  :super ros::object
  :slots (_drive_mode _safe_mode_en _is_obstacle _is_enabled _is_collision _is_emg_stop _is_protect_stop _is_brake _is_speed_limit_on_safe_mode _is_muting _attach_exist _attach_mode _is_attach_sig ))

(defmethod morai_msgs::RobotOutput
  (:init
   (&key
    ((:drive_mode __drive_mode) 0)
    ((:safe_mode_en __safe_mode_en) nil)
    ((:is_obstacle __is_obstacle) nil)
    ((:is_enabled __is_enabled) 0)
    ((:is_collision __is_collision) nil)
    ((:is_emg_stop __is_emg_stop) nil)
    ((:is_protect_stop __is_protect_stop) nil)
    ((:is_brake __is_brake) nil)
    ((:is_speed_limit_on_safe_mode __is_speed_limit_on_safe_mode) nil)
    ((:is_muting __is_muting) nil)
    ((:attach_exist __attach_exist) nil)
    ((:attach_mode __attach_mode) 0)
    ((:is_attach_sig __is_attach_sig) nil)
    )
   (send-super :init)
   (setq _drive_mode (round __drive_mode))
   (setq _safe_mode_en __safe_mode_en)
   (setq _is_obstacle __is_obstacle)
   (setq _is_enabled (round __is_enabled))
   (setq _is_collision __is_collision)
   (setq _is_emg_stop __is_emg_stop)
   (setq _is_protect_stop __is_protect_stop)
   (setq _is_brake __is_brake)
   (setq _is_speed_limit_on_safe_mode __is_speed_limit_on_safe_mode)
   (setq _is_muting __is_muting)
   (setq _attach_exist __attach_exist)
   (setq _attach_mode (round __attach_mode))
   (setq _is_attach_sig __is_attach_sig)
   self)
  (:drive_mode
   (&optional __drive_mode)
   (if __drive_mode (setq _drive_mode __drive_mode)) _drive_mode)
  (:safe_mode_en
   (&optional (__safe_mode_en :null))
   (if (not (eq __safe_mode_en :null)) (setq _safe_mode_en __safe_mode_en)) _safe_mode_en)
  (:is_obstacle
   (&optional (__is_obstacle :null))
   (if (not (eq __is_obstacle :null)) (setq _is_obstacle __is_obstacle)) _is_obstacle)
  (:is_enabled
   (&optional __is_enabled)
   (if __is_enabled (setq _is_enabled __is_enabled)) _is_enabled)
  (:is_collision
   (&optional (__is_collision :null))
   (if (not (eq __is_collision :null)) (setq _is_collision __is_collision)) _is_collision)
  (:is_emg_stop
   (&optional (__is_emg_stop :null))
   (if (not (eq __is_emg_stop :null)) (setq _is_emg_stop __is_emg_stop)) _is_emg_stop)
  (:is_protect_stop
   (&optional (__is_protect_stop :null))
   (if (not (eq __is_protect_stop :null)) (setq _is_protect_stop __is_protect_stop)) _is_protect_stop)
  (:is_brake
   (&optional (__is_brake :null))
   (if (not (eq __is_brake :null)) (setq _is_brake __is_brake)) _is_brake)
  (:is_speed_limit_on_safe_mode
   (&optional (__is_speed_limit_on_safe_mode :null))
   (if (not (eq __is_speed_limit_on_safe_mode :null)) (setq _is_speed_limit_on_safe_mode __is_speed_limit_on_safe_mode)) _is_speed_limit_on_safe_mode)
  (:is_muting
   (&optional (__is_muting :null))
   (if (not (eq __is_muting :null)) (setq _is_muting __is_muting)) _is_muting)
  (:attach_exist
   (&optional (__attach_exist :null))
   (if (not (eq __attach_exist :null)) (setq _attach_exist __attach_exist)) _attach_exist)
  (:attach_mode
   (&optional __attach_mode)
   (if __attach_mode (setq _attach_mode __attach_mode)) _attach_mode)
  (:is_attach_sig
   (&optional (__is_attach_sig :null))
   (if (not (eq __is_attach_sig :null)) (setq _is_attach_sig __is_attach_sig)) _is_attach_sig)
  (:serialization-length
   ()
   (+
    ;; int32 _drive_mode
    4
    ;; bool _safe_mode_en
    1
    ;; bool _is_obstacle
    1
    ;; int32 _is_enabled
    4
    ;; bool _is_collision
    1
    ;; bool _is_emg_stop
    1
    ;; bool _is_protect_stop
    1
    ;; bool _is_brake
    1
    ;; bool _is_speed_limit_on_safe_mode
    1
    ;; bool _is_muting
    1
    ;; bool _attach_exist
    1
    ;; int32 _attach_mode
    4
    ;; bool _is_attach_sig
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _drive_mode
       (write-long _drive_mode s)
     ;; bool _safe_mode_en
       (if _safe_mode_en (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_obstacle
       (if _is_obstacle (write-byte -1 s) (write-byte 0 s))
     ;; int32 _is_enabled
       (write-long _is_enabled s)
     ;; bool _is_collision
       (if _is_collision (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_emg_stop
       (if _is_emg_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_protect_stop
       (if _is_protect_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_brake
       (if _is_brake (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_speed_limit_on_safe_mode
       (if _is_speed_limit_on_safe_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_muting
       (if _is_muting (write-byte -1 s) (write-byte 0 s))
     ;; bool _attach_exist
       (if _attach_exist (write-byte -1 s) (write-byte 0 s))
     ;; int32 _attach_mode
       (write-long _attach_mode s)
     ;; bool _is_attach_sig
       (if _is_attach_sig (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _drive_mode
     (setq _drive_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _safe_mode_en
     (setq _safe_mode_en (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_obstacle
     (setq _is_obstacle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _is_enabled
     (setq _is_enabled (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_collision
     (setq _is_collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_emg_stop
     (setq _is_emg_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_protect_stop
     (setq _is_protect_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_brake
     (setq _is_brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_speed_limit_on_safe_mode
     (setq _is_speed_limit_on_safe_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_muting
     (setq _is_muting (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _attach_exist
     (setq _attach_exist (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _attach_mode
     (setq _attach_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_attach_sig
     (setq _is_attach_sig (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get morai_msgs::RobotOutput :md5sum-) "eaa8f4689886d42e18ac9f19e4d67999")
(setf (get morai_msgs::RobotOutput :datatype-) "morai_msgs/RobotOutput")
(setf (get morai_msgs::RobotOutput :definition-)
      "int32 drive_mode
bool safe_mode_en
bool is_obstacle
int32 is_enabled
bool is_collision
bool is_emg_stop
bool is_protect_stop
bool is_brake
bool is_speed_limit_on_safe_mode
bool is_muting
bool attach_exist
int32 attach_mode
bool is_attach_sig
")



(provide :morai_msgs/RobotOutput "eaa8f4689886d42e18ac9f19e4d67999")



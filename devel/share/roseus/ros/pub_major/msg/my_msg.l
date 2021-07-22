;; Auto-generated. Do not edit!


(when (boundp 'pub_major::my_msg)
  (if (not (find-package "PUB_MAJOR"))
    (make-package "PUB_MAJOR"))
  (shadow 'my_msg (find-package "PUB_MAJOR")))
(unless (find-package "PUB_MAJOR::MY_MSG")
  (make-package "PUB_MAJOR::MY_MSG"))

(in-package "ROS")
;;//! \htmlinclude my_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pub_major::my_msg
  :super ros::object
  :slots (_string_data ))

(defmethod pub_major::my_msg
  (:init
   (&key
    ((:string_data __string_data) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _string_data __string_data)
   self)
  (:string_data
   (&rest __string_data)
   (if (keywordp (car __string_data))
       (send* _string_data __string_data)
     (progn
       (if __string_data (setq _string_data (car __string_data)))
       _string_data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _string_data
    (send _string_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _string_data
       (send _string_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _string_data
     (send _string_data :deserialize buf ptr-) (incf ptr- (send _string_data :serialization-length))
   ;;
   self)
  )

(setf (get pub_major::my_msg :md5sum-) "a86d7fd17fd3fe87bbe0c3926ccecfd0")
(setf (get pub_major::my_msg :datatype-) "pub_major/my_msg")
(setf (get pub_major::my_msg :definition-)
      "std_msgs/String string_data
================================================================================
MSG: std_msgs/String
string data

")



(provide :pub_major/my_msg "a86d7fd17fd3fe87bbe0c3926ccecfd0")



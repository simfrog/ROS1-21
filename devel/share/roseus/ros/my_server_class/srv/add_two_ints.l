;; Auto-generated. Do not edit!


(when (boundp 'my_server_class::add_two_ints)
  (if (not (find-package "MY_SERVER_CLASS"))
    (make-package "MY_SERVER_CLASS"))
  (shadow 'add_two_ints (find-package "MY_SERVER_CLASS")))
(unless (find-package "MY_SERVER_CLASS::ADD_TWO_INTS")
  (make-package "MY_SERVER_CLASS::ADD_TWO_INTS"))
(unless (find-package "MY_SERVER_CLASS::ADD_TWO_INTSREQUEST")
  (make-package "MY_SERVER_CLASS::ADD_TWO_INTSREQUEST"))
(unless (find-package "MY_SERVER_CLASS::ADD_TWO_INTSRESPONSE")
  (make-package "MY_SERVER_CLASS::ADD_TWO_INTSRESPONSE"))

(in-package "ROS")





(defclass my_server_class::add_two_intsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod my_server_class::add_two_intsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_server_class::add_two_intsResponse
  :super ros::object
  :slots (_sum ))

(defmethod my_server_class::add_two_intsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_server_class::add_two_ints
  :super ros::object
  :slots ())

(setf (get my_server_class::add_two_ints :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get my_server_class::add_two_ints :datatype-) "my_server_class/add_two_ints")
(setf (get my_server_class::add_two_ints :request) my_server_class::add_two_intsRequest)
(setf (get my_server_class::add_two_ints :response) my_server_class::add_two_intsResponse)

(defmethod my_server_class::add_two_intsRequest
  (:response () (instance my_server_class::add_two_intsResponse :init)))

(setf (get my_server_class::add_two_intsRequest :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get my_server_class::add_two_intsRequest :datatype-) "my_server_class/add_two_intsRequest")
(setf (get my_server_class::add_two_intsRequest :definition-)
      "int32 a
int32 b
---
int32 sum
")

(setf (get my_server_class::add_two_intsResponse :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get my_server_class::add_two_intsResponse :datatype-) "my_server_class/add_two_intsResponse")
(setf (get my_server_class::add_two_intsResponse :definition-)
      "int32 a
int32 b
---
int32 sum
")



(provide :my_server_class/add_two_ints "f0b6d69ea10b0cf210cb349d58d59e8f")



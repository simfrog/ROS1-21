
(cl:in-package :asdf)

(defsystem "prac_publisher-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "prac_msg" :depends-on ("_package_prac_msg"))
    (:file "_package_prac_msg" :depends-on ("_package"))
  ))
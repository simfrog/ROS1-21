
(cl:in-package :asdf)

(defsystem "my_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "add_two_ints" :depends-on ("_package_add_two_ints"))
    (:file "_package_add_two_ints" :depends-on ("_package"))
  ))
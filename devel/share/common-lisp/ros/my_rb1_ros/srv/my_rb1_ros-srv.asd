
(cl:in-package :asdf)

(defsystem "my_rb1_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Rotate" :depends-on ("_package_Rotate"))
    (:file "_package_Rotate" :depends-on ("_package"))
  ))
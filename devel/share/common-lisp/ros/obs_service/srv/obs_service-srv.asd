
(cl:in-package :asdf)

(defsystem "obs_service-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "service_example" :depends-on ("_package_service_example"))
    (:file "_package_service_example" :depends-on ("_package"))
  ))
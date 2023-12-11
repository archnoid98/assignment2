
(cl:in-package :asdf)

(defsystem "valorant_simulation_jarif-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "yoyo" :depends-on ("_package_yoyo"))
    (:file "_package_yoyo" :depends-on ("_package"))
  ))
;; Auto-generated. Do not edit!


(when (boundp 'obs_service::service_example)
  (if (not (find-package "OBS_SERVICE"))
    (make-package "OBS_SERVICE"))
  (shadow 'service_example (find-package "OBS_SERVICE")))
(unless (find-package "OBS_SERVICE::SERVICE_EXAMPLE")
  (make-package "OBS_SERVICE::SERVICE_EXAMPLE"))
(unless (find-package "OBS_SERVICE::SERVICE_EXAMPLEREQUEST")
  (make-package "OBS_SERVICE::SERVICE_EXAMPLEREQUEST"))
(unless (find-package "OBS_SERVICE::SERVICE_EXAMPLERESPONSE")
  (make-package "OBS_SERVICE::SERVICE_EXAMPLERESPONSE"))

(in-package "ROS")





(defclass obs_service::service_exampleRequest
  :super ros::object
  :slots (_flag ))

(defmethod obs_service::service_exampleRequest
  (:init
   (&key
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int32 _flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _flag
       (write-long _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _flag
     (setq _flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass obs_service::service_exampleResponse
  :super ros::object
  :slots (_go ))

(defmethod obs_service::service_exampleResponse
  (:init
   (&key
    ((:go __go) "")
    )
   (send-super :init)
   (setq _go (string __go))
   self)
  (:go
   (&optional __go)
   (if __go (setq _go __go)) _go)
  (:serialization-length
   ()
   (+
    ;; string _go
    4 (length _go)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _go
       (write-long (length _go) s) (princ _go s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _go
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _go (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass obs_service::service_example
  :super ros::object
  :slots ())

(setf (get obs_service::service_example :md5sum-) "570658227795c638a4cd95466c1e01dc")
(setf (get obs_service::service_example :datatype-) "obs_service/service_example")
(setf (get obs_service::service_example :request) obs_service::service_exampleRequest)
(setf (get obs_service::service_example :response) obs_service::service_exampleResponse)

(defmethod obs_service::service_exampleRequest
  (:response () (instance obs_service::service_exampleResponse :init)))

(setf (get obs_service::service_exampleRequest :md5sum-) "570658227795c638a4cd95466c1e01dc")
(setf (get obs_service::service_exampleRequest :datatype-) "obs_service/service_exampleRequest")
(setf (get obs_service::service_exampleRequest :definition-)
      "int32 flag 

---

string go

")

(setf (get obs_service::service_exampleResponse :md5sum-) "570658227795c638a4cd95466c1e01dc")
(setf (get obs_service::service_exampleResponse :datatype-) "obs_service/service_exampleResponse")
(setf (get obs_service::service_exampleResponse :definition-)
      "int32 flag 

---

string go

")



(provide :obs_service/service_example "570658227795c638a4cd95466c1e01dc")



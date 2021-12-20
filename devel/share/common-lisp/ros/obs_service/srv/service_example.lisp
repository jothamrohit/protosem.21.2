; Auto-generated. Do not edit!


(cl:in-package obs_service-srv)


;//! \htmlinclude service_example-request.msg.html

(cl:defclass <service_example-request> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:integer
    :initform 0))
)

(cl:defclass service_example-request (<service_example-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service_example-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service_example-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name obs_service-srv:<service_example-request> is deprecated: use obs_service-srv:service_example-request instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <service_example-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obs_service-srv:flag-val is deprecated.  Use obs_service-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service_example-request>) ostream)
  "Serializes a message object of type '<service_example-request>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service_example-request>) istream)
  "Deserializes a message object of type '<service_example-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service_example-request>)))
  "Returns string type for a service object of type '<service_example-request>"
  "obs_service/service_exampleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service_example-request)))
  "Returns string type for a service object of type 'service_example-request"
  "obs_service/service_exampleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service_example-request>)))
  "Returns md5sum for a message object of type '<service_example-request>"
  "570658227795c638a4cd95466c1e01dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service_example-request)))
  "Returns md5sum for a message object of type 'service_example-request"
  "570658227795c638a4cd95466c1e01dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service_example-request>)))
  "Returns full string definition for message of type '<service_example-request>"
  (cl:format cl:nil "int32 flag ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service_example-request)))
  "Returns full string definition for message of type 'service_example-request"
  (cl:format cl:nil "int32 flag ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service_example-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service_example-request>))
  "Converts a ROS message object to a list"
  (cl:list 'service_example-request
    (cl:cons ':flag (flag msg))
))
;//! \htmlinclude service_example-response.msg.html

(cl:defclass <service_example-response> (roslisp-msg-protocol:ros-message)
  ((go
    :reader go
    :initarg :go
    :type cl:string
    :initform ""))
)

(cl:defclass service_example-response (<service_example-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <service_example-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'service_example-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name obs_service-srv:<service_example-response> is deprecated: use obs_service-srv:service_example-response instead.")))

(cl:ensure-generic-function 'go-val :lambda-list '(m))
(cl:defmethod go-val ((m <service_example-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obs_service-srv:go-val is deprecated.  Use obs_service-srv:go instead.")
  (go m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <service_example-response>) ostream)
  "Serializes a message object of type '<service_example-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'go))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'go))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <service_example-response>) istream)
  "Deserializes a message object of type '<service_example-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'go) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'go) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<service_example-response>)))
  "Returns string type for a service object of type '<service_example-response>"
  "obs_service/service_exampleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service_example-response)))
  "Returns string type for a service object of type 'service_example-response"
  "obs_service/service_exampleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<service_example-response>)))
  "Returns md5sum for a message object of type '<service_example-response>"
  "570658227795c638a4cd95466c1e01dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'service_example-response)))
  "Returns md5sum for a message object of type 'service_example-response"
  "570658227795c638a4cd95466c1e01dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<service_example-response>)))
  "Returns full string definition for message of type '<service_example-response>"
  (cl:format cl:nil "~%string go~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'service_example-response)))
  "Returns full string definition for message of type 'service_example-response"
  (cl:format cl:nil "~%string go~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <service_example-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'go))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <service_example-response>))
  "Converts a ROS message object to a list"
  (cl:list 'service_example-response
    (cl:cons ':go (go msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'service_example)))
  'service_example-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'service_example)))
  'service_example-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'service_example)))
  "Returns string type for a service object of type '<service_example>"
  "obs_service/service_example")
; Auto-generated. Do not edit!


(cl:in-package valorant_simulation_jarif-msg)


;//! \htmlinclude yoyo.msg.html

(cl:defclass <yoyo> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass yoyo (<yoyo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <yoyo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'yoyo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name valorant_simulation_jarif-msg:<yoyo> is deprecated: use valorant_simulation_jarif-msg:yoyo instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <yoyo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader valorant_simulation_jarif-msg:num-val is deprecated.  Use valorant_simulation_jarif-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <yoyo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader valorant_simulation_jarif-msg:data-val is deprecated.  Use valorant_simulation_jarif-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <yoyo>) ostream)
  "Serializes a message object of type '<yoyo>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <yoyo>) istream)
  "Deserializes a message object of type '<yoyo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<yoyo>)))
  "Returns string type for a message object of type '<yoyo>"
  "valorant_simulation_jarif/yoyo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'yoyo)))
  "Returns string type for a message object of type 'yoyo"
  "valorant_simulation_jarif/yoyo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<yoyo>)))
  "Returns md5sum for a message object of type '<yoyo>"
  "52023ba745bc86206a9d277c7e36d0e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'yoyo)))
  "Returns md5sum for a message object of type 'yoyo"
  "52023ba745bc86206a9d277c7e36d0e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<yoyo>)))
  "Returns full string definition for message of type '<yoyo>"
  (cl:format cl:nil "int64 num~%string data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'yoyo)))
  "Returns full string definition for message of type 'yoyo"
  (cl:format cl:nil "int64 num~%string data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <yoyo>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <yoyo>))
  "Converts a ROS message object to a list"
  (cl:list 'yoyo
    (cl:cons ':num (num msg))
    (cl:cons ':data (data msg))
))

;; Auto-generated. Do not edit!


(when (boundp 'valorant_simulation_jarif::yoyo)
  (if (not (find-package "VALORANT_SIMULATION_JARIF"))
    (make-package "VALORANT_SIMULATION_JARIF"))
  (shadow 'yoyo (find-package "VALORANT_SIMULATION_JARIF")))
(unless (find-package "VALORANT_SIMULATION_JARIF::YOYO")
  (make-package "VALORANT_SIMULATION_JARIF::YOYO"))

(in-package "ROS")
;;//! \htmlinclude yoyo.msg.html


(defclass valorant_simulation_jarif::yoyo
  :super ros::object
  :slots (_num _data ))

(defmethod valorant_simulation_jarif::yoyo
  (:init
   (&key
    ((:num __num) 0)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _data (string __data))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int64 _num
    8
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get valorant_simulation_jarif::yoyo :md5sum-) "52023ba745bc86206a9d277c7e36d0e6")
(setf (get valorant_simulation_jarif::yoyo :datatype-) "valorant_simulation_jarif/yoyo")
(setf (get valorant_simulation_jarif::yoyo :definition-)
      "int64 num
string data
")



(provide :valorant_simulation_jarif/yoyo "52023ba745bc86206a9d277c7e36d0e6")



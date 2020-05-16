(defun f (lst) 
    (if (null lst)
        0
        (+ 1 (f (cdr lst)))))

(defun read-list ()
    (let ((n (read *standard-input* nil)))
        (if (null n)
            nil
            (cons n (read-list)))))

(format t "~d~%" (f (read-list)))
(quit)

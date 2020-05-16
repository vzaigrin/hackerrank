(defun f (lst)
    (reduce '+ (remove-if-not #'oddp lst)))

(defun read-list ()
    (let ((n (read *standard-input* nil)))
        (if (null n)
            nil
            (cons n (read-list)))))

(format t "~d~%" (f (read-list)))
(quit)

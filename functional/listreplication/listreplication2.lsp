(defun f (n lst) 
    (if (null lst)
        lst
        (append
         (loop repeat n collect (car lst))
         (f n (cdr lst)))))

(defun read-list ()
    (let ((n (read *standard-input* nil)))
        (if (null n)
            nil
            (cons n (read-list)))))

(format t "~{~d~%~}" (f (read) (read-list)))
(quit)

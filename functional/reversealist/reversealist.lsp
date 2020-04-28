(defun f (lst)
    (if (null lst)
        lst
        (append (f (cdr lst)) (list (car lst)))))

(defun read-list ()
    (let ((n (read *standard-input* nil)))
        (if (null n)
            nil
            (cons n (read-list)))))

(format t "~{~d~%~}" (f (read-list)))
(quit)

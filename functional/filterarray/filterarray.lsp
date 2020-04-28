(defun f (delim lst)
    (let ((clst (car lst)))
         (cond
             ((null lst) lst)
             ((< clst delim) (append (list clst) (f delim (cdr lst))))
             (t (f delim (cdr lst))))))

(defun read-list ()
    (let ((n (read *standard-input* nil)))
        (if (null n)
            nil
            (cons n (read-list)))))

(format t "~{~d~%~}" (f (read) (read-list)))
(quit)

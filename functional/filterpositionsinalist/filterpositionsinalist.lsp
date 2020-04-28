(defun f (lst)
    (loop for l in lst
          for i from 1 to (length lst)
          if (evenp i)
          collect l))

(defun read-list ()
    (let ((n (read *standard-input* nil)))
        (if (null n)
            nil
            (cons n (read-list)))))

(format t "~{~d~%~}" (f (read-list)))
(quit)

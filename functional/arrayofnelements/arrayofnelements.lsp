(defun f (n) 
    (loop for i from 1 to n collect i))
    
(format t "~{~d~%~}" (f (read)))
(quit)

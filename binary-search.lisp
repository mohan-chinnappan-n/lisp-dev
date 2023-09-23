(defun binary-search (arr target)
  (let ((low 0)
        (high (1- (length arr))))
    (loop
      (when (> low high)
        (return nil))
      (let ((mid (floor (+ low high) 2)))
        (cond
          ((= (aref arr mid) target) mid)
          ((< (aref arr mid) target) (setq low (1+ mid)))
          (t (setq high (1- mid))))))))
;; Example usage:
(let ((sorted-array #(1 3 5 7 9 11 13 15 17 19))) ; Define a sorted array
  (let ((target 13)) ; Element to search for
    (let ((result (binary-search sorted-array target)))
      (if result
          (format t "Element ~a found at index ~a.~%" target result)
          (format t "Element ~a not found in the array.~%" target)))))

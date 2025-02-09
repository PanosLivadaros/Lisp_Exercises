(defun info (n)
  (if (/= n 4)  ;; Stop recursion when n = 4
      (progn
        (cond
          ((= n 1) (format t "Gaudi's work is admired by architects around the World as being one of the most unique and distinctive architectural styles.~%"))
          ((= n 2) (format t "His work has greatly influenced the face of Barcelona architecture and you will see stunning examples of Gaudi's work all around the city centre.~%"))
          ((= n 3) (format t "The most famous works by Antoni Gaudi are Casa Vicens, Park Guell, the restoration of Mallorca Cathedral, the church on the Guell Estate, Casa Batllo, La Pedrera, and last but not least, the Basilica de la Sagrada Familia, also known as the Sagrada Familia.~%"))
        )
        (incf n)
        (info n)))  ;; Recursive call with incremented n
)

(loop for i from 1 to 3 do
  (cond
    ((= i 1) (format t "Gaudi's work is admired by architects around the World as being one of the most unique and distinctive architectural styles.~%"))
    ((= i 2) (format t "His work has greatly influenced the face of Barcelona architecture and you will see stunning examples of Gaudi's work all around the city centre.~%"))
    ((= i 3) (format t "The most famous works by Antoni Gaudi are Casa Vicens, Park Guell, the restoration of Mallorca Cathedral, the church on the Guell Estate, Casa Batllo, La Pedrera, and last but not least, the Basilica de la Sagrada Familia, also known as the Sagrada Familia.~%"))
  ))

(defparameter n 1)
(info n) ;; Starts the recursive function

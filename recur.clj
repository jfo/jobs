; def p(n)
;   if n == 1
;     return 1
;   else
;     return (n/2) + p(n - 1)
;   end
; end


(defn p [n]
  (if (= n 2)
    1
    (+ (/ n 2) (p (- n 1)))
    )
  )

(p 5)
(p 100)
(p 100)
(p 100)



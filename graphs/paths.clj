(defn step [[x y]]
  [[(inc x) y] [x (inc y)]])

(defn in [ [x y] [a b] ]
  (and
    (<= x a)
    (<= y b)))

(defn count-paths [origin final]
  (let [ next-step (filter #(in % final) (step origin))]
    (condp = (count next-step)
      0 1
      1 (count-paths (first next-step) final)
      2 (+ (count-paths (first next-step) final) (count-paths (last next-step) final)))))



(step [0 0])
(in [1 0] [1 1])
(in [8 0] [1 1])

(count-paths [0 0] [2 2])
(count-paths [0 0] [20 20])

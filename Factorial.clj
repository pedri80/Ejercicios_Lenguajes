(ns Factorial)
(defn factorial [x]
      (cond (= x 1)
            1
            :else x 1
            (* (factorial (- x 1)) x)
            )
      )
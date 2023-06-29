(ns bird-watcher)

(def last-week (vector 0 2 5 3 7 8 4))

(def today last)

(defn inc-bird [birds]
  (-> birds
      pop
      (conj (-> birds today inc))))

(defn day-without-birds? [birds]
  (not (every? pos? birds)))

(defn n-days-count [birds n]
  (->> birds
       (take n)
       (reduce +)))

(defn busy-days [birds]
  (->> birds
       (remove #(< % 5))
       count))

(defn odd-week? 
  [birds]
  (= birds (take (count birds) (cycle [1 0]))))

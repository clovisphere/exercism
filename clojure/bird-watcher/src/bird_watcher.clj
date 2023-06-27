(ns bird-watcher)

(def last-week (vector 0 2 5 3 7 8 4))

(defn today 
  [birds]
  (last birds))

(defn inc-bird 
  [birds]
  (conj (pop birds) (inc (last birds))))

(defn day-without-birds?
  [birds]
  (some? (some #(= % 0) birds)))

(defn n-days-count 
  [birds n]
  (reduce + (subvec birds 0 n)))

(defn busy-days 
  [birds]
  (count (filter #(>= % 5) birds)))

(defn odd-week? 
  [birds]
  (= birds (take (count birds) (cycle [1 0]))))

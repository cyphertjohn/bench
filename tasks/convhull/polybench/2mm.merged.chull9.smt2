(declare-const delta_j Int)
(declare-const delta_i Int)
(assert (exists
         ((|i'?1| Int) (|S1,0?2| Real) (|j'?3| Int) (KSUM1?4 Int)
            (|K1,0?5| Int) (K?6 Int) (|j'?7| Int) (nl?8 Int) (j?9 Int)
            (ni?10 Int) (i?11 Int))
         (and (<= (- i?11) 0) (< (+ (- ni?10) i?11) 0) (<= (- K?6) 0)
                (<= (- |K1,0?5|) 0) (= (+ |K1,0?5| (- K?6)) 0)
                (<= (+ KSUM1?4 (- K?6)) 0)
                (= (+ (- |S1,0?2|) |j'?3| (- |K1,0?5|)) 0)
                (= (+ (- KSUM1?4) |K1,0?5|) 0) (= |S1,0?2| 0)
                (or (and (= K?6 0) (= (- |j'?3|) 0))
                      (and (<= (+ (- K?6) 1) 0) (<= (+ (- nl?8) 1) 0)
                             (<= (+ (- nl?8) |j'?3|) 0)
                             (<= (+ (- |j'?3|) 1) 0)))
                (= (+ |j'?3| (- K?6)) 0) (<= (- K?6) 0) (<= (- |j'?3|) 0)
                (<= (+ nl?8 (- |j'?3|)) 0) (= (+ |j'?7| (- |j'?3|)) 0)
                (= (+ |i'?1| (- i?11) -1) 0) (= delta_i (+ |i'?1| (- i?11)))
                (= delta_j (+ |j'?7| (- j?9))))))
(check-sat)
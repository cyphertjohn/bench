(declare-const delta_i Int)
(declare-const delta_j Int)
(assert (exists
         ((|S1,0?1| Real) (|j'?2| Int) (KSUM1?3 Int) (|K1,0?4| Int) (K?5 Int)
            (|i'?6| Int) (|j'?7| Int) (nk?8 Int) (j?9 Int) (ni?10 Int)
            (i?11 Int))
         (and (<= (- i?11) 0) (< (+ (- ni?10) i?11) 0) (<= (- K?5) 0)
                (<= (- |K1,0?4|) 0) (= (+ |K1,0?4| (- K?5)) 0)
                (<= (+ KSUM1?3 (- K?5)) 0)
                (= (+ (- |S1,0?1|) |j'?2| (- |K1,0?4|)) 0)
                (= (+ (- KSUM1?3) |K1,0?4|) 0) (= |S1,0?1| 0)
                (or (and (= K?5 0) (= (- |j'?2|) 0))
                      (and (<= (+ (- K?5) 1) 0) (<= (+ (- nk?8) 1) 0)
                             (<= (+ (- nk?8) |j'?2|) 0)
                             (<= (+ (- |j'?2|) 1) 0)))
                (= (+ |j'?2| (- K?5)) 0) (<= (- K?5) 0) (<= (- |j'?2|) 0)
                (<= (+ nk?8 (- |j'?2|)) 0) (= (+ |j'?7| (- |j'?2|)) 0)
                (= (+ |i'?6| (- i?11) -1) 0) (= delta_i (+ |i'?6| (- i?11)))
                (= delta_j (+ |j'?7| (- j?9))))))
(check-sat)
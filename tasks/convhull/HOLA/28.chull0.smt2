(declare-const delta_x Int)
(declare-const delta_tmp Int)
(declare-const delta_y Int)
(assert (exists
         ((|tmp'?1| Int) (|y'?2| Int) (|x'?3| Int) (havoc?4 Int) (y?5 Int)
            (x?6 Int) (tmp?7 Int))
         (and (<= (- y?5) 0) (<= (- x?6) 0) (= (+ (- x?6) y?5) 0)
                (< (+ x?6 -100000) 0) (or (< havoc?4 0) (< 0 havoc?4))
                (= (+ |tmp'?1| (- havoc?4)) 0) (= (+ |y'?2| (- y?5) -1) 0)
                (= (+ |x'?3| (- x?6) -1) 0) (= delta_x (+ |x'?3| (- x?6)))
                (= delta_y (+ |y'?2| (- y?5)))
                (= delta_tmp (+ |tmp'?1| (- tmp?7))))))
(check-sat)
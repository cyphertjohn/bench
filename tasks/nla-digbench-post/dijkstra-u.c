/* Compute the floor of the square root, by Dijkstra */

extern void abort(void);
extern void __assert_fail(const char *, const char *, unsigned int, const char *) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
void reach_error() { __assert_fail("0", "dijkstra-u.c", 5, "reach_error"); }
extern unsigned int __VERIFIER_nondet_uint(void);
extern void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) {
    if (!(cond)) {
    ERROR:
        {reach_error();}
    }
    return;
}

int main() {
    unsigned int n, p, q, r, h;

    n = __VERIFIER_nondet_uint();
    assume_abort_if_not(n < 4294967295 / 4);  // Avoid non-terminating loop

    p = 0;
    q = 1;
    r = n;
    h = 0;
    while (1) {
        if (!(q <= n))
            break;

        q = 4 * q;
    }
    //q == 4^n

    while (1) {
        if (!(q != 1))
            break;

        q = q / 4;
        h = p + q;
        p = p / 2;
        if (r >= h) {
            p = p + q;
            r = r - h;
        }
    }
    __VERIFIER_assert(h*h*h - 12*h*n + 16*n*p + 12*h*r - 16*p*r - h - 4*p == 0);
    __VERIFIER_assert(p*p - n + r == 0);
    __VERIFIER_assert(h*h*p - 4*h*n + 4*n*p + 4*h*r - 4*p*r - p == 0);
    return 0;
}

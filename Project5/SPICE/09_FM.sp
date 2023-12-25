* FM voltage source

v1 a 0 SFFM(0.5 1 1M 10 1K 0 0)
r1 a 0 1K
.tran 1us 5ms
.plot tran v(a)
.end

* AM voltage source

v1 a 0 AM(0.5 1 20K 1MEG 0)
r1 a 0 1K
.tran 10ns 0.1ms
.plot tran v(a)
.end

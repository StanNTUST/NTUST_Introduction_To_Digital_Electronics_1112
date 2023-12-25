* Transient analysis on an LC circuit network

c1 a 0 6u ic=10
* NOTICE: The initial condition could be set by using the "ic" option.
* NOTICE: In capacitor, the initial condition is the initial (time zero) value of capacitor voltage.
l1 a 0 4u ic=70
* NOTICE: In inductor, the initial condition is the initial (time zero) value of inductor current.
.tran 0.1u 100u uic
* NOTICE: In transient analysis, the "uic" option is required when we use "initial condition".
.plot tran v(a) i(l1)
.end

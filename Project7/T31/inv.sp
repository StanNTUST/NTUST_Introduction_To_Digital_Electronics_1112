************************************************************************
* auCdl Netlist:
* 
* Library Name:  inv
* Top Cell Name: INV
* View Name:     schematic
* Netlisted on:  May 22 22:24:51 2023
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM
.lib 'hspice.lib' tt
.GLOBAL vdd!
+        vss!

*.PIN vdd!
*+    vss!

************************************************************************
* Library Name: inv
* Cell Name:    INV
* View Name:    schematic
************************************************************************

.SUBCKT INV input output
*.PININFO input:I output:O
MM0 output input vdd! vdd! Pch m=1 l=180.0n w=2.0u
MM1 output input vss! vss! Nch m=1 l=180.0n w=1.0u
.ENDS

XINV input output inv

Vvdd vdd! 0 1.8v
Vvss vss! 0 0v
vin input 0 pulse(0v 1.8v 0ns 20ps 20ps 2ns 4ns)

.measure t_rise
+TRIG v(output) VAL=0.18v RISE=1
+TARG v(output) VAL=1.62v RISE=1

.measure t_fall
+TRIG v(output) VAL=1.62v FALL=1
+TARG v(output) VAL=0.18v FALL=1

.measure t_propagation_r
+TRIG v(input) VAL=0.9v FALL=1
+TARG v(output) VAL=0.9v RISE=1

.measure t_propagation_f
+TRIG v(input) VAL=0.9v RISE=1
+TARG v(output) VAL=0.9v FALL=1

.option post
.tran 1p 20n
.END



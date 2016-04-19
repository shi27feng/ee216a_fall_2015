# UCLA EE216A project in fall 2015:
# 32-channel ADC Non-linearity Correction Engine

Number of ADC channels: 32
ADC raw resolution: 21 bits
ENOB: 14 bits
ADC sampling rate: 6 KHz
System clock frequency: 6.144 MHz

In the first plan, I started with one channel correction engine and then used excel and python to generate the other 31 channels that are identical to the first one channel. 2*32 SMC_fp (synphony model compiler floating point) adders and 2*32 SMC_fp multipliers are used. After synthesis, area is 1.92e+06 um^2 and power is 2.35e+06 uW.

In the second plan, interleaving is applied. Since adc sampling interval is 1000 clk and for one channel, computation only takes about 200 clk, interleaving using pipelining is actually applicable. 32 channel adc sampled data forms a data stream that keeps fed into the pipeline one by one. In this case, only 2 SMC_fp adders and 2 SMC_fp multipliers are used. After synthesis, area is 1.96e+05 um^2 and power is 2.12e+05 uW. Compared with the first plan, both area and power are reduced by 10 times.

Further, in the third plan, based on the second plan, time multiplexing is applied. In this case, only one adder and one multiplier are used. Also, clock gating is applied to deactivate modules to reduce switching power. After synthesis, area is 1.67e+05 um^2 and power is 1.68e+05 uW. Both area and power are further reduced.

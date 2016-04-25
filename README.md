# UCLA EE216A project in fall 2015:
# 32-channel ADC Non-linearity Correction Engine

Number of ADC channels: 32

ADC raw resolution: 21 bits

ENOB: 14 bits

ADC range: -100 ~ 100 mV

ADC sampling rate: 6 KHz

System clock frequency: 6.144 MHz


In the first plan, I started with one channel correction engine and then used excel and python to generate the other 31 channels that are identical to the first one channel. 64 SMC_fp (synphony model compiler floating point) adders and 64 SMC_fp multipliers are used. After synthesis, area is 1.92e+06 um^2 and power is 2.35e+06 uW.

In the second plan, interleaving is applied. Since adc sampling interval is 1024 clk and for one channel, computation only takes about 200 clk, interleaving using pipelining is actually applicable. 32 channel adc sampled data forms a data stream that keeps fed into the pipeline one by one. In this case, only 2 SMC_fp adders and 2 SMC_fp multipliers are used. After synthesis, area is 1.96e+05 um^2 and power is 2.12e+05 uW. Compared with the first plan, both area and power are reduced by 10 times.

Further, in the third plan, based on the second plan, time multiplexing and clock gating (Dynamic power is very small compared to static power, so clock gating actually does not gain much.) are applied. In this case, only one adder and one multiplier are used. Also, clock gating is applied to deactivate modules to reduce switching power. After synthesis, area is 1.76e+05 um^2 and power is 1.90e+05 uW. Both area and power are further reduced.

Because the leakage power is very huge comparing to dynamic power, power gating is applied. The idea is that from the simulation waveform in ModelSim, I found that the interleaved design only take around 400 clock ticks among 1024 clock ticks, which means we have 600 non-active clock ticks. If we shut down the engine during that non-active window, power will be saved. After synthesis, area is 2.12e+05 um^2 and power is 6.50e+03 uW. Area is increased by 10% but power is reduced by 20+ times.


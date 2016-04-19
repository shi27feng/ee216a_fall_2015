module NLC_1ch(
    input clk,
    input reset,
	input srdyi,
	output [20:0] ch0_x_lin, ch1_x_lin, ch2_x_lin, ch3_x_lin, ch4_x_lin, ch5_x_lin, ch6_x_lin, ch7_x_lin, ch8_x_lin, ch9_x_lin, ch10_x_lin, ch11_x_lin, ch12_x_lin, ch13_x_lin, ch14_x_lin, ch15_x_lin, ch16_x_lin, ch17_x_lin, ch18_x_lin, ch19_x_lin, ch20_x_lin, ch21_x_lin, ch22_x_lin, ch23_x_lin, ch24_x_lin, ch25_x_lin, ch26_x_lin, ch27_x_lin, ch28_x_lin, ch29_x_lin, ch30_x_lin, ch31_x_lin,
	input [20:0] ch0_x_adc, ch1_x_adc, ch2_x_adc, ch3_x_adc, ch4_x_adc, ch5_x_adc, ch6_x_adc, ch7_x_adc, ch8_x_adc, ch9_x_adc, ch10_x_adc, ch11_x_adc, ch12_x_adc, ch13_x_adc, ch14_x_adc, ch15_x_adc, ch16_x_adc, ch17_x_adc, ch18_x_adc, ch19_x_adc, ch20_x_adc, ch21_x_adc, ch22_x_adc, ch23_x_adc, ch24_x_adc, ch25_x_adc, ch26_x_adc, ch27_x_adc, ch28_x_adc, ch29_x_adc, ch30_x_adc, ch31_x_adc,
	input [19:0] ch0_section_limit, ch1_section_limit, ch2_section_limit, ch3_section_limit, ch4_section_limit, ch5_section_limit, ch6_section_limit, ch7_section_limit, ch8_section_limit, ch9_section_limit, ch10_section_limit, ch11_section_limit, ch12_section_limit, ch13_section_limit, ch14_section_limit, ch15_section_limit, ch16_section_limit, ch17_section_limit, ch18_section_limit, ch19_section_limit, ch20_section_limit, ch21_section_limit, ch22_section_limit, ch23_section_limit, ch24_section_limit, ch25_section_limit, ch26_section_limit, ch27_section_limit, ch28_section_limit, ch29_section_limit, ch30_section_limit, ch31_section_limit,
	input [31:0] ch0_recip_stdev_4, ch1_recip_stdev_4, ch2_recip_stdev_4, ch3_recip_stdev_4, ch4_recip_stdev_4, ch5_recip_stdev_4, ch6_recip_stdev_4, ch7_recip_stdev_4, ch8_recip_stdev_4, ch9_recip_stdev_4, ch10_recip_stdev_4, ch11_recip_stdev_4, ch12_recip_stdev_4, ch13_recip_stdev_4, ch14_recip_stdev_4, ch15_recip_stdev_4, ch16_recip_stdev_4, ch17_recip_stdev_4, ch18_recip_stdev_4, ch19_recip_stdev_4, ch20_recip_stdev_4, ch21_recip_stdev_4, ch22_recip_stdev_4, ch23_recip_stdev_4, ch24_recip_stdev_4, ch25_recip_stdev_4, ch26_recip_stdev_4, ch27_recip_stdev_4, ch28_recip_stdev_4, ch29_recip_stdev_4, ch30_recip_stdev_4, ch31_recip_stdev_4,
	input [31:0] ch0_recip_stdev_3, ch1_recip_stdev_3, ch2_recip_stdev_3, ch3_recip_stdev_3, ch4_recip_stdev_3, ch5_recip_stdev_3, ch6_recip_stdev_3, ch7_recip_stdev_3, ch8_recip_stdev_3, ch9_recip_stdev_3, ch10_recip_stdev_3, ch11_recip_stdev_3, ch12_recip_stdev_3, ch13_recip_stdev_3, ch14_recip_stdev_3, ch15_recip_stdev_3, ch16_recip_stdev_3, ch17_recip_stdev_3, ch18_recip_stdev_3, ch19_recip_stdev_3, ch20_recip_stdev_3, ch21_recip_stdev_3, ch22_recip_stdev_3, ch23_recip_stdev_3, ch24_recip_stdev_3, ch25_recip_stdev_3, ch26_recip_stdev_3, ch27_recip_stdev_3, ch28_recip_stdev_3, ch29_recip_stdev_3, ch30_recip_stdev_3, ch31_recip_stdev_3,
	input [31:0] ch0_recip_stdev_2, ch1_recip_stdev_2, ch2_recip_stdev_2, ch3_recip_stdev_2, ch4_recip_stdev_2, ch5_recip_stdev_2, ch6_recip_stdev_2, ch7_recip_stdev_2, ch8_recip_stdev_2, ch9_recip_stdev_2, ch10_recip_stdev_2, ch11_recip_stdev_2, ch12_recip_stdev_2, ch13_recip_stdev_2, ch14_recip_stdev_2, ch15_recip_stdev_2, ch16_recip_stdev_2, ch17_recip_stdev_2, ch18_recip_stdev_2, ch19_recip_stdev_2, ch20_recip_stdev_2, ch21_recip_stdev_2, ch22_recip_stdev_2, ch23_recip_stdev_2, ch24_recip_stdev_2, ch25_recip_stdev_2, ch26_recip_stdev_2, ch27_recip_stdev_2, ch28_recip_stdev_2, ch29_recip_stdev_2, ch30_recip_stdev_2, ch31_recip_stdev_2,
	input [31:0] ch0_recip_stdev_1, ch1_recip_stdev_1, ch2_recip_stdev_1, ch3_recip_stdev_1, ch4_recip_stdev_1, ch5_recip_stdev_1, ch6_recip_stdev_1, ch7_recip_stdev_1, ch8_recip_stdev_1, ch9_recip_stdev_1, ch10_recip_stdev_1, ch11_recip_stdev_1, ch12_recip_stdev_1, ch13_recip_stdev_1, ch14_recip_stdev_1, ch15_recip_stdev_1, ch16_recip_stdev_1, ch17_recip_stdev_1, ch18_recip_stdev_1, ch19_recip_stdev_1, ch20_recip_stdev_1, ch21_recip_stdev_1, ch22_recip_stdev_1, ch23_recip_stdev_1, ch24_recip_stdev_1, ch25_recip_stdev_1, ch26_recip_stdev_1, ch27_recip_stdev_1, ch28_recip_stdev_1, ch29_recip_stdev_1, ch30_recip_stdev_1, ch31_recip_stdev_1,
	input [31:0] ch0_neg_mean_4, ch1_neg_mean_4, ch2_neg_mean_4, ch3_neg_mean_4, ch4_neg_mean_4, ch5_neg_mean_4, ch6_neg_mean_4, ch7_neg_mean_4, ch8_neg_mean_4, ch9_neg_mean_4, ch10_neg_mean_4, ch11_neg_mean_4, ch12_neg_mean_4, ch13_neg_mean_4, ch14_neg_mean_4, ch15_neg_mean_4, ch16_neg_mean_4, ch17_neg_mean_4, ch18_neg_mean_4, ch19_neg_mean_4, ch20_neg_mean_4, ch21_neg_mean_4, ch22_neg_mean_4, ch23_neg_mean_4, ch24_neg_mean_4, ch25_neg_mean_4, ch26_neg_mean_4, ch27_neg_mean_4, ch28_neg_mean_4, ch29_neg_mean_4, ch30_neg_mean_4, ch31_neg_mean_4,
	input [31:0] ch0_neg_mean_3, ch1_neg_mean_3, ch2_neg_mean_3, ch3_neg_mean_3, ch4_neg_mean_3, ch5_neg_mean_3, ch6_neg_mean_3, ch7_neg_mean_3, ch8_neg_mean_3, ch9_neg_mean_3, ch10_neg_mean_3, ch11_neg_mean_3, ch12_neg_mean_3, ch13_neg_mean_3, ch14_neg_mean_3, ch15_neg_mean_3, ch16_neg_mean_3, ch17_neg_mean_3, ch18_neg_mean_3, ch19_neg_mean_3, ch20_neg_mean_3, ch21_neg_mean_3, ch22_neg_mean_3, ch23_neg_mean_3, ch24_neg_mean_3, ch25_neg_mean_3, ch26_neg_mean_3, ch27_neg_mean_3, ch28_neg_mean_3, ch29_neg_mean_3, ch30_neg_mean_3, ch31_neg_mean_3,
	input [31:0] ch0_neg_mean_2, ch1_neg_mean_2, ch2_neg_mean_2, ch3_neg_mean_2, ch4_neg_mean_2, ch5_neg_mean_2, ch6_neg_mean_2, ch7_neg_mean_2, ch8_neg_mean_2, ch9_neg_mean_2, ch10_neg_mean_2, ch11_neg_mean_2, ch12_neg_mean_2, ch13_neg_mean_2, ch14_neg_mean_2, ch15_neg_mean_2, ch16_neg_mean_2, ch17_neg_mean_2, ch18_neg_mean_2, ch19_neg_mean_2, ch20_neg_mean_2, ch21_neg_mean_2, ch22_neg_mean_2, ch23_neg_mean_2, ch24_neg_mean_2, ch25_neg_mean_2, ch26_neg_mean_2, ch27_neg_mean_2, ch28_neg_mean_2, ch29_neg_mean_2, ch30_neg_mean_2, ch31_neg_mean_2,
	input [31:0] ch0_neg_mean_1, ch1_neg_mean_1, ch2_neg_mean_1, ch3_neg_mean_1, ch4_neg_mean_1, ch5_neg_mean_1, ch6_neg_mean_1, ch7_neg_mean_1, ch8_neg_mean_1, ch9_neg_mean_1, ch10_neg_mean_1, ch11_neg_mean_1, ch12_neg_mean_1, ch13_neg_mean_1, ch14_neg_mean_1, ch15_neg_mean_1, ch16_neg_mean_1, ch17_neg_mean_1, ch18_neg_mean_1, ch19_neg_mean_1, ch20_neg_mean_1, ch21_neg_mean_1, ch22_neg_mean_1, ch23_neg_mean_1, ch24_neg_mean_1, ch25_neg_mean_1, ch26_neg_mean_1, ch27_neg_mean_1, ch28_neg_mean_1, ch29_neg_mean_1, ch30_neg_mean_1, ch31_neg_mean_1,
	input [31:0] ch0_coeff_4_9, ch1_coeff_4_9, ch2_coeff_4_9, ch3_coeff_4_9, ch4_coeff_4_9, ch5_coeff_4_9, ch6_coeff_4_9, ch7_coeff_4_9, ch8_coeff_4_9, ch9_coeff_4_9, ch10_coeff_4_9, ch11_coeff_4_9, ch12_coeff_4_9, ch13_coeff_4_9, ch14_coeff_4_9, ch15_coeff_4_9, ch16_coeff_4_9, ch17_coeff_4_9, ch18_coeff_4_9, ch19_coeff_4_9, ch20_coeff_4_9, ch21_coeff_4_9, ch22_coeff_4_9, ch23_coeff_4_9, ch24_coeff_4_9, ch25_coeff_4_9, ch26_coeff_4_9, ch27_coeff_4_9, ch28_coeff_4_9, ch29_coeff_4_9, ch30_coeff_4_9, ch31_coeff_4_9,
	input [31:0] ch0_coeff_4_8, ch1_coeff_4_8, ch2_coeff_4_8, ch3_coeff_4_8, ch4_coeff_4_8, ch5_coeff_4_8, ch6_coeff_4_8, ch7_coeff_4_8, ch8_coeff_4_8, ch9_coeff_4_8, ch10_coeff_4_8, ch11_coeff_4_8, ch12_coeff_4_8, ch13_coeff_4_8, ch14_coeff_4_8, ch15_coeff_4_8, ch16_coeff_4_8, ch17_coeff_4_8, ch18_coeff_4_8, ch19_coeff_4_8, ch20_coeff_4_8, ch21_coeff_4_8, ch22_coeff_4_8, ch23_coeff_4_8, ch24_coeff_4_8, ch25_coeff_4_8, ch26_coeff_4_8, ch27_coeff_4_8, ch28_coeff_4_8, ch29_coeff_4_8, ch30_coeff_4_8, ch31_coeff_4_8,
	input [31:0] ch0_coeff_4_7, ch1_coeff_4_7, ch2_coeff_4_7, ch3_coeff_4_7, ch4_coeff_4_7, ch5_coeff_4_7, ch6_coeff_4_7, ch7_coeff_4_7, ch8_coeff_4_7, ch9_coeff_4_7, ch10_coeff_4_7, ch11_coeff_4_7, ch12_coeff_4_7, ch13_coeff_4_7, ch14_coeff_4_7, ch15_coeff_4_7, ch16_coeff_4_7, ch17_coeff_4_7, ch18_coeff_4_7, ch19_coeff_4_7, ch20_coeff_4_7, ch21_coeff_4_7, ch22_coeff_4_7, ch23_coeff_4_7, ch24_coeff_4_7, ch25_coeff_4_7, ch26_coeff_4_7, ch27_coeff_4_7, ch28_coeff_4_7, ch29_coeff_4_7, ch30_coeff_4_7, ch31_coeff_4_7,
	input [31:0] ch0_coeff_4_6, ch1_coeff_4_6, ch2_coeff_4_6, ch3_coeff_4_6, ch4_coeff_4_6, ch5_coeff_4_6, ch6_coeff_4_6, ch7_coeff_4_6, ch8_coeff_4_6, ch9_coeff_4_6, ch10_coeff_4_6, ch11_coeff_4_6, ch12_coeff_4_6, ch13_coeff_4_6, ch14_coeff_4_6, ch15_coeff_4_6, ch16_coeff_4_6, ch17_coeff_4_6, ch18_coeff_4_6, ch19_coeff_4_6, ch20_coeff_4_6, ch21_coeff_4_6, ch22_coeff_4_6, ch23_coeff_4_6, ch24_coeff_4_6, ch25_coeff_4_6, ch26_coeff_4_6, ch27_coeff_4_6, ch28_coeff_4_6, ch29_coeff_4_6, ch30_coeff_4_6, ch31_coeff_4_6,
	input [31:0] ch0_coeff_4_5, ch1_coeff_4_5, ch2_coeff_4_5, ch3_coeff_4_5, ch4_coeff_4_5, ch5_coeff_4_5, ch6_coeff_4_5, ch7_coeff_4_5, ch8_coeff_4_5, ch9_coeff_4_5, ch10_coeff_4_5, ch11_coeff_4_5, ch12_coeff_4_5, ch13_coeff_4_5, ch14_coeff_4_5, ch15_coeff_4_5, ch16_coeff_4_5, ch17_coeff_4_5, ch18_coeff_4_5, ch19_coeff_4_5, ch20_coeff_4_5, ch21_coeff_4_5, ch22_coeff_4_5, ch23_coeff_4_5, ch24_coeff_4_5, ch25_coeff_4_5, ch26_coeff_4_5, ch27_coeff_4_5, ch28_coeff_4_5, ch29_coeff_4_5, ch30_coeff_4_5, ch31_coeff_4_5,
	input [31:0] ch0_coeff_4_4, ch1_coeff_4_4, ch2_coeff_4_4, ch3_coeff_4_4, ch4_coeff_4_4, ch5_coeff_4_4, ch6_coeff_4_4, ch7_coeff_4_4, ch8_coeff_4_4, ch9_coeff_4_4, ch10_coeff_4_4, ch11_coeff_4_4, ch12_coeff_4_4, ch13_coeff_4_4, ch14_coeff_4_4, ch15_coeff_4_4, ch16_coeff_4_4, ch17_coeff_4_4, ch18_coeff_4_4, ch19_coeff_4_4, ch20_coeff_4_4, ch21_coeff_4_4, ch22_coeff_4_4, ch23_coeff_4_4, ch24_coeff_4_4, ch25_coeff_4_4, ch26_coeff_4_4, ch27_coeff_4_4, ch28_coeff_4_4, ch29_coeff_4_4, ch30_coeff_4_4, ch31_coeff_4_4,
	input [31:0] ch0_coeff_4_3, ch1_coeff_4_3, ch2_coeff_4_3, ch3_coeff_4_3, ch4_coeff_4_3, ch5_coeff_4_3, ch6_coeff_4_3, ch7_coeff_4_3, ch8_coeff_4_3, ch9_coeff_4_3, ch10_coeff_4_3, ch11_coeff_4_3, ch12_coeff_4_3, ch13_coeff_4_3, ch14_coeff_4_3, ch15_coeff_4_3, ch16_coeff_4_3, ch17_coeff_4_3, ch18_coeff_4_3, ch19_coeff_4_3, ch20_coeff_4_3, ch21_coeff_4_3, ch22_coeff_4_3, ch23_coeff_4_3, ch24_coeff_4_3, ch25_coeff_4_3, ch26_coeff_4_3, ch27_coeff_4_3, ch28_coeff_4_3, ch29_coeff_4_3, ch30_coeff_4_3, ch31_coeff_4_3,
	input [31:0] ch0_coeff_4_2, ch1_coeff_4_2, ch2_coeff_4_2, ch3_coeff_4_2, ch4_coeff_4_2, ch5_coeff_4_2, ch6_coeff_4_2, ch7_coeff_4_2, ch8_coeff_4_2, ch9_coeff_4_2, ch10_coeff_4_2, ch11_coeff_4_2, ch12_coeff_4_2, ch13_coeff_4_2, ch14_coeff_4_2, ch15_coeff_4_2, ch16_coeff_4_2, ch17_coeff_4_2, ch18_coeff_4_2, ch19_coeff_4_2, ch20_coeff_4_2, ch21_coeff_4_2, ch22_coeff_4_2, ch23_coeff_4_2, ch24_coeff_4_2, ch25_coeff_4_2, ch26_coeff_4_2, ch27_coeff_4_2, ch28_coeff_4_2, ch29_coeff_4_2, ch30_coeff_4_2, ch31_coeff_4_2,
	input [31:0] ch0_coeff_4_10, ch1_coeff_4_10, ch2_coeff_4_10, ch3_coeff_4_10, ch4_coeff_4_10, ch5_coeff_4_10, ch6_coeff_4_10, ch7_coeff_4_10, ch8_coeff_4_10, ch9_coeff_4_10, ch10_coeff_4_10, ch11_coeff_4_10, ch12_coeff_4_10, ch13_coeff_4_10, ch14_coeff_4_10, ch15_coeff_4_10, ch16_coeff_4_10, ch17_coeff_4_10, ch18_coeff_4_10, ch19_coeff_4_10, ch20_coeff_4_10, ch21_coeff_4_10, ch22_coeff_4_10, ch23_coeff_4_10, ch24_coeff_4_10, ch25_coeff_4_10, ch26_coeff_4_10, ch27_coeff_4_10, ch28_coeff_4_10, ch29_coeff_4_10, ch30_coeff_4_10, ch31_coeff_4_10,
	input [31:0] ch0_coeff_4_1, ch1_coeff_4_1, ch2_coeff_4_1, ch3_coeff_4_1, ch4_coeff_4_1, ch5_coeff_4_1, ch6_coeff_4_1, ch7_coeff_4_1, ch8_coeff_4_1, ch9_coeff_4_1, ch10_coeff_4_1, ch11_coeff_4_1, ch12_coeff_4_1, ch13_coeff_4_1, ch14_coeff_4_1, ch15_coeff_4_1, ch16_coeff_4_1, ch17_coeff_4_1, ch18_coeff_4_1, ch19_coeff_4_1, ch20_coeff_4_1, ch21_coeff_4_1, ch22_coeff_4_1, ch23_coeff_4_1, ch24_coeff_4_1, ch25_coeff_4_1, ch26_coeff_4_1, ch27_coeff_4_1, ch28_coeff_4_1, ch29_coeff_4_1, ch30_coeff_4_1, ch31_coeff_4_1,
	input [31:0] ch0_coeff_4_0, ch1_coeff_4_0, ch2_coeff_4_0, ch3_coeff_4_0, ch4_coeff_4_0, ch5_coeff_4_0, ch6_coeff_4_0, ch7_coeff_4_0, ch8_coeff_4_0, ch9_coeff_4_0, ch10_coeff_4_0, ch11_coeff_4_0, ch12_coeff_4_0, ch13_coeff_4_0, ch14_coeff_4_0, ch15_coeff_4_0, ch16_coeff_4_0, ch17_coeff_4_0, ch18_coeff_4_0, ch19_coeff_4_0, ch20_coeff_4_0, ch21_coeff_4_0, ch22_coeff_4_0, ch23_coeff_4_0, ch24_coeff_4_0, ch25_coeff_4_0, ch26_coeff_4_0, ch27_coeff_4_0, ch28_coeff_4_0, ch29_coeff_4_0, ch30_coeff_4_0, ch31_coeff_4_0,
	input [31:0] ch0_coeff_3_9, ch1_coeff_3_9, ch2_coeff_3_9, ch3_coeff_3_9, ch4_coeff_3_9, ch5_coeff_3_9, ch6_coeff_3_9, ch7_coeff_3_9, ch8_coeff_3_9, ch9_coeff_3_9, ch10_coeff_3_9, ch11_coeff_3_9, ch12_coeff_3_9, ch13_coeff_3_9, ch14_coeff_3_9, ch15_coeff_3_9, ch16_coeff_3_9, ch17_coeff_3_9, ch18_coeff_3_9, ch19_coeff_3_9, ch20_coeff_3_9, ch21_coeff_3_9, ch22_coeff_3_9, ch23_coeff_3_9, ch24_coeff_3_9, ch25_coeff_3_9, ch26_coeff_3_9, ch27_coeff_3_9, ch28_coeff_3_9, ch29_coeff_3_9, ch30_coeff_3_9, ch31_coeff_3_9,
	input [31:0] ch0_coeff_3_8, ch1_coeff_3_8, ch2_coeff_3_8, ch3_coeff_3_8, ch4_coeff_3_8, ch5_coeff_3_8, ch6_coeff_3_8, ch7_coeff_3_8, ch8_coeff_3_8, ch9_coeff_3_8, ch10_coeff_3_8, ch11_coeff_3_8, ch12_coeff_3_8, ch13_coeff_3_8, ch14_coeff_3_8, ch15_coeff_3_8, ch16_coeff_3_8, ch17_coeff_3_8, ch18_coeff_3_8, ch19_coeff_3_8, ch20_coeff_3_8, ch21_coeff_3_8, ch22_coeff_3_8, ch23_coeff_3_8, ch24_coeff_3_8, ch25_coeff_3_8, ch26_coeff_3_8, ch27_coeff_3_8, ch28_coeff_3_8, ch29_coeff_3_8, ch30_coeff_3_8, ch31_coeff_3_8,
	input [31:0] ch0_coeff_3_7, ch1_coeff_3_7, ch2_coeff_3_7, ch3_coeff_3_7, ch4_coeff_3_7, ch5_coeff_3_7, ch6_coeff_3_7, ch7_coeff_3_7, ch8_coeff_3_7, ch9_coeff_3_7, ch10_coeff_3_7, ch11_coeff_3_7, ch12_coeff_3_7, ch13_coeff_3_7, ch14_coeff_3_7, ch15_coeff_3_7, ch16_coeff_3_7, ch17_coeff_3_7, ch18_coeff_3_7, ch19_coeff_3_7, ch20_coeff_3_7, ch21_coeff_3_7, ch22_coeff_3_7, ch23_coeff_3_7, ch24_coeff_3_7, ch25_coeff_3_7, ch26_coeff_3_7, ch27_coeff_3_7, ch28_coeff_3_7, ch29_coeff_3_7, ch30_coeff_3_7, ch31_coeff_3_7,
	input [31:0] ch0_coeff_3_6, ch1_coeff_3_6, ch2_coeff_3_6, ch3_coeff_3_6, ch4_coeff_3_6, ch5_coeff_3_6, ch6_coeff_3_6, ch7_coeff_3_6, ch8_coeff_3_6, ch9_coeff_3_6, ch10_coeff_3_6, ch11_coeff_3_6, ch12_coeff_3_6, ch13_coeff_3_6, ch14_coeff_3_6, ch15_coeff_3_6, ch16_coeff_3_6, ch17_coeff_3_6, ch18_coeff_3_6, ch19_coeff_3_6, ch20_coeff_3_6, ch21_coeff_3_6, ch22_coeff_3_6, ch23_coeff_3_6, ch24_coeff_3_6, ch25_coeff_3_6, ch26_coeff_3_6, ch27_coeff_3_6, ch28_coeff_3_6, ch29_coeff_3_6, ch30_coeff_3_6, ch31_coeff_3_6,
	input [31:0] ch0_coeff_3_5, ch1_coeff_3_5, ch2_coeff_3_5, ch3_coeff_3_5, ch4_coeff_3_5, ch5_coeff_3_5, ch6_coeff_3_5, ch7_coeff_3_5, ch8_coeff_3_5, ch9_coeff_3_5, ch10_coeff_3_5, ch11_coeff_3_5, ch12_coeff_3_5, ch13_coeff_3_5, ch14_coeff_3_5, ch15_coeff_3_5, ch16_coeff_3_5, ch17_coeff_3_5, ch18_coeff_3_5, ch19_coeff_3_5, ch20_coeff_3_5, ch21_coeff_3_5, ch22_coeff_3_5, ch23_coeff_3_5, ch24_coeff_3_5, ch25_coeff_3_5, ch26_coeff_3_5, ch27_coeff_3_5, ch28_coeff_3_5, ch29_coeff_3_5, ch30_coeff_3_5, ch31_coeff_3_5,
	input [31:0] ch0_coeff_3_4, ch1_coeff_3_4, ch2_coeff_3_4, ch3_coeff_3_4, ch4_coeff_3_4, ch5_coeff_3_4, ch6_coeff_3_4, ch7_coeff_3_4, ch8_coeff_3_4, ch9_coeff_3_4, ch10_coeff_3_4, ch11_coeff_3_4, ch12_coeff_3_4, ch13_coeff_3_4, ch14_coeff_3_4, ch15_coeff_3_4, ch16_coeff_3_4, ch17_coeff_3_4, ch18_coeff_3_4, ch19_coeff_3_4, ch20_coeff_3_4, ch21_coeff_3_4, ch22_coeff_3_4, ch23_coeff_3_4, ch24_coeff_3_4, ch25_coeff_3_4, ch26_coeff_3_4, ch27_coeff_3_4, ch28_coeff_3_4, ch29_coeff_3_4, ch30_coeff_3_4, ch31_coeff_3_4,
	input [31:0] ch0_coeff_3_3, ch1_coeff_3_3, ch2_coeff_3_3, ch3_coeff_3_3, ch4_coeff_3_3, ch5_coeff_3_3, ch6_coeff_3_3, ch7_coeff_3_3, ch8_coeff_3_3, ch9_coeff_3_3, ch10_coeff_3_3, ch11_coeff_3_3, ch12_coeff_3_3, ch13_coeff_3_3, ch14_coeff_3_3, ch15_coeff_3_3, ch16_coeff_3_3, ch17_coeff_3_3, ch18_coeff_3_3, ch19_coeff_3_3, ch20_coeff_3_3, ch21_coeff_3_3, ch22_coeff_3_3, ch23_coeff_3_3, ch24_coeff_3_3, ch25_coeff_3_3, ch26_coeff_3_3, ch27_coeff_3_3, ch28_coeff_3_3, ch29_coeff_3_3, ch30_coeff_3_3, ch31_coeff_3_3,
	input [31:0] ch0_coeff_3_2, ch1_coeff_3_2, ch2_coeff_3_2, ch3_coeff_3_2, ch4_coeff_3_2, ch5_coeff_3_2, ch6_coeff_3_2, ch7_coeff_3_2, ch8_coeff_3_2, ch9_coeff_3_2, ch10_coeff_3_2, ch11_coeff_3_2, ch12_coeff_3_2, ch13_coeff_3_2, ch14_coeff_3_2, ch15_coeff_3_2, ch16_coeff_3_2, ch17_coeff_3_2, ch18_coeff_3_2, ch19_coeff_3_2, ch20_coeff_3_2, ch21_coeff_3_2, ch22_coeff_3_2, ch23_coeff_3_2, ch24_coeff_3_2, ch25_coeff_3_2, ch26_coeff_3_2, ch27_coeff_3_2, ch28_coeff_3_2, ch29_coeff_3_2, ch30_coeff_3_2, ch31_coeff_3_2,
	input [31:0] ch0_coeff_3_10, ch1_coeff_3_10, ch2_coeff_3_10, ch3_coeff_3_10, ch4_coeff_3_10, ch5_coeff_3_10, ch6_coeff_3_10, ch7_coeff_3_10, ch8_coeff_3_10, ch9_coeff_3_10, ch10_coeff_3_10, ch11_coeff_3_10, ch12_coeff_3_10, ch13_coeff_3_10, ch14_coeff_3_10, ch15_coeff_3_10, ch16_coeff_3_10, ch17_coeff_3_10, ch18_coeff_3_10, ch19_coeff_3_10, ch20_coeff_3_10, ch21_coeff_3_10, ch22_coeff_3_10, ch23_coeff_3_10, ch24_coeff_3_10, ch25_coeff_3_10, ch26_coeff_3_10, ch27_coeff_3_10, ch28_coeff_3_10, ch29_coeff_3_10, ch30_coeff_3_10, ch31_coeff_3_10,
	input [31:0] ch0_coeff_3_1, ch1_coeff_3_1, ch2_coeff_3_1, ch3_coeff_3_1, ch4_coeff_3_1, ch5_coeff_3_1, ch6_coeff_3_1, ch7_coeff_3_1, ch8_coeff_3_1, ch9_coeff_3_1, ch10_coeff_3_1, ch11_coeff_3_1, ch12_coeff_3_1, ch13_coeff_3_1, ch14_coeff_3_1, ch15_coeff_3_1, ch16_coeff_3_1, ch17_coeff_3_1, ch18_coeff_3_1, ch19_coeff_3_1, ch20_coeff_3_1, ch21_coeff_3_1, ch22_coeff_3_1, ch23_coeff_3_1, ch24_coeff_3_1, ch25_coeff_3_1, ch26_coeff_3_1, ch27_coeff_3_1, ch28_coeff_3_1, ch29_coeff_3_1, ch30_coeff_3_1, ch31_coeff_3_1,
	input [31:0] ch0_coeff_3_0, ch1_coeff_3_0, ch2_coeff_3_0, ch3_coeff_3_0, ch4_coeff_3_0, ch5_coeff_3_0, ch6_coeff_3_0, ch7_coeff_3_0, ch8_coeff_3_0, ch9_coeff_3_0, ch10_coeff_3_0, ch11_coeff_3_0, ch12_coeff_3_0, ch13_coeff_3_0, ch14_coeff_3_0, ch15_coeff_3_0, ch16_coeff_3_0, ch17_coeff_3_0, ch18_coeff_3_0, ch19_coeff_3_0, ch20_coeff_3_0, ch21_coeff_3_0, ch22_coeff_3_0, ch23_coeff_3_0, ch24_coeff_3_0, ch25_coeff_3_0, ch26_coeff_3_0, ch27_coeff_3_0, ch28_coeff_3_0, ch29_coeff_3_0, ch30_coeff_3_0, ch31_coeff_3_0,
	input [31:0] ch0_coeff_2_9, ch1_coeff_2_9, ch2_coeff_2_9, ch3_coeff_2_9, ch4_coeff_2_9, ch5_coeff_2_9, ch6_coeff_2_9, ch7_coeff_2_9, ch8_coeff_2_9, ch9_coeff_2_9, ch10_coeff_2_9, ch11_coeff_2_9, ch12_coeff_2_9, ch13_coeff_2_9, ch14_coeff_2_9, ch15_coeff_2_9, ch16_coeff_2_9, ch17_coeff_2_9, ch18_coeff_2_9, ch19_coeff_2_9, ch20_coeff_2_9, ch21_coeff_2_9, ch22_coeff_2_9, ch23_coeff_2_9, ch24_coeff_2_9, ch25_coeff_2_9, ch26_coeff_2_9, ch27_coeff_2_9, ch28_coeff_2_9, ch29_coeff_2_9, ch30_coeff_2_9, ch31_coeff_2_9,
	input [31:0] ch0_coeff_2_8, ch1_coeff_2_8, ch2_coeff_2_8, ch3_coeff_2_8, ch4_coeff_2_8, ch5_coeff_2_8, ch6_coeff_2_8, ch7_coeff_2_8, ch8_coeff_2_8, ch9_coeff_2_8, ch10_coeff_2_8, ch11_coeff_2_8, ch12_coeff_2_8, ch13_coeff_2_8, ch14_coeff_2_8, ch15_coeff_2_8, ch16_coeff_2_8, ch17_coeff_2_8, ch18_coeff_2_8, ch19_coeff_2_8, ch20_coeff_2_8, ch21_coeff_2_8, ch22_coeff_2_8, ch23_coeff_2_8, ch24_coeff_2_8, ch25_coeff_2_8, ch26_coeff_2_8, ch27_coeff_2_8, ch28_coeff_2_8, ch29_coeff_2_8, ch30_coeff_2_8, ch31_coeff_2_8,
	input [31:0] ch0_coeff_2_7, ch1_coeff_2_7, ch2_coeff_2_7, ch3_coeff_2_7, ch4_coeff_2_7, ch5_coeff_2_7, ch6_coeff_2_7, ch7_coeff_2_7, ch8_coeff_2_7, ch9_coeff_2_7, ch10_coeff_2_7, ch11_coeff_2_7, ch12_coeff_2_7, ch13_coeff_2_7, ch14_coeff_2_7, ch15_coeff_2_7, ch16_coeff_2_7, ch17_coeff_2_7, ch18_coeff_2_7, ch19_coeff_2_7, ch20_coeff_2_7, ch21_coeff_2_7, ch22_coeff_2_7, ch23_coeff_2_7, ch24_coeff_2_7, ch25_coeff_2_7, ch26_coeff_2_7, ch27_coeff_2_7, ch28_coeff_2_7, ch29_coeff_2_7, ch30_coeff_2_7, ch31_coeff_2_7,
	input [31:0] ch0_coeff_2_6, ch1_coeff_2_6, ch2_coeff_2_6, ch3_coeff_2_6, ch4_coeff_2_6, ch5_coeff_2_6, ch6_coeff_2_6, ch7_coeff_2_6, ch8_coeff_2_6, ch9_coeff_2_6, ch10_coeff_2_6, ch11_coeff_2_6, ch12_coeff_2_6, ch13_coeff_2_6, ch14_coeff_2_6, ch15_coeff_2_6, ch16_coeff_2_6, ch17_coeff_2_6, ch18_coeff_2_6, ch19_coeff_2_6, ch20_coeff_2_6, ch21_coeff_2_6, ch22_coeff_2_6, ch23_coeff_2_6, ch24_coeff_2_6, ch25_coeff_2_6, ch26_coeff_2_6, ch27_coeff_2_6, ch28_coeff_2_6, ch29_coeff_2_6, ch30_coeff_2_6, ch31_coeff_2_6,
	input [31:0] ch0_coeff_2_5, ch1_coeff_2_5, ch2_coeff_2_5, ch3_coeff_2_5, ch4_coeff_2_5, ch5_coeff_2_5, ch6_coeff_2_5, ch7_coeff_2_5, ch8_coeff_2_5, ch9_coeff_2_5, ch10_coeff_2_5, ch11_coeff_2_5, ch12_coeff_2_5, ch13_coeff_2_5, ch14_coeff_2_5, ch15_coeff_2_5, ch16_coeff_2_5, ch17_coeff_2_5, ch18_coeff_2_5, ch19_coeff_2_5, ch20_coeff_2_5, ch21_coeff_2_5, ch22_coeff_2_5, ch23_coeff_2_5, ch24_coeff_2_5, ch25_coeff_2_5, ch26_coeff_2_5, ch27_coeff_2_5, ch28_coeff_2_5, ch29_coeff_2_5, ch30_coeff_2_5, ch31_coeff_2_5,
	input [31:0] ch0_coeff_2_4, ch1_coeff_2_4, ch2_coeff_2_4, ch3_coeff_2_4, ch4_coeff_2_4, ch5_coeff_2_4, ch6_coeff_2_4, ch7_coeff_2_4, ch8_coeff_2_4, ch9_coeff_2_4, ch10_coeff_2_4, ch11_coeff_2_4, ch12_coeff_2_4, ch13_coeff_2_4, ch14_coeff_2_4, ch15_coeff_2_4, ch16_coeff_2_4, ch17_coeff_2_4, ch18_coeff_2_4, ch19_coeff_2_4, ch20_coeff_2_4, ch21_coeff_2_4, ch22_coeff_2_4, ch23_coeff_2_4, ch24_coeff_2_4, ch25_coeff_2_4, ch26_coeff_2_4, ch27_coeff_2_4, ch28_coeff_2_4, ch29_coeff_2_4, ch30_coeff_2_4, ch31_coeff_2_4,
	input [31:0] ch0_coeff_2_3, ch1_coeff_2_3, ch2_coeff_2_3, ch3_coeff_2_3, ch4_coeff_2_3, ch5_coeff_2_3, ch6_coeff_2_3, ch7_coeff_2_3, ch8_coeff_2_3, ch9_coeff_2_3, ch10_coeff_2_3, ch11_coeff_2_3, ch12_coeff_2_3, ch13_coeff_2_3, ch14_coeff_2_3, ch15_coeff_2_3, ch16_coeff_2_3, ch17_coeff_2_3, ch18_coeff_2_3, ch19_coeff_2_3, ch20_coeff_2_3, ch21_coeff_2_3, ch22_coeff_2_3, ch23_coeff_2_3, ch24_coeff_2_3, ch25_coeff_2_3, ch26_coeff_2_3, ch27_coeff_2_3, ch28_coeff_2_3, ch29_coeff_2_3, ch30_coeff_2_3, ch31_coeff_2_3,
	input [31:0] ch0_coeff_2_2, ch1_coeff_2_2, ch2_coeff_2_2, ch3_coeff_2_2, ch4_coeff_2_2, ch5_coeff_2_2, ch6_coeff_2_2, ch7_coeff_2_2, ch8_coeff_2_2, ch9_coeff_2_2, ch10_coeff_2_2, ch11_coeff_2_2, ch12_coeff_2_2, ch13_coeff_2_2, ch14_coeff_2_2, ch15_coeff_2_2, ch16_coeff_2_2, ch17_coeff_2_2, ch18_coeff_2_2, ch19_coeff_2_2, ch20_coeff_2_2, ch21_coeff_2_2, ch22_coeff_2_2, ch23_coeff_2_2, ch24_coeff_2_2, ch25_coeff_2_2, ch26_coeff_2_2, ch27_coeff_2_2, ch28_coeff_2_2, ch29_coeff_2_2, ch30_coeff_2_2, ch31_coeff_2_2,
	input [31:0] ch0_coeff_2_10, ch1_coeff_2_10, ch2_coeff_2_10, ch3_coeff_2_10, ch4_coeff_2_10, ch5_coeff_2_10, ch6_coeff_2_10, ch7_coeff_2_10, ch8_coeff_2_10, ch9_coeff_2_10, ch10_coeff_2_10, ch11_coeff_2_10, ch12_coeff_2_10, ch13_coeff_2_10, ch14_coeff_2_10, ch15_coeff_2_10, ch16_coeff_2_10, ch17_coeff_2_10, ch18_coeff_2_10, ch19_coeff_2_10, ch20_coeff_2_10, ch21_coeff_2_10, ch22_coeff_2_10, ch23_coeff_2_10, ch24_coeff_2_10, ch25_coeff_2_10, ch26_coeff_2_10, ch27_coeff_2_10, ch28_coeff_2_10, ch29_coeff_2_10, ch30_coeff_2_10, ch31_coeff_2_10,
	input [31:0] ch0_coeff_2_1, ch1_coeff_2_1, ch2_coeff_2_1, ch3_coeff_2_1, ch4_coeff_2_1, ch5_coeff_2_1, ch6_coeff_2_1, ch7_coeff_2_1, ch8_coeff_2_1, ch9_coeff_2_1, ch10_coeff_2_1, ch11_coeff_2_1, ch12_coeff_2_1, ch13_coeff_2_1, ch14_coeff_2_1, ch15_coeff_2_1, ch16_coeff_2_1, ch17_coeff_2_1, ch18_coeff_2_1, ch19_coeff_2_1, ch20_coeff_2_1, ch21_coeff_2_1, ch22_coeff_2_1, ch23_coeff_2_1, ch24_coeff_2_1, ch25_coeff_2_1, ch26_coeff_2_1, ch27_coeff_2_1, ch28_coeff_2_1, ch29_coeff_2_1, ch30_coeff_2_1, ch31_coeff_2_1,
	input [31:0] ch0_coeff_2_0, ch1_coeff_2_0, ch2_coeff_2_0, ch3_coeff_2_0, ch4_coeff_2_0, ch5_coeff_2_0, ch6_coeff_2_0, ch7_coeff_2_0, ch8_coeff_2_0, ch9_coeff_2_0, ch10_coeff_2_0, ch11_coeff_2_0, ch12_coeff_2_0, ch13_coeff_2_0, ch14_coeff_2_0, ch15_coeff_2_0, ch16_coeff_2_0, ch17_coeff_2_0, ch18_coeff_2_0, ch19_coeff_2_0, ch20_coeff_2_0, ch21_coeff_2_0, ch22_coeff_2_0, ch23_coeff_2_0, ch24_coeff_2_0, ch25_coeff_2_0, ch26_coeff_2_0, ch27_coeff_2_0, ch28_coeff_2_0, ch29_coeff_2_0, ch30_coeff_2_0, ch31_coeff_2_0,
	input [31:0] ch0_coeff_1_9, ch1_coeff_1_9, ch2_coeff_1_9, ch3_coeff_1_9, ch4_coeff_1_9, ch5_coeff_1_9, ch6_coeff_1_9, ch7_coeff_1_9, ch8_coeff_1_9, ch9_coeff_1_9, ch10_coeff_1_9, ch11_coeff_1_9, ch12_coeff_1_9, ch13_coeff_1_9, ch14_coeff_1_9, ch15_coeff_1_9, ch16_coeff_1_9, ch17_coeff_1_9, ch18_coeff_1_9, ch19_coeff_1_9, ch20_coeff_1_9, ch21_coeff_1_9, ch22_coeff_1_9, ch23_coeff_1_9, ch24_coeff_1_9, ch25_coeff_1_9, ch26_coeff_1_9, ch27_coeff_1_9, ch28_coeff_1_9, ch29_coeff_1_9, ch30_coeff_1_9, ch31_coeff_1_9,
	input [31:0] ch0_coeff_1_8, ch1_coeff_1_8, ch2_coeff_1_8, ch3_coeff_1_8, ch4_coeff_1_8, ch5_coeff_1_8, ch6_coeff_1_8, ch7_coeff_1_8, ch8_coeff_1_8, ch9_coeff_1_8, ch10_coeff_1_8, ch11_coeff_1_8, ch12_coeff_1_8, ch13_coeff_1_8, ch14_coeff_1_8, ch15_coeff_1_8, ch16_coeff_1_8, ch17_coeff_1_8, ch18_coeff_1_8, ch19_coeff_1_8, ch20_coeff_1_8, ch21_coeff_1_8, ch22_coeff_1_8, ch23_coeff_1_8, ch24_coeff_1_8, ch25_coeff_1_8, ch26_coeff_1_8, ch27_coeff_1_8, ch28_coeff_1_8, ch29_coeff_1_8, ch30_coeff_1_8, ch31_coeff_1_8,
	input [31:0] ch0_coeff_1_7, ch1_coeff_1_7, ch2_coeff_1_7, ch3_coeff_1_7, ch4_coeff_1_7, ch5_coeff_1_7, ch6_coeff_1_7, ch7_coeff_1_7, ch8_coeff_1_7, ch9_coeff_1_7, ch10_coeff_1_7, ch11_coeff_1_7, ch12_coeff_1_7, ch13_coeff_1_7, ch14_coeff_1_7, ch15_coeff_1_7, ch16_coeff_1_7, ch17_coeff_1_7, ch18_coeff_1_7, ch19_coeff_1_7, ch20_coeff_1_7, ch21_coeff_1_7, ch22_coeff_1_7, ch23_coeff_1_7, ch24_coeff_1_7, ch25_coeff_1_7, ch26_coeff_1_7, ch27_coeff_1_7, ch28_coeff_1_7, ch29_coeff_1_7, ch30_coeff_1_7, ch31_coeff_1_7,
	input [31:0] ch0_coeff_1_6, ch1_coeff_1_6, ch2_coeff_1_6, ch3_coeff_1_6, ch4_coeff_1_6, ch5_coeff_1_6, ch6_coeff_1_6, ch7_coeff_1_6, ch8_coeff_1_6, ch9_coeff_1_6, ch10_coeff_1_6, ch11_coeff_1_6, ch12_coeff_1_6, ch13_coeff_1_6, ch14_coeff_1_6, ch15_coeff_1_6, ch16_coeff_1_6, ch17_coeff_1_6, ch18_coeff_1_6, ch19_coeff_1_6, ch20_coeff_1_6, ch21_coeff_1_6, ch22_coeff_1_6, ch23_coeff_1_6, ch24_coeff_1_6, ch25_coeff_1_6, ch26_coeff_1_6, ch27_coeff_1_6, ch28_coeff_1_6, ch29_coeff_1_6, ch30_coeff_1_6, ch31_coeff_1_6,
	input [31:0] ch0_coeff_1_5, ch1_coeff_1_5, ch2_coeff_1_5, ch3_coeff_1_5, ch4_coeff_1_5, ch5_coeff_1_5, ch6_coeff_1_5, ch7_coeff_1_5, ch8_coeff_1_5, ch9_coeff_1_5, ch10_coeff_1_5, ch11_coeff_1_5, ch12_coeff_1_5, ch13_coeff_1_5, ch14_coeff_1_5, ch15_coeff_1_5, ch16_coeff_1_5, ch17_coeff_1_5, ch18_coeff_1_5, ch19_coeff_1_5, ch20_coeff_1_5, ch21_coeff_1_5, ch22_coeff_1_5, ch23_coeff_1_5, ch24_coeff_1_5, ch25_coeff_1_5, ch26_coeff_1_5, ch27_coeff_1_5, ch28_coeff_1_5, ch29_coeff_1_5, ch30_coeff_1_5, ch31_coeff_1_5,
	input [31:0] ch0_coeff_1_4, ch1_coeff_1_4, ch2_coeff_1_4, ch3_coeff_1_4, ch4_coeff_1_4, ch5_coeff_1_4, ch6_coeff_1_4, ch7_coeff_1_4, ch8_coeff_1_4, ch9_coeff_1_4, ch10_coeff_1_4, ch11_coeff_1_4, ch12_coeff_1_4, ch13_coeff_1_4, ch14_coeff_1_4, ch15_coeff_1_4, ch16_coeff_1_4, ch17_coeff_1_4, ch18_coeff_1_4, ch19_coeff_1_4, ch20_coeff_1_4, ch21_coeff_1_4, ch22_coeff_1_4, ch23_coeff_1_4, ch24_coeff_1_4, ch25_coeff_1_4, ch26_coeff_1_4, ch27_coeff_1_4, ch28_coeff_1_4, ch29_coeff_1_4, ch30_coeff_1_4, ch31_coeff_1_4,
	input [31:0] ch0_coeff_1_3, ch1_coeff_1_3, ch2_coeff_1_3, ch3_coeff_1_3, ch4_coeff_1_3, ch5_coeff_1_3, ch6_coeff_1_3, ch7_coeff_1_3, ch8_coeff_1_3, ch9_coeff_1_3, ch10_coeff_1_3, ch11_coeff_1_3, ch12_coeff_1_3, ch13_coeff_1_3, ch14_coeff_1_3, ch15_coeff_1_3, ch16_coeff_1_3, ch17_coeff_1_3, ch18_coeff_1_3, ch19_coeff_1_3, ch20_coeff_1_3, ch21_coeff_1_3, ch22_coeff_1_3, ch23_coeff_1_3, ch24_coeff_1_3, ch25_coeff_1_3, ch26_coeff_1_3, ch27_coeff_1_3, ch28_coeff_1_3, ch29_coeff_1_3, ch30_coeff_1_3, ch31_coeff_1_3,
	input [31:0] ch0_coeff_1_2, ch1_coeff_1_2, ch2_coeff_1_2, ch3_coeff_1_2, ch4_coeff_1_2, ch5_coeff_1_2, ch6_coeff_1_2, ch7_coeff_1_2, ch8_coeff_1_2, ch9_coeff_1_2, ch10_coeff_1_2, ch11_coeff_1_2, ch12_coeff_1_2, ch13_coeff_1_2, ch14_coeff_1_2, ch15_coeff_1_2, ch16_coeff_1_2, ch17_coeff_1_2, ch18_coeff_1_2, ch19_coeff_1_2, ch20_coeff_1_2, ch21_coeff_1_2, ch22_coeff_1_2, ch23_coeff_1_2, ch24_coeff_1_2, ch25_coeff_1_2, ch26_coeff_1_2, ch27_coeff_1_2, ch28_coeff_1_2, ch29_coeff_1_2, ch30_coeff_1_2, ch31_coeff_1_2,
	input [31:0] ch0_coeff_1_10, ch1_coeff_1_10, ch2_coeff_1_10, ch3_coeff_1_10, ch4_coeff_1_10, ch5_coeff_1_10, ch6_coeff_1_10, ch7_coeff_1_10, ch8_coeff_1_10, ch9_coeff_1_10, ch10_coeff_1_10, ch11_coeff_1_10, ch12_coeff_1_10, ch13_coeff_1_10, ch14_coeff_1_10, ch15_coeff_1_10, ch16_coeff_1_10, ch17_coeff_1_10, ch18_coeff_1_10, ch19_coeff_1_10, ch20_coeff_1_10, ch21_coeff_1_10, ch22_coeff_1_10, ch23_coeff_1_10, ch24_coeff_1_10, ch25_coeff_1_10, ch26_coeff_1_10, ch27_coeff_1_10, ch28_coeff_1_10, ch29_coeff_1_10, ch30_coeff_1_10, ch31_coeff_1_10,
	input [31:0] ch0_coeff_1_1, ch1_coeff_1_1, ch2_coeff_1_1, ch3_coeff_1_1, ch4_coeff_1_1, ch5_coeff_1_1, ch6_coeff_1_1, ch7_coeff_1_1, ch8_coeff_1_1, ch9_coeff_1_1, ch10_coeff_1_1, ch11_coeff_1_1, ch12_coeff_1_1, ch13_coeff_1_1, ch14_coeff_1_1, ch15_coeff_1_1, ch16_coeff_1_1, ch17_coeff_1_1, ch18_coeff_1_1, ch19_coeff_1_1, ch20_coeff_1_1, ch21_coeff_1_1, ch22_coeff_1_1, ch23_coeff_1_1, ch24_coeff_1_1, ch25_coeff_1_1, ch26_coeff_1_1, ch27_coeff_1_1, ch28_coeff_1_1, ch29_coeff_1_1, ch30_coeff_1_1, ch31_coeff_1_1,
	input [31:0] ch0_coeff_1_0, ch1_coeff_1_0, ch2_coeff_1_0, ch3_coeff_1_0, ch4_coeff_1_0, ch5_coeff_1_0, ch6_coeff_1_0, ch7_coeff_1_0, ch8_coeff_1_0, ch9_coeff_1_0, ch10_coeff_1_0, ch11_coeff_1_0, ch12_coeff_1_0, ch13_coeff_1_0, ch14_coeff_1_0, ch15_coeff_1_0, ch16_coeff_1_0, ch17_coeff_1_0, ch18_coeff_1_0, ch19_coeff_1_0, ch20_coeff_1_0, ch21_coeff_1_0, ch22_coeff_1_0, ch23_coeff_1_0, ch24_coeff_1_0, ch25_coeff_1_0, ch26_coeff_1_0, ch27_coeff_1_0, ch28_coeff_1_0, ch29_coeff_1_0, ch30_coeff_1_0, ch31_coeff_1_0,
	output srdyo

	// output reg [4:0] ct,
	// output reg [3:0] count,
	// output reg [20:0]	i_fp,
	// output  zsrdyo,
	// output  zsrdyo_2,
	// output [31:0] z32bits,
	// output [31:0] z32bits_1,
	// output [31:0] z32bits_2

	);

	reg [20:0]	i_fp;
	wire [31:0] o_smc;
	wire srdyo_fp_smc;
	wire [31:0] o_adder_mean;
	wire srdyo_adder_mean;

	wire [31:0] o_mult_std;
	wire srdyo_mult_std;
	wire [31:0] o_reg_1;
	wire [31:0] o_reg_2;
	wire srdyo_reg_1;
	wire srdyo_reg_2;

	wire [31:0] o_mult;
	wire srdyi_mult;
	wire srdyo_mult;
	wire [31:0] o_adder;
	wire srdyo_adder;
	reg [31:0] o_z;
	reg srdyo_z;
	reg srdyo_out;
	wire srdyo_fp;

	// reg srdyi_smc_fp;
	
	reg [1:0] section[0:31];
	reg [31:0] recip_stdev;
	reg [31:0] neg_mean;
	reg [31:0] coeff;

	reg [20:0] out[0:31];
	wire [20:0] x_lin;

	reg [4:0] ct;
	reg [3:0] count;

	// assign zsrdyo = srdyo_z;
	// assign zsrdyo_2 = srdyo;
	// assign z32bits = o_smc;
	// assign z32bits_1 = neg_mean;
	// assign z32bits_2 = section[31];


	fp_to_smc_float fp_to_smc_float (
	  .clk(clk),
	  .GlobalReset(reset),
	  .y_o_portx(o_smc),
	  .x_i(i_fp),
	  .srdyo_o(srdyo_fp_smc),
	  .srdyi_i(srdyi)
	);

	smc_float_adder add_neg_mean (
	  .clk(clk),
	  .GlobalReset(reset),
	  .x_i_porty(o_smc),
	  .y_i_porty(neg_mean),
	  .z_o_portx(o_adder_mean),
	  .srdyo_o(srdyo_adder_mean),
	  .srdyi_i(srdyo_fp_smc)
	);


	smc_float_multiplier multi_std (
	  .clk(clk),
	  .GlobalReset(reset),
	  .x_i_porty(o_adder_mean),
	  .y_i_porty(recip_stdev),
	  .z_o_portx(o_mult_std),
	  .srdyo_o(srdyo_mult_std),
	  .srdyi_i(srdyo_adder_mean)
	);

	reg_15 reg1(
	  .clk(clk),
	  .i_reg(o_mult_std),
	  .o_reg(o_reg_1),
	  .srdyi_reg(srdyo_mult_std),
	  .srdyo_reg(srdyo_reg_1)
	);

	smc_float_multiplier smc_float_multiplier (
	  .clk(clk),
	  .GlobalReset(reset),
	  .x_i_porty(o_reg_1),
	  .y_i_porty(o_reg_2),
	  .z_o_portx(o_mult),
	  .srdyo_o(srdyo_mult),
	  .srdyi_i(srdyi_mult)
	);

	smc_float_adder smc_float_adder (
	  .clk(clk),
	  .GlobalReset(reset),
	  .x_i_porty(o_mult),
	  .y_i_porty(coeff),
	  .z_o_portx(o_adder),
	  .srdyo_o(srdyo_adder),
	  .srdyi_i(srdyo_mult)
	);

	// through z_1

	reg_16 reg2(
	  .clk(clk),
	  .i_reg(o_z),
	  .o_reg(o_reg_2),
	  .srdyi_reg(srdyo_z),
	  .srdyo_reg(srdyo_reg_2)
	);

	smc_float_to_fp smc_float_to_fp (
	  .clk(clk),
	  .GlobalReset(reset),
	  .x_i_porty(o_z),
	  .y_o(x_lin),
	  .srdyo_o(srdyo_fp),
	  .srdyi_i(srdyo_z)
	);


	always @(posedge clk) begin
		if(reset || srdyi) begin
			ct <= 31;
			count <= 15;
		end
		else if(count != 13) begin
			ct <= ct + 1;
		end
		if(ct == 4)
			count <= count + 1;
		if(count == 0 || (count == 1 && ct < 15 && ct >= 5))
			o_z <= 0;	// clear up the pipeline
		else
			o_z <= o_adder;
	end

//	calculate i_fp
	always @(ct) begin
		case (ct)
			0: i_fp = ch0_x_adc;
			1: i_fp = ch1_x_adc;
			2: i_fp = ch2_x_adc;
			3: i_fp = ch3_x_adc;
			4: i_fp = ch4_x_adc;
			5: i_fp = ch5_x_adc;
			6: i_fp = ch6_x_adc;
			7: i_fp = ch7_x_adc;
			8: i_fp = ch8_x_adc;
			9: i_fp = ch9_x_adc;
			10: i_fp = ch10_x_adc;
			11: i_fp = ch11_x_adc;
			12: i_fp = ch12_x_adc;
			13: i_fp = ch13_x_adc;
			14: i_fp = ch14_x_adc;
			15: i_fp = ch15_x_adc;
			16: i_fp = ch16_x_adc;
			17: i_fp = ch17_x_adc;
			18: i_fp = ch18_x_adc;
			19: i_fp = ch19_x_adc;
			20: i_fp = ch20_x_adc;
			21: i_fp = ch21_x_adc;
			22: i_fp = ch22_x_adc;
			23: i_fp = ch23_x_adc;
			24: i_fp = ch24_x_adc;
			25: i_fp = ch25_x_adc;
			26: i_fp = ch26_x_adc;
			27: i_fp = ch27_x_adc;
			28: i_fp = ch28_x_adc;
			29: i_fp = ch29_x_adc;
			30: i_fp = ch30_x_adc;
			31: i_fp = ch31_x_adc;
			default: i_fp = ch0_x_adc;
		endcase
	end

//	section
	always @(ch0_x_adc) begin
		if (ch0_x_adc[20]==0)
			if(ch0_x_adc >= ch0_section_limit)
				section[0] = 3;
			else
				section[0] = 2;
		else
			if (~ch0_x_adc < ch0_section_limit)
				section[0] = 1;
			else
				section[0] = 0;
	end
	
	always @(ch1_x_adc) begin
		if (ch1_x_adc[20]==0)
			if(ch1_x_adc >= ch1_section_limit)
				section[1] = 3;
			else
				section[1] = 2;
		else
			if (~ch1_x_adc < ch1_section_limit)
				section[1] = 1;
			else
				section[1] = 0;
	end
	
	always @(ch2_x_adc) begin
		if (ch2_x_adc[20]==0)
			if(ch2_x_adc >= ch2_section_limit)
				section[2] = 3;
			else
				section[2] = 2;
		else
			if (~ch2_x_adc < ch2_section_limit)
				section[2] = 1;
			else
				section[2] = 0;
	end
	
	always @(ch3_x_adc) begin
		if (ch3_x_adc[20]==0)
			if(ch3_x_adc >= ch3_section_limit)
				section[3] = 3;
			else
				section[3] = 2;
		else
			if (~ch3_x_adc < ch3_section_limit)
				section[3] = 1;
			else
				section[3] = 0;
	end
	
	always @(ch4_x_adc) begin
		if (ch4_x_adc[20]==0)
			if(ch4_x_adc >= ch4_section_limit)
				section[4] = 3;
			else
				section[4] = 2;
		else
			if (~ch4_x_adc < ch4_section_limit)
				section[4] = 1;
			else
				section[4] = 0;
	end
	
	always @(ch5_x_adc) begin
		if (ch5_x_adc[20]==0)
			if(ch5_x_adc >= ch5_section_limit)
				section[5] = 3;
			else
				section[5] = 2;
		else
			if (~ch5_x_adc < ch5_section_limit)
				section[5] = 1;
			else
				section[5] = 0;
	end
	
	always @(ch6_x_adc) begin
		if (ch6_x_adc[20]==0)
			if(ch6_x_adc >= ch6_section_limit)
				section[6] = 3;
			else
				section[6] = 2;
		else
			if (~ch6_x_adc < ch6_section_limit)
				section[6] = 1;
			else
				section[6] = 0;
	end
	
	always @(ch7_x_adc) begin
		if (ch7_x_adc[20]==0)
			if(ch7_x_adc >= ch7_section_limit)
				section[7] = 3;
			else
				section[7] = 2;
		else
			if (~ch7_x_adc < ch7_section_limit)
				section[7] = 1;
			else
				section[7] = 0;
	end
	
	always @(ch8_x_adc) begin
		if (ch8_x_adc[20]==0)
			if(ch8_x_adc >= ch8_section_limit)
				section[8] = 3;
			else
				section[8] = 2;
		else
			if (~ch8_x_adc < ch8_section_limit)
				section[8] = 1;
			else
				section[8] = 0;
	end
	
	always @(ch9_x_adc) begin
		if (ch9_x_adc[20]==0)
			if(ch9_x_adc >= ch9_section_limit)
				section[9] = 3;
			else
				section[9] = 2;
		else
			if (~ch9_x_adc < ch9_section_limit)
				section[9] = 1;
			else
				section[9] = 0;
	end
	
	always @(ch10_x_adc) begin
		if (ch10_x_adc[20]==0)
			if(ch10_x_adc >= ch10_section_limit)
				section[10] = 3;
			else
				section[10] = 2;
		else
			if (~ch10_x_adc < ch10_section_limit)
				section[10] = 1;
			else
				section[10] = 0;
	end
	
	always @(ch11_x_adc) begin
		if (ch11_x_adc[20]==0)
			if(ch11_x_adc >= ch11_section_limit)
				section[11] = 3;
			else
				section[11] = 2;
		else
			if (~ch11_x_adc < ch11_section_limit)
				section[11] = 1;
			else
				section[11] = 0;
	end
	
	always @(ch12_x_adc) begin
		if (ch12_x_adc[20]==0)
			if(ch12_x_adc >= ch12_section_limit)
				section[12] = 3;
			else
				section[12] = 2;
		else
			if (~ch12_x_adc < ch12_section_limit)
				section[12] = 1;
			else
				section[12] = 0;
	end
	
	always @(ch13_x_adc) begin
		if (ch13_x_adc[20]==0)
			if(ch13_x_adc >= ch13_section_limit)
				section[13] = 3;
			else
				section[13] = 2;
		else
			if (~ch13_x_adc < ch13_section_limit)
				section[13] = 1;
			else
				section[13] = 0;
	end
	
	always @(ch14_x_adc) begin
		if (ch14_x_adc[20]==0)
			if(ch14_x_adc >= ch14_section_limit)
				section[14] = 3;
			else
				section[14] = 2;
		else
			if (~ch14_x_adc < ch14_section_limit)
				section[14] = 1;
			else
				section[14] = 0;
	end
	
	always @(ch15_x_adc) begin
		if (ch15_x_adc[20]==0)
			if(ch15_x_adc >= ch15_section_limit)
				section[15] = 3;
			else
				section[15] = 2;
		else
			if (~ch15_x_adc < ch15_section_limit)
				section[15] = 1;
			else
				section[15] = 0;
	end
	
	always @(ch16_x_adc) begin
		if (ch16_x_adc[20]==0)
			if(ch16_x_adc >= ch16_section_limit)
				section[16] = 3;
			else
				section[16] = 2;
		else
			if (~ch16_x_adc < ch16_section_limit)
				section[16] = 1;
			else
				section[16] = 0;
	end
	
	always @(ch17_x_adc) begin
		if (ch17_x_adc[20]==0)
			if(ch17_x_adc >= ch17_section_limit)
				section[17] = 3;
			else
				section[17] = 2;
		else
			if (~ch17_x_adc < ch17_section_limit)
				section[17] = 1;
			else
				section[17] = 0;
	end
	
	always @(ch18_x_adc) begin
		if (ch18_x_adc[20]==0)
			if(ch18_x_adc >= ch18_section_limit)
				section[18] = 3;
			else
				section[18] = 2;
		else
			if (~ch18_x_adc < ch18_section_limit)
				section[18] = 1;
			else
				section[18] = 0;
	end
	
	always @(ch19_x_adc) begin
		if (ch19_x_adc[20]==0)
			if(ch19_x_adc >= ch19_section_limit)
				section[19] = 3;
			else
				section[19] = 2;
		else
			if (~ch19_x_adc < ch19_section_limit)
				section[19] = 1;
			else
				section[19] = 0;
	end
	
	always @(ch20_x_adc) begin
		if (ch20_x_adc[20]==0)
			if(ch20_x_adc >= ch20_section_limit)
				section[20] = 3;
			else
				section[20] = 2;
		else
			if (~ch20_x_adc < ch20_section_limit)
				section[20] = 1;
			else
				section[20] = 0;
	end
	
	always @(ch21_x_adc) begin
		if (ch21_x_adc[20]==0)
			if(ch21_x_adc >= ch21_section_limit)
				section[21] = 3;
			else
				section[21] = 2;
		else
			if (~ch21_x_adc < ch21_section_limit)
				section[21] = 1;
			else
				section[21] = 0;
	end
	
	always @(ch22_x_adc) begin
		if (ch22_x_adc[20]==0)
			if(ch22_x_adc >= ch22_section_limit)
				section[22] = 3;
			else
				section[22] = 2;
		else
			if (~ch22_x_adc < ch22_section_limit)
				section[22] = 1;
			else
				section[22] = 0;
	end
	
	always @(ch23_x_adc) begin
		if (ch23_x_adc[20]==0)
			if(ch23_x_adc >= ch23_section_limit)
				section[23] = 3;
			else
				section[23] = 2;
		else
			if (~ch23_x_adc < ch23_section_limit)
				section[23] = 1;
			else
				section[23] = 0;
	end
	
	always @(ch24_x_adc) begin
		if (ch24_x_adc[20]==0)
			if(ch24_x_adc >= ch24_section_limit)
				section[24] = 3;
			else
				section[24] = 2;
		else
			if (~ch24_x_adc < ch24_section_limit)
				section[24] = 1;
			else
				section[24] = 0;
	end
	
	always @(ch25_x_adc) begin
		if (ch25_x_adc[20]==0)
			if(ch25_x_adc >= ch25_section_limit)
				section[25] = 3;
			else
				section[25] = 2;
		else
			if (~ch25_x_adc < ch25_section_limit)
				section[25] = 1;
			else
				section[25] = 0;
	end
	
	always @(ch26_x_adc) begin
		if (ch26_x_adc[20]==0)
			if(ch26_x_adc >= ch26_section_limit)
				section[26] = 3;
			else
				section[26] = 2;
		else
			if (~ch26_x_adc < ch26_section_limit)
				section[26] = 1;
			else
				section[26] = 0;
	end
	
	always @(ch27_x_adc) begin
		if (ch27_x_adc[20]==0)
			if(ch27_x_adc >= ch27_section_limit)
				section[27] = 3;
			else
				section[27] = 2;
		else
			if (~ch27_x_adc < ch27_section_limit)
				section[27] = 1;
			else
				section[27] = 0;
	end
	
	always @(ch28_x_adc) begin
		if (ch28_x_adc[20]==0)
			if(ch28_x_adc >= ch28_section_limit)
				section[28] = 3;
			else
				section[28] = 2;
		else
			if (~ch28_x_adc < ch28_section_limit)
				section[28] = 1;
			else
				section[28] = 0;
	end
	
	always @(ch29_x_adc) begin
		if (ch29_x_adc[20]==0)
			if(ch29_x_adc >= ch29_section_limit)
				section[29] = 3;
			else
				section[29] = 2;
		else
			if (~ch29_x_adc < ch29_section_limit)
				section[29] = 1;
			else
				section[29] = 0;
	end
	
	always @(ch30_x_adc) begin
		if (ch30_x_adc[20]==0)
			if(ch30_x_adc >= ch30_section_limit)
				section[30] = 3;
			else
				section[30] = 2;
		else
			if (~ch30_x_adc < ch30_section_limit)
				section[30] = 1;
			else
				section[30] = 0;
	end
	
	always @(ch31_x_adc) begin
		if (ch31_x_adc[20]==0)
			if(ch31_x_adc >= ch31_section_limit)
				section[31] = 3;
			else
				section[31] = 2;
		else
			if (~ch31_x_adc < ch31_section_limit)
				section[31] = 1;
			else
				section[31] = 0;
	end
	
//	neg_mean
	always @(ct) begin
		case (ct - 2)
			0: begin
				if(section[0]==0)
					neg_mean = ch0_neg_mean_1;
				else if(section[0]==1)
					neg_mean = ch0_neg_mean_2;
				else if(section[0]==2)
					neg_mean = ch0_neg_mean_3;
				else
					neg_mean = ch0_neg_mean_4;
			end
			1: begin
				if(section[1]==0)
					neg_mean = ch1_neg_mean_1;
				else if(section[1]==1)
					neg_mean = ch1_neg_mean_2;
				else if(section[1]==2)
					neg_mean = ch1_neg_mean_3;
				else
					neg_mean = ch1_neg_mean_4;
			end
			2: begin
				if(section[2]==0)
					neg_mean = ch2_neg_mean_1;
				else if(section[2]==1)
					neg_mean = ch2_neg_mean_2;
				else if(section[2]==2)
					neg_mean = ch2_neg_mean_3;
				else
					neg_mean = ch2_neg_mean_4;
			end
			3: begin
				if(section[3]==0)
					neg_mean = ch3_neg_mean_1;
				else if(section[3]==1)
					neg_mean = ch3_neg_mean_2;
				else if(section[3]==2)
					neg_mean = ch3_neg_mean_3;
				else
					neg_mean = ch3_neg_mean_4;
			end
			4: begin
				if(section[4]==0)
					neg_mean = ch4_neg_mean_1;
				else if(section[4]==1)
					neg_mean = ch4_neg_mean_2;
				else if(section[4]==2)
					neg_mean = ch4_neg_mean_3;
				else
					neg_mean = ch4_neg_mean_4;
			end
			5: begin
				if(section[5]==0)
					neg_mean = ch5_neg_mean_1;
				else if(section[5]==1)
					neg_mean = ch5_neg_mean_2;
				else if(section[5]==2)
					neg_mean = ch5_neg_mean_3;
				else
					neg_mean = ch5_neg_mean_4;
			end
			6: begin
				if(section[6]==0)
					neg_mean = ch6_neg_mean_1;
				else if(section[6]==1)
					neg_mean = ch6_neg_mean_2;
				else if(section[6]==2)
					neg_mean = ch6_neg_mean_3;
				else
					neg_mean = ch6_neg_mean_4;
			end
			7: begin
				if(section[7]==0)
					neg_mean = ch7_neg_mean_1;
				else if(section[7]==1)
					neg_mean = ch7_neg_mean_2;
				else if(section[7]==2)
					neg_mean = ch7_neg_mean_3;
				else
					neg_mean = ch7_neg_mean_4;
			end
			8: begin
				if(section[8]==0)
					neg_mean = ch8_neg_mean_1;
				else if(section[8]==1)
					neg_mean = ch8_neg_mean_2;
				else if(section[8]==2)
					neg_mean = ch8_neg_mean_3;
				else
					neg_mean = ch8_neg_mean_4;
			end
			9: begin
				if(section[9]==0)
					neg_mean = ch9_neg_mean_1;
				else if(section[9]==1)
					neg_mean = ch9_neg_mean_2;
				else if(section[9]==2)
					neg_mean = ch9_neg_mean_3;
				else
					neg_mean = ch9_neg_mean_4;
			end
			10: begin
				if(section[10]==0)
					neg_mean = ch10_neg_mean_1;
				else if(section[10]==1)
					neg_mean = ch10_neg_mean_2;
				else if(section[10]==2)
					neg_mean = ch10_neg_mean_3;
				else
					neg_mean = ch10_neg_mean_4;
			end
			11: begin
				if(section[11]==0)
					neg_mean = ch11_neg_mean_1;
				else if(section[11]==1)
					neg_mean = ch11_neg_mean_2;
				else if(section[11]==2)
					neg_mean = ch11_neg_mean_3;
				else
					neg_mean = ch11_neg_mean_4;
			end
			12: begin
				if(section[12]==0)
					neg_mean = ch12_neg_mean_1;
				else if(section[12]==1)
					neg_mean = ch12_neg_mean_2;
				else if(section[12]==2)
					neg_mean = ch12_neg_mean_3;
				else
					neg_mean = ch12_neg_mean_4;
			end
			13: begin
				if(section[13]==0)
					neg_mean = ch13_neg_mean_1;
				else if(section[13]==1)
					neg_mean = ch13_neg_mean_2;
				else if(section[13]==2)
					neg_mean = ch13_neg_mean_3;
				else
					neg_mean = ch13_neg_mean_4;
			end
			14: begin
				if(section[14]==0)
					neg_mean = ch14_neg_mean_1;
				else if(section[14]==1)
					neg_mean = ch14_neg_mean_2;
				else if(section[14]==2)
					neg_mean = ch14_neg_mean_3;
				else
					neg_mean = ch14_neg_mean_4;
			end
			15: begin
				if(section[15]==0)
					neg_mean = ch15_neg_mean_1;
				else if(section[15]==1)
					neg_mean = ch15_neg_mean_2;
				else if(section[15]==2)
					neg_mean = ch15_neg_mean_3;
				else
					neg_mean = ch15_neg_mean_4;
			end
			16: begin
				if(section[16]==0)
					neg_mean = ch16_neg_mean_1;
				else if(section[16]==1)
					neg_mean = ch16_neg_mean_2;
				else if(section[16]==2)
					neg_mean = ch16_neg_mean_3;
				else
					neg_mean = ch16_neg_mean_4;
			end
			17: begin
				if(section[17]==0)
					neg_mean = ch17_neg_mean_1;
				else if(section[17]==1)
					neg_mean = ch17_neg_mean_2;
				else if(section[17]==2)
					neg_mean = ch17_neg_mean_3;
				else
					neg_mean = ch17_neg_mean_4;
			end
			18: begin
				if(section[18]==0)
					neg_mean = ch18_neg_mean_1;
				else if(section[18]==1)
					neg_mean = ch18_neg_mean_2;
				else if(section[18]==2)
					neg_mean = ch18_neg_mean_3;
				else
					neg_mean = ch18_neg_mean_4;
			end
			19: begin
				if(section[19]==0)
					neg_mean = ch19_neg_mean_1;
				else if(section[19]==1)
					neg_mean = ch19_neg_mean_2;
				else if(section[19]==2)
					neg_mean = ch19_neg_mean_3;
				else
					neg_mean = ch19_neg_mean_4;
			end
			20: begin
				if(section[20]==0)
					neg_mean = ch20_neg_mean_1;
				else if(section[20]==1)
					neg_mean = ch20_neg_mean_2;
				else if(section[20]==2)
					neg_mean = ch20_neg_mean_3;
				else
					neg_mean = ch20_neg_mean_4;
			end
			21: begin
				if(section[21]==0)
					neg_mean = ch21_neg_mean_1;
				else if(section[21]==1)
					neg_mean = ch21_neg_mean_2;
				else if(section[21]==2)
					neg_mean = ch21_neg_mean_3;
				else
					neg_mean = ch21_neg_mean_4;
			end
			22: begin
				if(section[22]==0)
					neg_mean = ch22_neg_mean_1;
				else if(section[22]==1)
					neg_mean = ch22_neg_mean_2;
				else if(section[22]==2)
					neg_mean = ch22_neg_mean_3;
				else
					neg_mean = ch22_neg_mean_4;
			end
			23: begin
				if(section[23]==0)
					neg_mean = ch23_neg_mean_1;
				else if(section[23]==1)
					neg_mean = ch23_neg_mean_2;
				else if(section[23]==2)
					neg_mean = ch23_neg_mean_3;
				else
					neg_mean = ch23_neg_mean_4;
			end
			24: begin
				if(section[24]==0)
					neg_mean = ch24_neg_mean_1;
				else if(section[24]==1)
					neg_mean = ch24_neg_mean_2;
				else if(section[24]==2)
					neg_mean = ch24_neg_mean_3;
				else
					neg_mean = ch24_neg_mean_4;
			end
			25: begin
				if(section[25]==0)
					neg_mean = ch25_neg_mean_1;
				else if(section[25]==1)
					neg_mean = ch25_neg_mean_2;
				else if(section[25]==2)
					neg_mean = ch25_neg_mean_3;
				else
					neg_mean = ch25_neg_mean_4;
			end
			26: begin
				if(section[26]==0)
					neg_mean = ch26_neg_mean_1;
				else if(section[26]==1)
					neg_mean = ch26_neg_mean_2;
				else if(section[26]==2)
					neg_mean = ch26_neg_mean_3;
				else
					neg_mean = ch26_neg_mean_4;
			end
			27: begin
				if(section[27]==0)
					neg_mean = ch27_neg_mean_1;
				else if(section[27]==1)
					neg_mean = ch27_neg_mean_2;
				else if(section[27]==2)
					neg_mean = ch27_neg_mean_3;
				else
					neg_mean = ch27_neg_mean_4;
			end
			28: begin
				if(section[28]==0)
					neg_mean = ch28_neg_mean_1;
				else if(section[28]==1)
					neg_mean = ch28_neg_mean_2;
				else if(section[28]==2)
					neg_mean = ch28_neg_mean_3;
				else
					neg_mean = ch28_neg_mean_4;
			end
			29: begin
				if(section[29]==0)
					neg_mean = ch29_neg_mean_1;
				else if(section[29]==1)
					neg_mean = ch29_neg_mean_2;
				else if(section[29]==2)
					neg_mean = ch29_neg_mean_3;
				else
					neg_mean = ch29_neg_mean_4;
			end
			30: begin
				if(section[30]==0)
					neg_mean = ch30_neg_mean_1;
				else if(section[30]==1)
					neg_mean = ch30_neg_mean_2;
				else if(section[30]==2)
					neg_mean = ch30_neg_mean_3;
				else
					neg_mean = ch30_neg_mean_4;
			end
			default: begin
				if(section[31]==0)
					neg_mean = ch31_neg_mean_1;
				else if(section[31]==1)
					neg_mean = ch31_neg_mean_2;
				else if(section[31]==2)
					neg_mean = ch31_neg_mean_3;
				else
					neg_mean = ch31_neg_mean_4;
			end
			// default: neg_mean = ch1_neg_mean_4;

		endcase
	end

//	recip_stdev
	always @(ct) begin
		case (ct - 11)
			0: begin
				if(section[0]==0)
					recip_stdev = ch0_recip_stdev_1;
				else if(section[0]==1)
					recip_stdev = ch0_recip_stdev_2;
				else if(section[0]==2)
					recip_stdev = ch0_recip_stdev_3;
				else
					recip_stdev = ch0_recip_stdev_4;
			end
			1: begin
				if(section[1]==0)
					recip_stdev = ch1_recip_stdev_1;
				else if(section[1]==1)
					recip_stdev = ch1_recip_stdev_2;
				else if(section[1]==2)
					recip_stdev = ch1_recip_stdev_3;
				else
					recip_stdev = ch1_recip_stdev_4;
			end
			2: begin
				if(section[2]==0)
					recip_stdev = ch2_recip_stdev_1;
				else if(section[2]==1)
					recip_stdev = ch2_recip_stdev_2;
				else if(section[2]==2)
					recip_stdev = ch2_recip_stdev_3;
				else
					recip_stdev = ch2_recip_stdev_4;
			end
			3: begin
				if(section[3]==0)
					recip_stdev = ch3_recip_stdev_1;
				else if(section[3]==1)
					recip_stdev = ch3_recip_stdev_2;
				else if(section[3]==2)
					recip_stdev = ch3_recip_stdev_3;
				else
					recip_stdev = ch3_recip_stdev_4;
			end
			4: begin
				if(section[4]==0)
					recip_stdev = ch4_recip_stdev_1;
				else if(section[4]==1)
					recip_stdev = ch4_recip_stdev_2;
				else if(section[4]==2)
					recip_stdev = ch4_recip_stdev_3;
				else
					recip_stdev = ch4_recip_stdev_4;
			end
			5: begin
				if(section[5]==0)
					recip_stdev = ch5_recip_stdev_1;
				else if(section[5]==1)
					recip_stdev = ch5_recip_stdev_2;
				else if(section[5]==2)
					recip_stdev = ch5_recip_stdev_3;
				else
					recip_stdev = ch5_recip_stdev_4;
			end
			6: begin
				if(section[6]==0)
					recip_stdev = ch6_recip_stdev_1;
				else if(section[6]==1)
					recip_stdev = ch6_recip_stdev_2;
				else if(section[6]==2)
					recip_stdev = ch6_recip_stdev_3;
				else
					recip_stdev = ch6_recip_stdev_4;
			end
			7: begin
				if(section[7]==0)
					recip_stdev = ch7_recip_stdev_1;
				else if(section[7]==1)
					recip_stdev = ch7_recip_stdev_2;
				else if(section[7]==2)
					recip_stdev = ch7_recip_stdev_3;
				else
					recip_stdev = ch7_recip_stdev_4;
			end
			8: begin
				if(section[8]==0)
					recip_stdev = ch8_recip_stdev_1;
				else if(section[8]==1)
					recip_stdev = ch8_recip_stdev_2;
				else if(section[8]==2)
					recip_stdev = ch8_recip_stdev_3;
				else
					recip_stdev = ch8_recip_stdev_4;
			end
			9: begin
				if(section[9]==0)
					recip_stdev = ch9_recip_stdev_1;
				else if(section[9]==1)
					recip_stdev = ch9_recip_stdev_2;
				else if(section[9]==2)
					recip_stdev = ch9_recip_stdev_3;
				else
					recip_stdev = ch9_recip_stdev_4;
			end
			10: begin
				if(section[10]==0)
					recip_stdev = ch10_recip_stdev_1;
				else if(section[10]==1)
					recip_stdev = ch10_recip_stdev_2;
				else if(section[10]==2)
					recip_stdev = ch10_recip_stdev_3;
				else
					recip_stdev = ch10_recip_stdev_4;
			end
			11: begin
				if(section[11]==0)
					recip_stdev = ch11_recip_stdev_1;
				else if(section[11]==1)
					recip_stdev = ch11_recip_stdev_2;
				else if(section[11]==2)
					recip_stdev = ch11_recip_stdev_3;
				else
					recip_stdev = ch11_recip_stdev_4;
			end
			12: begin
				if(section[12]==0)
					recip_stdev = ch12_recip_stdev_1;
				else if(section[12]==1)
					recip_stdev = ch12_recip_stdev_2;
				else if(section[12]==2)
					recip_stdev = ch12_recip_stdev_3;
				else
					recip_stdev = ch12_recip_stdev_4;
			end
			13: begin
				if(section[13]==0)
					recip_stdev = ch13_recip_stdev_1;
				else if(section[13]==1)
					recip_stdev = ch13_recip_stdev_2;
				else if(section[13]==2)
					recip_stdev = ch13_recip_stdev_3;
				else
					recip_stdev = ch13_recip_stdev_4;
			end
			14: begin
				if(section[14]==0)
					recip_stdev = ch14_recip_stdev_1;
				else if(section[14]==1)
					recip_stdev = ch14_recip_stdev_2;
				else if(section[14]==2)
					recip_stdev = ch14_recip_stdev_3;
				else
					recip_stdev = ch14_recip_stdev_4;
			end
			15: begin
				if(section[15]==0)
					recip_stdev = ch15_recip_stdev_1;
				else if(section[15]==1)
					recip_stdev = ch15_recip_stdev_2;
				else if(section[15]==2)
					recip_stdev = ch15_recip_stdev_3;
				else
					recip_stdev = ch15_recip_stdev_4;
			end
			16: begin
				if(section[16]==0)
					recip_stdev = ch16_recip_stdev_1;
				else if(section[16]==1)
					recip_stdev = ch16_recip_stdev_2;
				else if(section[16]==2)
					recip_stdev = ch16_recip_stdev_3;
				else
					recip_stdev = ch16_recip_stdev_4;
			end
			17: begin
				if(section[17]==0)
					recip_stdev = ch17_recip_stdev_1;
				else if(section[17]==1)
					recip_stdev = ch17_recip_stdev_2;
				else if(section[17]==2)
					recip_stdev = ch17_recip_stdev_3;
				else
					recip_stdev = ch17_recip_stdev_4;
			end
			18: begin
				if(section[18]==0)
					recip_stdev = ch18_recip_stdev_1;
				else if(section[18]==1)
					recip_stdev = ch18_recip_stdev_2;
				else if(section[18]==2)
					recip_stdev = ch18_recip_stdev_3;
				else
					recip_stdev = ch18_recip_stdev_4;
			end
			19: begin
				if(section[19]==0)
					recip_stdev = ch19_recip_stdev_1;
				else if(section[19]==1)
					recip_stdev = ch19_recip_stdev_2;
				else if(section[19]==2)
					recip_stdev = ch19_recip_stdev_3;
				else
					recip_stdev = ch19_recip_stdev_4;
			end
			20: begin
				if(section[20]==0)
					recip_stdev = ch20_recip_stdev_1;
				else if(section[20]==1)
					recip_stdev = ch20_recip_stdev_2;
				else if(section[20]==2)
					recip_stdev = ch20_recip_stdev_3;
				else
					recip_stdev = ch20_recip_stdev_4;
			end
			21: begin
				if(section[21]==0)
					recip_stdev = ch21_recip_stdev_1;
				else if(section[21]==1)
					recip_stdev = ch21_recip_stdev_2;
				else if(section[21]==2)
					recip_stdev = ch21_recip_stdev_3;
				else
					recip_stdev = ch21_recip_stdev_4;
			end
			22: begin
				if(section[22]==0)
					recip_stdev = ch22_recip_stdev_1;
				else if(section[22]==1)
					recip_stdev = ch22_recip_stdev_2;
				else if(section[22]==2)
					recip_stdev = ch22_recip_stdev_3;
				else
					recip_stdev = ch22_recip_stdev_4;
			end
			23: begin
				if(section[23]==0)
					recip_stdev = ch23_recip_stdev_1;
				else if(section[23]==1)
					recip_stdev = ch23_recip_stdev_2;
				else if(section[23]==2)
					recip_stdev = ch23_recip_stdev_3;
				else
					recip_stdev = ch23_recip_stdev_4;
			end
			24: begin
				if(section[24]==0)
					recip_stdev = ch24_recip_stdev_1;
				else if(section[24]==1)
					recip_stdev = ch24_recip_stdev_2;
				else if(section[24]==2)
					recip_stdev = ch24_recip_stdev_3;
				else
					recip_stdev = ch24_recip_stdev_4;
			end
			25: begin
				if(section[25]==0)
					recip_stdev = ch25_recip_stdev_1;
				else if(section[25]==1)
					recip_stdev = ch25_recip_stdev_2;
				else if(section[25]==2)
					recip_stdev = ch25_recip_stdev_3;
				else
					recip_stdev = ch25_recip_stdev_4;
			end
			26: begin
				if(section[26]==0)
					recip_stdev = ch26_recip_stdev_1;
				else if(section[26]==1)
					recip_stdev = ch26_recip_stdev_2;
				else if(section[26]==2)
					recip_stdev = ch26_recip_stdev_3;
				else
					recip_stdev = ch26_recip_stdev_4;
			end
			27: begin
				if(section[27]==0)
					recip_stdev = ch27_recip_stdev_1;
				else if(section[27]==1)
					recip_stdev = ch27_recip_stdev_2;
				else if(section[27]==2)
					recip_stdev = ch27_recip_stdev_3;
				else
					recip_stdev = ch27_recip_stdev_4;
			end
			28: begin
				if(section[28]==0)
					recip_stdev = ch28_recip_stdev_1;
				else if(section[28]==1)
					recip_stdev = ch28_recip_stdev_2;
				else if(section[28]==2)
					recip_stdev = ch28_recip_stdev_3;
				else
					recip_stdev = ch28_recip_stdev_4;
			end
			29: begin
				if(section[29]==0)
					recip_stdev = ch29_recip_stdev_1;
				else if(section[29]==1)
					recip_stdev = ch29_recip_stdev_2;
				else if(section[29]==2)
					recip_stdev = ch29_recip_stdev_3;
				else
					recip_stdev = ch29_recip_stdev_4;
			end
			30: begin
				if(section[30]==0)
					recip_stdev = ch30_recip_stdev_1;
				else if(section[30]==1)
					recip_stdev = ch30_recip_stdev_2;
				else if(section[30]==2)
					recip_stdev = ch30_recip_stdev_3;
				else
					recip_stdev = ch30_recip_stdev_4;
			end
			default: begin
				if(section[31]==0)
					recip_stdev = ch31_recip_stdev_1;
				else if(section[31]==1)
					recip_stdev = ch31_recip_stdev_2;
				else if(section[31]==2)
					recip_stdev = ch31_recip_stdev_3;
				else
					recip_stdev = ch31_recip_stdev_4;
			end
			// default: recip_stdev = ch1_recip_stdev_1;

		endcase
	end

//	coeff
	always @(posedge clk) begin
		case (ct - 5)
			0: begin
				case(count)
					1:	begin
						if(section[0]==0)
							coeff = ch0_coeff_1_10;
						else if(section[0]==1)
							coeff = ch0_coeff_2_10;
						else if(section[0]==2)
							coeff = ch0_coeff_3_10;
						else
							coeff = ch0_coeff_4_10;
						end
					2:	begin
						if(section[0]==0)
							coeff = ch0_coeff_1_9;
						else if(section[0]==1)
							coeff = ch0_coeff_2_9;
						else if(section[0]==2)
							coeff = ch0_coeff_3_9;
						else
							coeff = ch0_coeff_4_9;
						end
					3:	begin
						if(section[0]==0)
							coeff = ch0_coeff_1_8;
						else if(section[0]==1)
							coeff = ch0_coeff_2_8;
						else if(section[0]==2)
							coeff = ch0_coeff_3_8;
						else
							coeff = ch0_coeff_4_8;
						end
					4:	begin
						if(section[0]==0)
							coeff = ch0_coeff_1_7;
						else if(section[0]==1)
							coeff = ch0_coeff_2_7;
						else if(section[0]==2)
							coeff = ch0_coeff_3_7;
						else
							coeff = ch0_coeff_4_7;
						end
					5:	begin
						if(section[0]==0)
							coeff = ch0_coeff_1_6;
						else if(section[0]==1)
							coeff = ch0_coeff_2_6;
						else if(section[0]==2)
							coeff = ch0_coeff_3_6;
						else
							coeff = ch0_coeff_4_6;
						end
					6:	begin
						if(section[0]==0)
							coeff = ch0_coeff_1_5;
						else if(section[0]==1)
							coeff = ch0_coeff_2_5;
						else if(section[0]==2)
							coeff = ch0_coeff_3_5;
						else
							coeff = ch0_coeff_4_5;
						end
					7:	begin
						if(section[0]==0)
							coeff = ch0_coeff_1_4;
						else if(section[0]==1)
							coeff = ch0_coeff_2_4;
						else if(section[0]==2)
							coeff = ch0_coeff_3_4;
						else
							coeff = ch0_coeff_4_4;
						end
					8:	begin
						if(section[0]==0)
							coeff = ch0_coeff_1_3;
						else if(section[0]==1)
							coeff = ch0_coeff_2_3;
						else if(section[0]==2)
							coeff = ch0_coeff_3_3;
						else
							coeff = ch0_coeff_4_3;
						end
					9:	begin
						if(section[0]==0)
							coeff = ch0_coeff_1_2;
						else if(section[0]==1)
							coeff = ch0_coeff_2_2;
						else if(section[0]==2)
							coeff = ch0_coeff_3_2;
						else
							coeff = ch0_coeff_4_2;
						end
					10:	begin
						if(section[0]==0)
							coeff = ch0_coeff_1_1;
						else if(section[0]==1)
							coeff = ch0_coeff_2_1;
						else if(section[0]==2)
							coeff = ch0_coeff_3_1;
						else
							coeff = ch0_coeff_4_1;
						end
					11:	begin
						if(section[0]==0)
							coeff = ch0_coeff_1_0;
						else if(section[0]==1)
							coeff = ch0_coeff_2_0;
						else if(section[0]==2)
							coeff = ch0_coeff_3_0;
						else
							coeff = ch0_coeff_4_0;
						end
				endcase
			end

			1: begin
				case(count)
					1:	begin
						if(section[1]==0)
							coeff = ch1_coeff_1_10;
						else if(section[1]==1)
							coeff = ch1_coeff_2_10;
						else if(section[1]==2)
							coeff = ch1_coeff_3_10;
						else
							coeff = ch1_coeff_4_10;
						end
					2:	begin
						if(section[1]==0)
							coeff = ch1_coeff_1_9;
						else if(section[1]==1)
							coeff = ch1_coeff_2_9;
						else if(section[1]==2)
							coeff = ch1_coeff_3_9;
						else
							coeff = ch1_coeff_4_9;
						end
					3:	begin
						if(section[1]==0)
							coeff = ch1_coeff_1_8;
						else if(section[1]==1)
							coeff = ch1_coeff_2_8;
						else if(section[1]==2)
							coeff = ch1_coeff_3_8;
						else
							coeff = ch1_coeff_4_8;
						end
					4:	begin
						if(section[1]==0)
							coeff = ch1_coeff_1_7;
						else if(section[1]==1)
							coeff = ch1_coeff_2_7;
						else if(section[1]==2)
							coeff = ch1_coeff_3_7;
						else
							coeff = ch1_coeff_4_7;
						end
					5:	begin
						if(section[1]==0)
							coeff = ch1_coeff_1_6;
						else if(section[1]==1)
							coeff = ch1_coeff_2_6;
						else if(section[1]==2)
							coeff = ch1_coeff_3_6;
						else
							coeff = ch1_coeff_4_6;
						end
					6:	begin
						if(section[1]==0)
							coeff = ch1_coeff_1_5;
						else if(section[1]==1)
							coeff = ch1_coeff_2_5;
						else if(section[1]==2)
							coeff = ch1_coeff_3_5;
						else
							coeff = ch1_coeff_4_5;
						end
					7:	begin
						if(section[1]==0)
							coeff = ch1_coeff_1_4;
						else if(section[1]==1)
							coeff = ch1_coeff_2_4;
						else if(section[1]==2)
							coeff = ch1_coeff_3_4;
						else
							coeff = ch1_coeff_4_4;
						end
					8:	begin
						if(section[1]==0)
							coeff = ch1_coeff_1_3;
						else if(section[1]==1)
							coeff = ch1_coeff_2_3;
						else if(section[1]==2)
							coeff = ch1_coeff_3_3;
						else
							coeff = ch1_coeff_4_3;
						end
					9:	begin
						if(section[1]==0)
							coeff = ch1_coeff_1_2;
						else if(section[1]==1)
							coeff = ch1_coeff_2_2;
						else if(section[1]==2)
							coeff = ch1_coeff_3_2;
						else
							coeff = ch1_coeff_4_2;
						end
					10:	begin
						if(section[1]==0)
							coeff = ch1_coeff_1_1;
						else if(section[1]==1)
							coeff = ch1_coeff_2_1;
						else if(section[1]==2)
							coeff = ch1_coeff_3_1;
						else
							coeff = ch1_coeff_4_1;
						end
					11:	begin
						if(section[1]==0)
							coeff = ch1_coeff_1_0;
						else if(section[1]==1)
							coeff = ch1_coeff_2_0;
						else if(section[1]==2)
							coeff = ch1_coeff_3_0;
						else
							coeff = ch1_coeff_4_0;
						end
				endcase
			end

			2: begin
				case(count)
					1:	begin
						if(section[2]==0)
							coeff = ch2_coeff_1_10;
						else if(section[2]==1)
							coeff = ch2_coeff_2_10;
						else if(section[2]==2)
							coeff = ch2_coeff_3_10;
						else
							coeff = ch2_coeff_4_10;
						end
					2:	begin
						if(section[2]==0)
							coeff = ch2_coeff_1_9;
						else if(section[2]==1)
							coeff = ch2_coeff_2_9;
						else if(section[2]==2)
							coeff = ch2_coeff_3_9;
						else
							coeff = ch2_coeff_4_9;
						end
					3:	begin
						if(section[2]==0)
							coeff = ch2_coeff_1_8;
						else if(section[2]==1)
							coeff = ch2_coeff_2_8;
						else if(section[2]==2)
							coeff = ch2_coeff_3_8;
						else
							coeff = ch2_coeff_4_8;
						end
					4:	begin
						if(section[2]==0)
							coeff = ch2_coeff_1_7;
						else if(section[2]==1)
							coeff = ch2_coeff_2_7;
						else if(section[2]==2)
							coeff = ch2_coeff_3_7;
						else
							coeff = ch2_coeff_4_7;
						end
					5:	begin
						if(section[2]==0)
							coeff = ch2_coeff_1_6;
						else if(section[2]==1)
							coeff = ch2_coeff_2_6;
						else if(section[2]==2)
							coeff = ch2_coeff_3_6;
						else
							coeff = ch2_coeff_4_6;
						end
					6:	begin
						if(section[2]==0)
							coeff = ch2_coeff_1_5;
						else if(section[2]==1)
							coeff = ch2_coeff_2_5;
						else if(section[2]==2)
							coeff = ch2_coeff_3_5;
						else
							coeff = ch2_coeff_4_5;
						end
					7:	begin
						if(section[2]==0)
							coeff = ch2_coeff_1_4;
						else if(section[2]==1)
							coeff = ch2_coeff_2_4;
						else if(section[2]==2)
							coeff = ch2_coeff_3_4;
						else
							coeff = ch2_coeff_4_4;
						end
					8:	begin
						if(section[2]==0)
							coeff = ch2_coeff_1_3;
						else if(section[2]==1)
							coeff = ch2_coeff_2_3;
						else if(section[2]==2)
							coeff = ch2_coeff_3_3;
						else
							coeff = ch2_coeff_4_3;
						end
					9:	begin
						if(section[2]==0)
							coeff = ch2_coeff_1_2;
						else if(section[2]==1)
							coeff = ch2_coeff_2_2;
						else if(section[2]==2)
							coeff = ch2_coeff_3_2;
						else
							coeff = ch2_coeff_4_2;
						end
					10:	begin
						if(section[2]==0)
							coeff = ch2_coeff_1_1;
						else if(section[2]==1)
							coeff = ch2_coeff_2_1;
						else if(section[2]==2)
							coeff = ch2_coeff_3_1;
						else
							coeff = ch2_coeff_4_1;
						end
					11:	begin
						if(section[2]==0)
							coeff = ch2_coeff_1_0;
						else if(section[2]==1)
							coeff = ch2_coeff_2_0;
						else if(section[2]==2)
							coeff = ch2_coeff_3_0;
						else
							coeff = ch2_coeff_4_0;
						end
				endcase
			end

			3: begin
				case(count)
					1:	begin
						if(section[3]==0)
							coeff = ch3_coeff_1_10;
						else if(section[3]==1)
							coeff = ch3_coeff_2_10;
						else if(section[3]==2)
							coeff = ch3_coeff_3_10;
						else
							coeff = ch3_coeff_4_10;
						end
					2:	begin
						if(section[3]==0)
							coeff = ch3_coeff_1_9;
						else if(section[3]==1)
							coeff = ch3_coeff_2_9;
						else if(section[3]==2)
							coeff = ch3_coeff_3_9;
						else
							coeff = ch3_coeff_4_9;
						end
					3:	begin
						if(section[3]==0)
							coeff = ch3_coeff_1_8;
						else if(section[3]==1)
							coeff = ch3_coeff_2_8;
						else if(section[3]==2)
							coeff = ch3_coeff_3_8;
						else
							coeff = ch3_coeff_4_8;
						end
					4:	begin
						if(section[3]==0)
							coeff = ch3_coeff_1_7;
						else if(section[3]==1)
							coeff = ch3_coeff_2_7;
						else if(section[3]==2)
							coeff = ch3_coeff_3_7;
						else
							coeff = ch3_coeff_4_7;
						end
					5:	begin
						if(section[3]==0)
							coeff = ch3_coeff_1_6;
						else if(section[3]==1)
							coeff = ch3_coeff_2_6;
						else if(section[3]==2)
							coeff = ch3_coeff_3_6;
						else
							coeff = ch3_coeff_4_6;
						end
					6:	begin
						if(section[3]==0)
							coeff = ch3_coeff_1_5;
						else if(section[3]==1)
							coeff = ch3_coeff_2_5;
						else if(section[3]==2)
							coeff = ch3_coeff_3_5;
						else
							coeff = ch3_coeff_4_5;
						end
					7:	begin
						if(section[3]==0)
							coeff = ch3_coeff_1_4;
						else if(section[3]==1)
							coeff = ch3_coeff_2_4;
						else if(section[3]==2)
							coeff = ch3_coeff_3_4;
						else
							coeff = ch3_coeff_4_4;
						end
					8:	begin
						if(section[3]==0)
							coeff = ch3_coeff_1_3;
						else if(section[3]==1)
							coeff = ch3_coeff_2_3;
						else if(section[3]==2)
							coeff = ch3_coeff_3_3;
						else
							coeff = ch3_coeff_4_3;
						end
					9:	begin
						if(section[3]==0)
							coeff = ch3_coeff_1_2;
						else if(section[3]==1)
							coeff = ch3_coeff_2_2;
						else if(section[3]==2)
							coeff = ch3_coeff_3_2;
						else
							coeff = ch3_coeff_4_2;
						end
					10:	begin
						if(section[3]==0)
							coeff = ch3_coeff_1_1;
						else if(section[3]==1)
							coeff = ch3_coeff_2_1;
						else if(section[3]==2)
							coeff = ch3_coeff_3_1;
						else
							coeff = ch3_coeff_4_1;
						end
					11:	begin
						if(section[3]==0)
							coeff = ch3_coeff_1_0;
						else if(section[3]==1)
							coeff = ch3_coeff_2_0;
						else if(section[3]==2)
							coeff = ch3_coeff_3_0;
						else
							coeff = ch3_coeff_4_0;
						end
				endcase
			end

			4: begin
				case(count)
					1:	begin
						if(section[4]==0)
							coeff = ch4_coeff_1_10;
						else if(section[4]==1)
							coeff = ch4_coeff_2_10;
						else if(section[4]==2)
							coeff = ch4_coeff_3_10;
						else
							coeff = ch4_coeff_4_10;
						end
					2:	begin
						if(section[4]==0)
							coeff = ch4_coeff_1_9;
						else if(section[4]==1)
							coeff = ch4_coeff_2_9;
						else if(section[4]==2)
							coeff = ch4_coeff_3_9;
						else
							coeff = ch4_coeff_4_9;
						end
					3:	begin
						if(section[4]==0)
							coeff = ch4_coeff_1_8;
						else if(section[4]==1)
							coeff = ch4_coeff_2_8;
						else if(section[4]==2)
							coeff = ch4_coeff_3_8;
						else
							coeff = ch4_coeff_4_8;
						end
					4:	begin
						if(section[4]==0)
							coeff = ch4_coeff_1_7;
						else if(section[4]==1)
							coeff = ch4_coeff_2_7;
						else if(section[4]==2)
							coeff = ch4_coeff_3_7;
						else
							coeff = ch4_coeff_4_7;
						end
					5:	begin
						if(section[4]==0)
							coeff = ch4_coeff_1_6;
						else if(section[4]==1)
							coeff = ch4_coeff_2_6;
						else if(section[4]==2)
							coeff = ch4_coeff_3_6;
						else
							coeff = ch4_coeff_4_6;
						end
					6:	begin
						if(section[4]==0)
							coeff = ch4_coeff_1_5;
						else if(section[4]==1)
							coeff = ch4_coeff_2_5;
						else if(section[4]==2)
							coeff = ch4_coeff_3_5;
						else
							coeff = ch4_coeff_4_5;
						end
					7:	begin
						if(section[4]==0)
							coeff = ch4_coeff_1_4;
						else if(section[4]==1)
							coeff = ch4_coeff_2_4;
						else if(section[4]==2)
							coeff = ch4_coeff_3_4;
						else
							coeff = ch4_coeff_4_4;
						end
					8:	begin
						if(section[4]==0)
							coeff = ch4_coeff_1_3;
						else if(section[4]==1)
							coeff = ch4_coeff_2_3;
						else if(section[4]==2)
							coeff = ch4_coeff_3_3;
						else
							coeff = ch4_coeff_4_3;
						end
					9:	begin
						if(section[4]==0)
							coeff = ch4_coeff_1_2;
						else if(section[4]==1)
							coeff = ch4_coeff_2_2;
						else if(section[4]==2)
							coeff = ch4_coeff_3_2;
						else
							coeff = ch4_coeff_4_2;
						end
					10:	begin
						if(section[4]==0)
							coeff = ch4_coeff_1_1;
						else if(section[4]==1)
							coeff = ch4_coeff_2_1;
						else if(section[4]==2)
							coeff = ch4_coeff_3_1;
						else
							coeff = ch4_coeff_4_1;
						end
					11:	begin
						if(section[4]==0)
							coeff = ch4_coeff_1_0;
						else if(section[4]==1)
							coeff = ch4_coeff_2_0;
						else if(section[4]==2)
							coeff = ch4_coeff_3_0;
						else
							coeff = ch4_coeff_4_0;
						end
				endcase
			end

			5: begin
				case(count)
					1:	begin
						if(section[5]==0)
							coeff = ch5_coeff_1_10;
						else if(section[5]==1)
							coeff = ch5_coeff_2_10;
						else if(section[5]==2)
							coeff = ch5_coeff_3_10;
						else
							coeff = ch5_coeff_4_10;
						end
					2:	begin
						if(section[5]==0)
							coeff = ch5_coeff_1_9;
						else if(section[5]==1)
							coeff = ch5_coeff_2_9;
						else if(section[5]==2)
							coeff = ch5_coeff_3_9;
						else
							coeff = ch5_coeff_4_9;
						end
					3:	begin
						if(section[5]==0)
							coeff = ch5_coeff_1_8;
						else if(section[5]==1)
							coeff = ch5_coeff_2_8;
						else if(section[5]==2)
							coeff = ch5_coeff_3_8;
						else
							coeff = ch5_coeff_4_8;
						end
					4:	begin
						if(section[5]==0)
							coeff = ch5_coeff_1_7;
						else if(section[5]==1)
							coeff = ch5_coeff_2_7;
						else if(section[5]==2)
							coeff = ch5_coeff_3_7;
						else
							coeff = ch5_coeff_4_7;
						end
					5:	begin
						if(section[5]==0)
							coeff = ch5_coeff_1_6;
						else if(section[5]==1)
							coeff = ch5_coeff_2_6;
						else if(section[5]==2)
							coeff = ch5_coeff_3_6;
						else
							coeff = ch5_coeff_4_6;
						end
					6:	begin
						if(section[5]==0)
							coeff = ch5_coeff_1_5;
						else if(section[5]==1)
							coeff = ch5_coeff_2_5;
						else if(section[5]==2)
							coeff = ch5_coeff_3_5;
						else
							coeff = ch5_coeff_4_5;
						end
					7:	begin
						if(section[5]==0)
							coeff = ch5_coeff_1_4;
						else if(section[5]==1)
							coeff = ch5_coeff_2_4;
						else if(section[5]==2)
							coeff = ch5_coeff_3_4;
						else
							coeff = ch5_coeff_4_4;
						end
					8:	begin
						if(section[5]==0)
							coeff = ch5_coeff_1_3;
						else if(section[5]==1)
							coeff = ch5_coeff_2_3;
						else if(section[5]==2)
							coeff = ch5_coeff_3_3;
						else
							coeff = ch5_coeff_4_3;
						end
					9:	begin
						if(section[5]==0)
							coeff = ch5_coeff_1_2;
						else if(section[5]==1)
							coeff = ch5_coeff_2_2;
						else if(section[5]==2)
							coeff = ch5_coeff_3_2;
						else
							coeff = ch5_coeff_4_2;
						end
					10:	begin
						if(section[5]==0)
							coeff = ch5_coeff_1_1;
						else if(section[5]==1)
							coeff = ch5_coeff_2_1;
						else if(section[5]==2)
							coeff = ch5_coeff_3_1;
						else
							coeff = ch5_coeff_4_1;
						end
					11:	begin
						if(section[5]==0)
							coeff = ch5_coeff_1_0;
						else if(section[5]==1)
							coeff = ch5_coeff_2_0;
						else if(section[5]==2)
							coeff = ch5_coeff_3_0;
						else
							coeff = ch5_coeff_4_0;
						end
				endcase
			end

			6: begin
				case(count)
					1:	begin
						if(section[6]==0)
							coeff = ch6_coeff_1_10;
						else if(section[6]==1)
							coeff = ch6_coeff_2_10;
						else if(section[6]==2)
							coeff = ch6_coeff_3_10;
						else
							coeff = ch6_coeff_4_10;
						end
					2:	begin
						if(section[6]==0)
							coeff = ch6_coeff_1_9;
						else if(section[6]==1)
							coeff = ch6_coeff_2_9;
						else if(section[6]==2)
							coeff = ch6_coeff_3_9;
						else
							coeff = ch6_coeff_4_9;
						end
					3:	begin
						if(section[6]==0)
							coeff = ch6_coeff_1_8;
						else if(section[6]==1)
							coeff = ch6_coeff_2_8;
						else if(section[6]==2)
							coeff = ch6_coeff_3_8;
						else
							coeff = ch6_coeff_4_8;
						end
					4:	begin
						if(section[6]==0)
							coeff = ch6_coeff_1_7;
						else if(section[6]==1)
							coeff = ch6_coeff_2_7;
						else if(section[6]==2)
							coeff = ch6_coeff_3_7;
						else
							coeff = ch6_coeff_4_7;
						end
					5:	begin
						if(section[6]==0)
							coeff = ch6_coeff_1_6;
						else if(section[6]==1)
							coeff = ch6_coeff_2_6;
						else if(section[6]==2)
							coeff = ch6_coeff_3_6;
						else
							coeff = ch6_coeff_4_6;
						end
					6:	begin
						if(section[6]==0)
							coeff = ch6_coeff_1_5;
						else if(section[6]==1)
							coeff = ch6_coeff_2_5;
						else if(section[6]==2)
							coeff = ch6_coeff_3_5;
						else
							coeff = ch6_coeff_4_5;
						end
					7:	begin
						if(section[6]==0)
							coeff = ch6_coeff_1_4;
						else if(section[6]==1)
							coeff = ch6_coeff_2_4;
						else if(section[6]==2)
							coeff = ch6_coeff_3_4;
						else
							coeff = ch6_coeff_4_4;
						end
					8:	begin
						if(section[6]==0)
							coeff = ch6_coeff_1_3;
						else if(section[6]==1)
							coeff = ch6_coeff_2_3;
						else if(section[6]==2)
							coeff = ch6_coeff_3_3;
						else
							coeff = ch6_coeff_4_3;
						end
					9:	begin
						if(section[6]==0)
							coeff = ch6_coeff_1_2;
						else if(section[6]==1)
							coeff = ch6_coeff_2_2;
						else if(section[6]==2)
							coeff = ch6_coeff_3_2;
						else
							coeff = ch6_coeff_4_2;
						end
					10:	begin
						if(section[6]==0)
							coeff = ch6_coeff_1_1;
						else if(section[6]==1)
							coeff = ch6_coeff_2_1;
						else if(section[6]==2)
							coeff = ch6_coeff_3_1;
						else
							coeff = ch6_coeff_4_1;
						end
					11:	begin
						if(section[6]==0)
							coeff = ch6_coeff_1_0;
						else if(section[6]==1)
							coeff = ch6_coeff_2_0;
						else if(section[6]==2)
							coeff = ch6_coeff_3_0;
						else
							coeff = ch6_coeff_4_0;
						end
				endcase
			end

			7: begin
				case(count)
					1:	begin
						if(section[7]==0)
							coeff = ch7_coeff_1_10;
						else if(section[7]==1)
							coeff = ch7_coeff_2_10;
						else if(section[7]==2)
							coeff = ch7_coeff_3_10;
						else
							coeff = ch7_coeff_4_10;
						end
					2:	begin
						if(section[7]==0)
							coeff = ch7_coeff_1_9;
						else if(section[7]==1)
							coeff = ch7_coeff_2_9;
						else if(section[7]==2)
							coeff = ch7_coeff_3_9;
						else
							coeff = ch7_coeff_4_9;
						end
					3:	begin
						if(section[7]==0)
							coeff = ch7_coeff_1_8;
						else if(section[7]==1)
							coeff = ch7_coeff_2_8;
						else if(section[7]==2)
							coeff = ch7_coeff_3_8;
						else
							coeff = ch7_coeff_4_8;
						end
					4:	begin
						if(section[7]==0)
							coeff = ch7_coeff_1_7;
						else if(section[7]==1)
							coeff = ch7_coeff_2_7;
						else if(section[7]==2)
							coeff = ch7_coeff_3_7;
						else
							coeff = ch7_coeff_4_7;
						end
					5:	begin
						if(section[7]==0)
							coeff = ch7_coeff_1_6;
						else if(section[7]==1)
							coeff = ch7_coeff_2_6;
						else if(section[7]==2)
							coeff = ch7_coeff_3_6;
						else
							coeff = ch7_coeff_4_6;
						end
					6:	begin
						if(section[7]==0)
							coeff = ch7_coeff_1_5;
						else if(section[7]==1)
							coeff = ch7_coeff_2_5;
						else if(section[7]==2)
							coeff = ch7_coeff_3_5;
						else
							coeff = ch7_coeff_4_5;
						end
					7:	begin
						if(section[7]==0)
							coeff = ch7_coeff_1_4;
						else if(section[7]==1)
							coeff = ch7_coeff_2_4;
						else if(section[7]==2)
							coeff = ch7_coeff_3_4;
						else
							coeff = ch7_coeff_4_4;
						end
					8:	begin
						if(section[7]==0)
							coeff = ch7_coeff_1_3;
						else if(section[7]==1)
							coeff = ch7_coeff_2_3;
						else if(section[7]==2)
							coeff = ch7_coeff_3_3;
						else
							coeff = ch7_coeff_4_3;
						end
					9:	begin
						if(section[7]==0)
							coeff = ch7_coeff_1_2;
						else if(section[7]==1)
							coeff = ch7_coeff_2_2;
						else if(section[7]==2)
							coeff = ch7_coeff_3_2;
						else
							coeff = ch7_coeff_4_2;
						end
					10:	begin
						if(section[7]==0)
							coeff = ch7_coeff_1_1;
						else if(section[7]==1)
							coeff = ch7_coeff_2_1;
						else if(section[7]==2)
							coeff = ch7_coeff_3_1;
						else
							coeff = ch7_coeff_4_1;
						end
					11:	begin
						if(section[7]==0)
							coeff = ch7_coeff_1_0;
						else if(section[7]==1)
							coeff = ch7_coeff_2_0;
						else if(section[7]==2)
							coeff = ch7_coeff_3_0;
						else
							coeff = ch7_coeff_4_0;
						end
				endcase
			end

			8: begin
				case(count)
					1:	begin
						if(section[8]==0)
							coeff = ch8_coeff_1_10;
						else if(section[8]==1)
							coeff = ch8_coeff_2_10;
						else if(section[8]==2)
							coeff = ch8_coeff_3_10;
						else
							coeff = ch8_coeff_4_10;
						end
					2:	begin
						if(section[8]==0)
							coeff = ch8_coeff_1_9;
						else if(section[8]==1)
							coeff = ch8_coeff_2_9;
						else if(section[8]==2)
							coeff = ch8_coeff_3_9;
						else
							coeff = ch8_coeff_4_9;
						end
					3:	begin
						if(section[8]==0)
							coeff = ch8_coeff_1_8;
						else if(section[8]==1)
							coeff = ch8_coeff_2_8;
						else if(section[8]==2)
							coeff = ch8_coeff_3_8;
						else
							coeff = ch8_coeff_4_8;
						end
					4:	begin
						if(section[8]==0)
							coeff = ch8_coeff_1_7;
						else if(section[8]==1)
							coeff = ch8_coeff_2_7;
						else if(section[8]==2)
							coeff = ch8_coeff_3_7;
						else
							coeff = ch8_coeff_4_7;
						end
					5:	begin
						if(section[8]==0)
							coeff = ch8_coeff_1_6;
						else if(section[8]==1)
							coeff = ch8_coeff_2_6;
						else if(section[8]==2)
							coeff = ch8_coeff_3_6;
						else
							coeff = ch8_coeff_4_6;
						end
					6:	begin
						if(section[8]==0)
							coeff = ch8_coeff_1_5;
						else if(section[8]==1)
							coeff = ch8_coeff_2_5;
						else if(section[8]==2)
							coeff = ch8_coeff_3_5;
						else
							coeff = ch8_coeff_4_5;
						end
					7:	begin
						if(section[8]==0)
							coeff = ch8_coeff_1_4;
						else if(section[8]==1)
							coeff = ch8_coeff_2_4;
						else if(section[8]==2)
							coeff = ch8_coeff_3_4;
						else
							coeff = ch8_coeff_4_4;
						end
					8:	begin
						if(section[8]==0)
							coeff = ch8_coeff_1_3;
						else if(section[8]==1)
							coeff = ch8_coeff_2_3;
						else if(section[8]==2)
							coeff = ch8_coeff_3_3;
						else
							coeff = ch8_coeff_4_3;
						end
					9:	begin
						if(section[8]==0)
							coeff = ch8_coeff_1_2;
						else if(section[8]==1)
							coeff = ch8_coeff_2_2;
						else if(section[8]==2)
							coeff = ch8_coeff_3_2;
						else
							coeff = ch8_coeff_4_2;
						end
					10:	begin
						if(section[8]==0)
							coeff = ch8_coeff_1_1;
						else if(section[8]==1)
							coeff = ch8_coeff_2_1;
						else if(section[8]==2)
							coeff = ch8_coeff_3_1;
						else
							coeff = ch8_coeff_4_1;
						end
					11:	begin
						if(section[8]==0)
							coeff = ch8_coeff_1_0;
						else if(section[8]==1)
							coeff = ch8_coeff_2_0;
						else if(section[8]==2)
							coeff = ch8_coeff_3_0;
						else
							coeff = ch8_coeff_4_0;
						end
				endcase
			end

			9: begin
				case(count)
					1:	begin
						if(section[9]==0)
							coeff = ch9_coeff_1_10;
						else if(section[9]==1)
							coeff = ch9_coeff_2_10;
						else if(section[9]==2)
							coeff = ch9_coeff_3_10;
						else
							coeff = ch9_coeff_4_10;
						end
					2:	begin
						if(section[9]==0)
							coeff = ch9_coeff_1_9;
						else if(section[9]==1)
							coeff = ch9_coeff_2_9;
						else if(section[9]==2)
							coeff = ch9_coeff_3_9;
						else
							coeff = ch9_coeff_4_9;
						end
					3:	begin
						if(section[9]==0)
							coeff = ch9_coeff_1_8;
						else if(section[9]==1)
							coeff = ch9_coeff_2_8;
						else if(section[9]==2)
							coeff = ch9_coeff_3_8;
						else
							coeff = ch9_coeff_4_8;
						end
					4:	begin
						if(section[9]==0)
							coeff = ch9_coeff_1_7;
						else if(section[9]==1)
							coeff = ch9_coeff_2_7;
						else if(section[9]==2)
							coeff = ch9_coeff_3_7;
						else
							coeff = ch9_coeff_4_7;
						end
					5:	begin
						if(section[9]==0)
							coeff = ch9_coeff_1_6;
						else if(section[9]==1)
							coeff = ch9_coeff_2_6;
						else if(section[9]==2)
							coeff = ch9_coeff_3_6;
						else
							coeff = ch9_coeff_4_6;
						end
					6:	begin
						if(section[9]==0)
							coeff = ch9_coeff_1_5;
						else if(section[9]==1)
							coeff = ch9_coeff_2_5;
						else if(section[9]==2)
							coeff = ch9_coeff_3_5;
						else
							coeff = ch9_coeff_4_5;
						end
					7:	begin
						if(section[9]==0)
							coeff = ch9_coeff_1_4;
						else if(section[9]==1)
							coeff = ch9_coeff_2_4;
						else if(section[9]==2)
							coeff = ch9_coeff_3_4;
						else
							coeff = ch9_coeff_4_4;
						end
					8:	begin
						if(section[9]==0)
							coeff = ch9_coeff_1_3;
						else if(section[9]==1)
							coeff = ch9_coeff_2_3;
						else if(section[9]==2)
							coeff = ch9_coeff_3_3;
						else
							coeff = ch9_coeff_4_3;
						end
					9:	begin
						if(section[9]==0)
							coeff = ch9_coeff_1_2;
						else if(section[9]==1)
							coeff = ch9_coeff_2_2;
						else if(section[9]==2)
							coeff = ch9_coeff_3_2;
						else
							coeff = ch9_coeff_4_2;
						end
					10:	begin
						if(section[9]==0)
							coeff = ch9_coeff_1_1;
						else if(section[9]==1)
							coeff = ch9_coeff_2_1;
						else if(section[9]==2)
							coeff = ch9_coeff_3_1;
						else
							coeff = ch9_coeff_4_1;
						end
					11:	begin
						if(section[9]==0)
							coeff = ch9_coeff_1_0;
						else if(section[9]==1)
							coeff = ch9_coeff_2_0;
						else if(section[9]==2)
							coeff = ch9_coeff_3_0;
						else
							coeff = ch9_coeff_4_0;
						end
				endcase
			end

			10: begin
				case(count)
					1:	begin
						if(section[10]==0)
							coeff = ch10_coeff_1_10;
						else if(section[10]==1)
							coeff = ch10_coeff_2_10;
						else if(section[10]==2)
							coeff = ch10_coeff_3_10;
						else
							coeff = ch10_coeff_4_10;
						end
					2:	begin
						if(section[10]==0)
							coeff = ch10_coeff_1_9;
						else if(section[10]==1)
							coeff = ch10_coeff_2_9;
						else if(section[10]==2)
							coeff = ch10_coeff_3_9;
						else
							coeff = ch10_coeff_4_9;
						end
					3:	begin
						if(section[10]==0)
							coeff = ch10_coeff_1_8;
						else if(section[10]==1)
							coeff = ch10_coeff_2_8;
						else if(section[10]==2)
							coeff = ch10_coeff_3_8;
						else
							coeff = ch10_coeff_4_8;
						end
					4:	begin
						if(section[10]==0)
							coeff = ch10_coeff_1_7;
						else if(section[10]==1)
							coeff = ch10_coeff_2_7;
						else if(section[10]==2)
							coeff = ch10_coeff_3_7;
						else
							coeff = ch10_coeff_4_7;
						end
					5:	begin
						if(section[10]==0)
							coeff = ch10_coeff_1_6;
						else if(section[10]==1)
							coeff = ch10_coeff_2_6;
						else if(section[10]==2)
							coeff = ch10_coeff_3_6;
						else
							coeff = ch10_coeff_4_6;
						end
					6:	begin
						if(section[10]==0)
							coeff = ch10_coeff_1_5;
						else if(section[10]==1)
							coeff = ch10_coeff_2_5;
						else if(section[10]==2)
							coeff = ch10_coeff_3_5;
						else
							coeff = ch10_coeff_4_5;
						end
					7:	begin
						if(section[10]==0)
							coeff = ch10_coeff_1_4;
						else if(section[10]==1)
							coeff = ch10_coeff_2_4;
						else if(section[10]==2)
							coeff = ch10_coeff_3_4;
						else
							coeff = ch10_coeff_4_4;
						end
					8:	begin
						if(section[10]==0)
							coeff = ch10_coeff_1_3;
						else if(section[10]==1)
							coeff = ch10_coeff_2_3;
						else if(section[10]==2)
							coeff = ch10_coeff_3_3;
						else
							coeff = ch10_coeff_4_3;
						end
					9:	begin
						if(section[10]==0)
							coeff = ch10_coeff_1_2;
						else if(section[10]==1)
							coeff = ch10_coeff_2_2;
						else if(section[10]==2)
							coeff = ch10_coeff_3_2;
						else
							coeff = ch10_coeff_4_2;
						end
					10:	begin
						if(section[10]==0)
							coeff = ch10_coeff_1_1;
						else if(section[10]==1)
							coeff = ch10_coeff_2_1;
						else if(section[10]==2)
							coeff = ch10_coeff_3_1;
						else
							coeff = ch10_coeff_4_1;
						end
					11:	begin
						if(section[10]==0)
							coeff = ch10_coeff_1_0;
						else if(section[10]==1)
							coeff = ch10_coeff_2_0;
						else if(section[10]==2)
							coeff = ch10_coeff_3_0;
						else
							coeff = ch10_coeff_4_0;
						end
				endcase
			end

			11: begin
				case(count)
					1:	begin
						if(section[11]==0)
							coeff = ch11_coeff_1_10;
						else if(section[11]==1)
							coeff = ch11_coeff_2_10;
						else if(section[11]==2)
							coeff = ch11_coeff_3_10;
						else
							coeff = ch11_coeff_4_10;
						end
					2:	begin
						if(section[11]==0)
							coeff = ch11_coeff_1_9;
						else if(section[11]==1)
							coeff = ch11_coeff_2_9;
						else if(section[11]==2)
							coeff = ch11_coeff_3_9;
						else
							coeff = ch11_coeff_4_9;
						end
					3:	begin
						if(section[11]==0)
							coeff = ch11_coeff_1_8;
						else if(section[11]==1)
							coeff = ch11_coeff_2_8;
						else if(section[11]==2)
							coeff = ch11_coeff_3_8;
						else
							coeff = ch11_coeff_4_8;
						end
					4:	begin
						if(section[11]==0)
							coeff = ch11_coeff_1_7;
						else if(section[11]==1)
							coeff = ch11_coeff_2_7;
						else if(section[11]==2)
							coeff = ch11_coeff_3_7;
						else
							coeff = ch11_coeff_4_7;
						end
					5:	begin
						if(section[11]==0)
							coeff = ch11_coeff_1_6;
						else if(section[11]==1)
							coeff = ch11_coeff_2_6;
						else if(section[11]==2)
							coeff = ch11_coeff_3_6;
						else
							coeff = ch11_coeff_4_6;
						end
					6:	begin
						if(section[11]==0)
							coeff = ch11_coeff_1_5;
						else if(section[11]==1)
							coeff = ch11_coeff_2_5;
						else if(section[11]==2)
							coeff = ch11_coeff_3_5;
						else
							coeff = ch11_coeff_4_5;
						end
					7:	begin
						if(section[11]==0)
							coeff = ch11_coeff_1_4;
						else if(section[11]==1)
							coeff = ch11_coeff_2_4;
						else if(section[11]==2)
							coeff = ch11_coeff_3_4;
						else
							coeff = ch11_coeff_4_4;
						end
					8:	begin
						if(section[11]==0)
							coeff = ch11_coeff_1_3;
						else if(section[11]==1)
							coeff = ch11_coeff_2_3;
						else if(section[11]==2)
							coeff = ch11_coeff_3_3;
						else
							coeff = ch11_coeff_4_3;
						end
					9:	begin
						if(section[11]==0)
							coeff = ch11_coeff_1_2;
						else if(section[11]==1)
							coeff = ch11_coeff_2_2;
						else if(section[11]==2)
							coeff = ch11_coeff_3_2;
						else
							coeff = ch11_coeff_4_2;
						end
					10:	begin
						if(section[11]==0)
							coeff = ch11_coeff_1_1;
						else if(section[11]==1)
							coeff = ch11_coeff_2_1;
						else if(section[11]==2)
							coeff = ch11_coeff_3_1;
						else
							coeff = ch11_coeff_4_1;
						end
					11:	begin
						if(section[11]==0)
							coeff = ch11_coeff_1_0;
						else if(section[11]==1)
							coeff = ch11_coeff_2_0;
						else if(section[11]==2)
							coeff = ch11_coeff_3_0;
						else
							coeff = ch11_coeff_4_0;
						end
				endcase
			end

			12: begin
				case(count)
					1:	begin
						if(section[12]==0)
							coeff = ch12_coeff_1_10;
						else if(section[12]==1)
							coeff = ch12_coeff_2_10;
						else if(section[12]==2)
							coeff = ch12_coeff_3_10;
						else
							coeff = ch12_coeff_4_10;
						end
					2:	begin
						if(section[12]==0)
							coeff = ch12_coeff_1_9;
						else if(section[12]==1)
							coeff = ch12_coeff_2_9;
						else if(section[12]==2)
							coeff = ch12_coeff_3_9;
						else
							coeff = ch12_coeff_4_9;
						end
					3:	begin
						if(section[12]==0)
							coeff = ch12_coeff_1_8;
						else if(section[12]==1)
							coeff = ch12_coeff_2_8;
						else if(section[12]==2)
							coeff = ch12_coeff_3_8;
						else
							coeff = ch12_coeff_4_8;
						end
					4:	begin
						if(section[12]==0)
							coeff = ch12_coeff_1_7;
						else if(section[12]==1)
							coeff = ch12_coeff_2_7;
						else if(section[12]==2)
							coeff = ch12_coeff_3_7;
						else
							coeff = ch12_coeff_4_7;
						end
					5:	begin
						if(section[12]==0)
							coeff = ch12_coeff_1_6;
						else if(section[12]==1)
							coeff = ch12_coeff_2_6;
						else if(section[12]==2)
							coeff = ch12_coeff_3_6;
						else
							coeff = ch12_coeff_4_6;
						end
					6:	begin
						if(section[12]==0)
							coeff = ch12_coeff_1_5;
						else if(section[12]==1)
							coeff = ch12_coeff_2_5;
						else if(section[12]==2)
							coeff = ch12_coeff_3_5;
						else
							coeff = ch12_coeff_4_5;
						end
					7:	begin
						if(section[12]==0)
							coeff = ch12_coeff_1_4;
						else if(section[12]==1)
							coeff = ch12_coeff_2_4;
						else if(section[12]==2)
							coeff = ch12_coeff_3_4;
						else
							coeff = ch12_coeff_4_4;
						end
					8:	begin
						if(section[12]==0)
							coeff = ch12_coeff_1_3;
						else if(section[12]==1)
							coeff = ch12_coeff_2_3;
						else if(section[12]==2)
							coeff = ch12_coeff_3_3;
						else
							coeff = ch12_coeff_4_3;
						end
					9:	begin
						if(section[12]==0)
							coeff = ch12_coeff_1_2;
						else if(section[12]==1)
							coeff = ch12_coeff_2_2;
						else if(section[12]==2)
							coeff = ch12_coeff_3_2;
						else
							coeff = ch12_coeff_4_2;
						end
					10:	begin
						if(section[12]==0)
							coeff = ch12_coeff_1_1;
						else if(section[12]==1)
							coeff = ch12_coeff_2_1;
						else if(section[12]==2)
							coeff = ch12_coeff_3_1;
						else
							coeff = ch12_coeff_4_1;
						end
					11:	begin
						if(section[12]==0)
							coeff = ch12_coeff_1_0;
						else if(section[12]==1)
							coeff = ch12_coeff_2_0;
						else if(section[12]==2)
							coeff = ch12_coeff_3_0;
						else
							coeff = ch12_coeff_4_0;
						end
				endcase
			end

			13: begin
				case(count)
					1:	begin
						if(section[13]==0)
							coeff = ch13_coeff_1_10;
						else if(section[13]==1)
							coeff = ch13_coeff_2_10;
						else if(section[13]==2)
							coeff = ch13_coeff_3_10;
						else
							coeff = ch13_coeff_4_10;
						end
					2:	begin
						if(section[13]==0)
							coeff = ch13_coeff_1_9;
						else if(section[13]==1)
							coeff = ch13_coeff_2_9;
						else if(section[13]==2)
							coeff = ch13_coeff_3_9;
						else
							coeff = ch13_coeff_4_9;
						end
					3:	begin
						if(section[13]==0)
							coeff = ch13_coeff_1_8;
						else if(section[13]==1)
							coeff = ch13_coeff_2_8;
						else if(section[13]==2)
							coeff = ch13_coeff_3_8;
						else
							coeff = ch13_coeff_4_8;
						end
					4:	begin
						if(section[13]==0)
							coeff = ch13_coeff_1_7;
						else if(section[13]==1)
							coeff = ch13_coeff_2_7;
						else if(section[13]==2)
							coeff = ch13_coeff_3_7;
						else
							coeff = ch13_coeff_4_7;
						end
					5:	begin
						if(section[13]==0)
							coeff = ch13_coeff_1_6;
						else if(section[13]==1)
							coeff = ch13_coeff_2_6;
						else if(section[13]==2)
							coeff = ch13_coeff_3_6;
						else
							coeff = ch13_coeff_4_6;
						end
					6:	begin
						if(section[13]==0)
							coeff = ch13_coeff_1_5;
						else if(section[13]==1)
							coeff = ch13_coeff_2_5;
						else if(section[13]==2)
							coeff = ch13_coeff_3_5;
						else
							coeff = ch13_coeff_4_5;
						end
					7:	begin
						if(section[13]==0)
							coeff = ch13_coeff_1_4;
						else if(section[13]==1)
							coeff = ch13_coeff_2_4;
						else if(section[13]==2)
							coeff = ch13_coeff_3_4;
						else
							coeff = ch13_coeff_4_4;
						end
					8:	begin
						if(section[13]==0)
							coeff = ch13_coeff_1_3;
						else if(section[13]==1)
							coeff = ch13_coeff_2_3;
						else if(section[13]==2)
							coeff = ch13_coeff_3_3;
						else
							coeff = ch13_coeff_4_3;
						end
					9:	begin
						if(section[13]==0)
							coeff = ch13_coeff_1_2;
						else if(section[13]==1)
							coeff = ch13_coeff_2_2;
						else if(section[13]==2)
							coeff = ch13_coeff_3_2;
						else
							coeff = ch13_coeff_4_2;
						end
					10:	begin
						if(section[13]==0)
							coeff = ch13_coeff_1_1;
						else if(section[13]==1)
							coeff = ch13_coeff_2_1;
						else if(section[13]==2)
							coeff = ch13_coeff_3_1;
						else
							coeff = ch13_coeff_4_1;
						end
					11:	begin
						if(section[13]==0)
							coeff = ch13_coeff_1_0;
						else if(section[13]==1)
							coeff = ch13_coeff_2_0;
						else if(section[13]==2)
							coeff = ch13_coeff_3_0;
						else
							coeff = ch13_coeff_4_0;
						end
				endcase
			end

			14: begin
				case(count)
					1:	begin
						if(section[14]==0)
							coeff = ch14_coeff_1_10;
						else if(section[14]==1)
							coeff = ch14_coeff_2_10;
						else if(section[14]==2)
							coeff = ch14_coeff_3_10;
						else
							coeff = ch14_coeff_4_10;
						end
					2:	begin
						if(section[14]==0)
							coeff = ch14_coeff_1_9;
						else if(section[14]==1)
							coeff = ch14_coeff_2_9;
						else if(section[14]==2)
							coeff = ch14_coeff_3_9;
						else
							coeff = ch14_coeff_4_9;
						end
					3:	begin
						if(section[14]==0)
							coeff = ch14_coeff_1_8;
						else if(section[14]==1)
							coeff = ch14_coeff_2_8;
						else if(section[14]==2)
							coeff = ch14_coeff_3_8;
						else
							coeff = ch14_coeff_4_8;
						end
					4:	begin
						if(section[14]==0)
							coeff = ch14_coeff_1_7;
						else if(section[14]==1)
							coeff = ch14_coeff_2_7;
						else if(section[14]==2)
							coeff = ch14_coeff_3_7;
						else
							coeff = ch14_coeff_4_7;
						end
					5:	begin
						if(section[14]==0)
							coeff = ch14_coeff_1_6;
						else if(section[14]==1)
							coeff = ch14_coeff_2_6;
						else if(section[14]==2)
							coeff = ch14_coeff_3_6;
						else
							coeff = ch14_coeff_4_6;
						end
					6:	begin
						if(section[14]==0)
							coeff = ch14_coeff_1_5;
						else if(section[14]==1)
							coeff = ch14_coeff_2_5;
						else if(section[14]==2)
							coeff = ch14_coeff_3_5;
						else
							coeff = ch14_coeff_4_5;
						end
					7:	begin
						if(section[14]==0)
							coeff = ch14_coeff_1_4;
						else if(section[14]==1)
							coeff = ch14_coeff_2_4;
						else if(section[14]==2)
							coeff = ch14_coeff_3_4;
						else
							coeff = ch14_coeff_4_4;
						end
					8:	begin
						if(section[14]==0)
							coeff = ch14_coeff_1_3;
						else if(section[14]==1)
							coeff = ch14_coeff_2_3;
						else if(section[14]==2)
							coeff = ch14_coeff_3_3;
						else
							coeff = ch14_coeff_4_3;
						end
					9:	begin
						if(section[14]==0)
							coeff = ch14_coeff_1_2;
						else if(section[14]==1)
							coeff = ch14_coeff_2_2;
						else if(section[14]==2)
							coeff = ch14_coeff_3_2;
						else
							coeff = ch14_coeff_4_2;
						end
					10:	begin
						if(section[14]==0)
							coeff = ch14_coeff_1_1;
						else if(section[14]==1)
							coeff = ch14_coeff_2_1;
						else if(section[14]==2)
							coeff = ch14_coeff_3_1;
						else
							coeff = ch14_coeff_4_1;
						end
					11:	begin
						if(section[14]==0)
							coeff = ch14_coeff_1_0;
						else if(section[14]==1)
							coeff = ch14_coeff_2_0;
						else if(section[14]==2)
							coeff = ch14_coeff_3_0;
						else
							coeff = ch14_coeff_4_0;
						end
				endcase
			end

			15: begin
				case(count)
					1:	begin
						if(section[15]==0)
							coeff = ch15_coeff_1_10;
						else if(section[15]==1)
							coeff = ch15_coeff_2_10;
						else if(section[15]==2)
							coeff = ch15_coeff_3_10;
						else
							coeff = ch15_coeff_4_10;
						end
					2:	begin
						if(section[15]==0)
							coeff = ch15_coeff_1_9;
						else if(section[15]==1)
							coeff = ch15_coeff_2_9;
						else if(section[15]==2)
							coeff = ch15_coeff_3_9;
						else
							coeff = ch15_coeff_4_9;
						end
					3:	begin
						if(section[15]==0)
							coeff = ch15_coeff_1_8;
						else if(section[15]==1)
							coeff = ch15_coeff_2_8;
						else if(section[15]==2)
							coeff = ch15_coeff_3_8;
						else
							coeff = ch15_coeff_4_8;
						end
					4:	begin
						if(section[15]==0)
							coeff = ch15_coeff_1_7;
						else if(section[15]==1)
							coeff = ch15_coeff_2_7;
						else if(section[15]==2)
							coeff = ch15_coeff_3_7;
						else
							coeff = ch15_coeff_4_7;
						end
					5:	begin
						if(section[15]==0)
							coeff = ch15_coeff_1_6;
						else if(section[15]==1)
							coeff = ch15_coeff_2_6;
						else if(section[15]==2)
							coeff = ch15_coeff_3_6;
						else
							coeff = ch15_coeff_4_6;
						end
					6:	begin
						if(section[15]==0)
							coeff = ch15_coeff_1_5;
						else if(section[15]==1)
							coeff = ch15_coeff_2_5;
						else if(section[15]==2)
							coeff = ch15_coeff_3_5;
						else
							coeff = ch15_coeff_4_5;
						end
					7:	begin
						if(section[15]==0)
							coeff = ch15_coeff_1_4;
						else if(section[15]==1)
							coeff = ch15_coeff_2_4;
						else if(section[15]==2)
							coeff = ch15_coeff_3_4;
						else
							coeff = ch15_coeff_4_4;
						end
					8:	begin
						if(section[15]==0)
							coeff = ch15_coeff_1_3;
						else if(section[15]==1)
							coeff = ch15_coeff_2_3;
						else if(section[15]==2)
							coeff = ch15_coeff_3_3;
						else
							coeff = ch15_coeff_4_3;
						end
					9:	begin
						if(section[15]==0)
							coeff = ch15_coeff_1_2;
						else if(section[15]==1)
							coeff = ch15_coeff_2_2;
						else if(section[15]==2)
							coeff = ch15_coeff_3_2;
						else
							coeff = ch15_coeff_4_2;
						end
					10:	begin
						if(section[15]==0)
							coeff = ch15_coeff_1_1;
						else if(section[15]==1)
							coeff = ch15_coeff_2_1;
						else if(section[15]==2)
							coeff = ch15_coeff_3_1;
						else
							coeff = ch15_coeff_4_1;
						end
					11:	begin
						if(section[15]==0)
							coeff = ch15_coeff_1_0;
						else if(section[15]==1)
							coeff = ch15_coeff_2_0;
						else if(section[15]==2)
							coeff = ch15_coeff_3_0;
						else
							coeff = ch15_coeff_4_0;
						end
				endcase
			end

			16: begin
				case(count)
					1:	begin
						if(section[16]==0)
							coeff = ch16_coeff_1_10;
						else if(section[16]==1)
							coeff = ch16_coeff_2_10;
						else if(section[16]==2)
							coeff = ch16_coeff_3_10;
						else
							coeff = ch16_coeff_4_10;
						end
					2:	begin
						if(section[16]==0)
							coeff = ch16_coeff_1_9;
						else if(section[16]==1)
							coeff = ch16_coeff_2_9;
						else if(section[16]==2)
							coeff = ch16_coeff_3_9;
						else
							coeff = ch16_coeff_4_9;
						end
					3:	begin
						if(section[16]==0)
							coeff = ch16_coeff_1_8;
						else if(section[16]==1)
							coeff = ch16_coeff_2_8;
						else if(section[16]==2)
							coeff = ch16_coeff_3_8;
						else
							coeff = ch16_coeff_4_8;
						end
					4:	begin
						if(section[16]==0)
							coeff = ch16_coeff_1_7;
						else if(section[16]==1)
							coeff = ch16_coeff_2_7;
						else if(section[16]==2)
							coeff = ch16_coeff_3_7;
						else
							coeff = ch16_coeff_4_7;
						end
					5:	begin
						if(section[16]==0)
							coeff = ch16_coeff_1_6;
						else if(section[16]==1)
							coeff = ch16_coeff_2_6;
						else if(section[16]==2)
							coeff = ch16_coeff_3_6;
						else
							coeff = ch16_coeff_4_6;
						end
					6:	begin
						if(section[16]==0)
							coeff = ch16_coeff_1_5;
						else if(section[16]==1)
							coeff = ch16_coeff_2_5;
						else if(section[16]==2)
							coeff = ch16_coeff_3_5;
						else
							coeff = ch16_coeff_4_5;
						end
					7:	begin
						if(section[16]==0)
							coeff = ch16_coeff_1_4;
						else if(section[16]==1)
							coeff = ch16_coeff_2_4;
						else if(section[16]==2)
							coeff = ch16_coeff_3_4;
						else
							coeff = ch16_coeff_4_4;
						end
					8:	begin
						if(section[16]==0)
							coeff = ch16_coeff_1_3;
						else if(section[16]==1)
							coeff = ch16_coeff_2_3;
						else if(section[16]==2)
							coeff = ch16_coeff_3_3;
						else
							coeff = ch16_coeff_4_3;
						end
					9:	begin
						if(section[16]==0)
							coeff = ch16_coeff_1_2;
						else if(section[16]==1)
							coeff = ch16_coeff_2_2;
						else if(section[16]==2)
							coeff = ch16_coeff_3_2;
						else
							coeff = ch16_coeff_4_2;
						end
					10:	begin
						if(section[16]==0)
							coeff = ch16_coeff_1_1;
						else if(section[16]==1)
							coeff = ch16_coeff_2_1;
						else if(section[16]==2)
							coeff = ch16_coeff_3_1;
						else
							coeff = ch16_coeff_4_1;
						end
					11:	begin
						if(section[16]==0)
							coeff = ch16_coeff_1_0;
						else if(section[16]==1)
							coeff = ch16_coeff_2_0;
						else if(section[16]==2)
							coeff = ch16_coeff_3_0;
						else
							coeff = ch16_coeff_4_0;
						end
				endcase
			end

			17: begin
				case(count)
					1:	begin
						if(section[17]==0)
							coeff = ch17_coeff_1_10;
						else if(section[17]==1)
							coeff = ch17_coeff_2_10;
						else if(section[17]==2)
							coeff = ch17_coeff_3_10;
						else
							coeff = ch17_coeff_4_10;
						end
					2:	begin
						if(section[17]==0)
							coeff = ch17_coeff_1_9;
						else if(section[17]==1)
							coeff = ch17_coeff_2_9;
						else if(section[17]==2)
							coeff = ch17_coeff_3_9;
						else
							coeff = ch17_coeff_4_9;
						end
					3:	begin
						if(section[17]==0)
							coeff = ch17_coeff_1_8;
						else if(section[17]==1)
							coeff = ch17_coeff_2_8;
						else if(section[17]==2)
							coeff = ch17_coeff_3_8;
						else
							coeff = ch17_coeff_4_8;
						end
					4:	begin
						if(section[17]==0)
							coeff = ch17_coeff_1_7;
						else if(section[17]==1)
							coeff = ch17_coeff_2_7;
						else if(section[17]==2)
							coeff = ch17_coeff_3_7;
						else
							coeff = ch17_coeff_4_7;
						end
					5:	begin
						if(section[17]==0)
							coeff = ch17_coeff_1_6;
						else if(section[17]==1)
							coeff = ch17_coeff_2_6;
						else if(section[17]==2)
							coeff = ch17_coeff_3_6;
						else
							coeff = ch17_coeff_4_6;
						end
					6:	begin
						if(section[17]==0)
							coeff = ch17_coeff_1_5;
						else if(section[17]==1)
							coeff = ch17_coeff_2_5;
						else if(section[17]==2)
							coeff = ch17_coeff_3_5;
						else
							coeff = ch17_coeff_4_5;
						end
					7:	begin
						if(section[17]==0)
							coeff = ch17_coeff_1_4;
						else if(section[17]==1)
							coeff = ch17_coeff_2_4;
						else if(section[17]==2)
							coeff = ch17_coeff_3_4;
						else
							coeff = ch17_coeff_4_4;
						end
					8:	begin
						if(section[17]==0)
							coeff = ch17_coeff_1_3;
						else if(section[17]==1)
							coeff = ch17_coeff_2_3;
						else if(section[17]==2)
							coeff = ch17_coeff_3_3;
						else
							coeff = ch17_coeff_4_3;
						end
					9:	begin
						if(section[17]==0)
							coeff = ch17_coeff_1_2;
						else if(section[17]==1)
							coeff = ch17_coeff_2_2;
						else if(section[17]==2)
							coeff = ch17_coeff_3_2;
						else
							coeff = ch17_coeff_4_2;
						end
					10:	begin
						if(section[17]==0)
							coeff = ch17_coeff_1_1;
						else if(section[17]==1)
							coeff = ch17_coeff_2_1;
						else if(section[17]==2)
							coeff = ch17_coeff_3_1;
						else
							coeff = ch17_coeff_4_1;
						end
					11:	begin
						if(section[17]==0)
							coeff = ch17_coeff_1_0;
						else if(section[17]==1)
							coeff = ch17_coeff_2_0;
						else if(section[17]==2)
							coeff = ch17_coeff_3_0;
						else
							coeff = ch17_coeff_4_0;
						end
				endcase
			end

			18: begin
				case(count)
					1:	begin
						if(section[18]==0)
							coeff = ch18_coeff_1_10;
						else if(section[18]==1)
							coeff = ch18_coeff_2_10;
						else if(section[18]==2)
							coeff = ch18_coeff_3_10;
						else
							coeff = ch18_coeff_4_10;
						end
					2:	begin
						if(section[18]==0)
							coeff = ch18_coeff_1_9;
						else if(section[18]==1)
							coeff = ch18_coeff_2_9;
						else if(section[18]==2)
							coeff = ch18_coeff_3_9;
						else
							coeff = ch18_coeff_4_9;
						end
					3:	begin
						if(section[18]==0)
							coeff = ch18_coeff_1_8;
						else if(section[18]==1)
							coeff = ch18_coeff_2_8;
						else if(section[18]==2)
							coeff = ch18_coeff_3_8;
						else
							coeff = ch18_coeff_4_8;
						end
					4:	begin
						if(section[18]==0)
							coeff = ch18_coeff_1_7;
						else if(section[18]==1)
							coeff = ch18_coeff_2_7;
						else if(section[18]==2)
							coeff = ch18_coeff_3_7;
						else
							coeff = ch18_coeff_4_7;
						end
					5:	begin
						if(section[18]==0)
							coeff = ch18_coeff_1_6;
						else if(section[18]==1)
							coeff = ch18_coeff_2_6;
						else if(section[18]==2)
							coeff = ch18_coeff_3_6;
						else
							coeff = ch18_coeff_4_6;
						end
					6:	begin
						if(section[18]==0)
							coeff = ch18_coeff_1_5;
						else if(section[18]==1)
							coeff = ch18_coeff_2_5;
						else if(section[18]==2)
							coeff = ch18_coeff_3_5;
						else
							coeff = ch18_coeff_4_5;
						end
					7:	begin
						if(section[18]==0)
							coeff = ch18_coeff_1_4;
						else if(section[18]==1)
							coeff = ch18_coeff_2_4;
						else if(section[18]==2)
							coeff = ch18_coeff_3_4;
						else
							coeff = ch18_coeff_4_4;
						end
					8:	begin
						if(section[18]==0)
							coeff = ch18_coeff_1_3;
						else if(section[18]==1)
							coeff = ch18_coeff_2_3;
						else if(section[18]==2)
							coeff = ch18_coeff_3_3;
						else
							coeff = ch18_coeff_4_3;
						end
					9:	begin
						if(section[18]==0)
							coeff = ch18_coeff_1_2;
						else if(section[18]==1)
							coeff = ch18_coeff_2_2;
						else if(section[18]==2)
							coeff = ch18_coeff_3_2;
						else
							coeff = ch18_coeff_4_2;
						end
					10:	begin
						if(section[18]==0)
							coeff = ch18_coeff_1_1;
						else if(section[18]==1)
							coeff = ch18_coeff_2_1;
						else if(section[18]==2)
							coeff = ch18_coeff_3_1;
						else
							coeff = ch18_coeff_4_1;
						end
					11:	begin
						if(section[18]==0)
							coeff = ch18_coeff_1_0;
						else if(section[18]==1)
							coeff = ch18_coeff_2_0;
						else if(section[18]==2)
							coeff = ch18_coeff_3_0;
						else
							coeff = ch18_coeff_4_0;
						end
				endcase
			end

			19: begin
				case(count)
					1:	begin
						if(section[19]==0)
							coeff = ch19_coeff_1_10;
						else if(section[19]==1)
							coeff = ch19_coeff_2_10;
						else if(section[19]==2)
							coeff = ch19_coeff_3_10;
						else
							coeff = ch19_coeff_4_10;
						end
					2:	begin
						if(section[19]==0)
							coeff = ch19_coeff_1_9;
						else if(section[19]==1)
							coeff = ch19_coeff_2_9;
						else if(section[19]==2)
							coeff = ch19_coeff_3_9;
						else
							coeff = ch19_coeff_4_9;
						end
					3:	begin
						if(section[19]==0)
							coeff = ch19_coeff_1_8;
						else if(section[19]==1)
							coeff = ch19_coeff_2_8;
						else if(section[19]==2)
							coeff = ch19_coeff_3_8;
						else
							coeff = ch19_coeff_4_8;
						end
					4:	begin
						if(section[19]==0)
							coeff = ch19_coeff_1_7;
						else if(section[19]==1)
							coeff = ch19_coeff_2_7;
						else if(section[19]==2)
							coeff = ch19_coeff_3_7;
						else
							coeff = ch19_coeff_4_7;
						end
					5:	begin
						if(section[19]==0)
							coeff = ch19_coeff_1_6;
						else if(section[19]==1)
							coeff = ch19_coeff_2_6;
						else if(section[19]==2)
							coeff = ch19_coeff_3_6;
						else
							coeff = ch19_coeff_4_6;
						end
					6:	begin
						if(section[19]==0)
							coeff = ch19_coeff_1_5;
						else if(section[19]==1)
							coeff = ch19_coeff_2_5;
						else if(section[19]==2)
							coeff = ch19_coeff_3_5;
						else
							coeff = ch19_coeff_4_5;
						end
					7:	begin
						if(section[19]==0)
							coeff = ch19_coeff_1_4;
						else if(section[19]==1)
							coeff = ch19_coeff_2_4;
						else if(section[19]==2)
							coeff = ch19_coeff_3_4;
						else
							coeff = ch19_coeff_4_4;
						end
					8:	begin
						if(section[19]==0)
							coeff = ch19_coeff_1_3;
						else if(section[19]==1)
							coeff = ch19_coeff_2_3;
						else if(section[19]==2)
							coeff = ch19_coeff_3_3;
						else
							coeff = ch19_coeff_4_3;
						end
					9:	begin
						if(section[19]==0)
							coeff = ch19_coeff_1_2;
						else if(section[19]==1)
							coeff = ch19_coeff_2_2;
						else if(section[19]==2)
							coeff = ch19_coeff_3_2;
						else
							coeff = ch19_coeff_4_2;
						end
					10:	begin
						if(section[19]==0)
							coeff = ch19_coeff_1_1;
						else if(section[19]==1)
							coeff = ch19_coeff_2_1;
						else if(section[19]==2)
							coeff = ch19_coeff_3_1;
						else
							coeff = ch19_coeff_4_1;
						end
					11:	begin
						if(section[19]==0)
							coeff = ch19_coeff_1_0;
						else if(section[19]==1)
							coeff = ch19_coeff_2_0;
						else if(section[19]==2)
							coeff = ch19_coeff_3_0;
						else
							coeff = ch19_coeff_4_0;
						end
				endcase
			end

			20: begin
				case(count)
					1:	begin
						if(section[20]==0)
							coeff = ch20_coeff_1_10;
						else if(section[20]==1)
							coeff = ch20_coeff_2_10;
						else if(section[20]==2)
							coeff = ch20_coeff_3_10;
						else
							coeff = ch20_coeff_4_10;
						end
					2:	begin
						if(section[20]==0)
							coeff = ch20_coeff_1_9;
						else if(section[20]==1)
							coeff = ch20_coeff_2_9;
						else if(section[20]==2)
							coeff = ch20_coeff_3_9;
						else
							coeff = ch20_coeff_4_9;
						end
					3:	begin
						if(section[20]==0)
							coeff = ch20_coeff_1_8;
						else if(section[20]==1)
							coeff = ch20_coeff_2_8;
						else if(section[20]==2)
							coeff = ch20_coeff_3_8;
						else
							coeff = ch20_coeff_4_8;
						end
					4:	begin
						if(section[20]==0)
							coeff = ch20_coeff_1_7;
						else if(section[20]==1)
							coeff = ch20_coeff_2_7;
						else if(section[20]==2)
							coeff = ch20_coeff_3_7;
						else
							coeff = ch20_coeff_4_7;
						end
					5:	begin
						if(section[20]==0)
							coeff = ch20_coeff_1_6;
						else if(section[20]==1)
							coeff = ch20_coeff_2_6;
						else if(section[20]==2)
							coeff = ch20_coeff_3_6;
						else
							coeff = ch20_coeff_4_6;
						end
					6:	begin
						if(section[20]==0)
							coeff = ch20_coeff_1_5;
						else if(section[20]==1)
							coeff = ch20_coeff_2_5;
						else if(section[20]==2)
							coeff = ch20_coeff_3_5;
						else
							coeff = ch20_coeff_4_5;
						end
					7:	begin
						if(section[20]==0)
							coeff = ch20_coeff_1_4;
						else if(section[20]==1)
							coeff = ch20_coeff_2_4;
						else if(section[20]==2)
							coeff = ch20_coeff_3_4;
						else
							coeff = ch20_coeff_4_4;
						end
					8:	begin
						if(section[20]==0)
							coeff = ch20_coeff_1_3;
						else if(section[20]==1)
							coeff = ch20_coeff_2_3;
						else if(section[20]==2)
							coeff = ch20_coeff_3_3;
						else
							coeff = ch20_coeff_4_3;
						end
					9:	begin
						if(section[20]==0)
							coeff = ch20_coeff_1_2;
						else if(section[20]==1)
							coeff = ch20_coeff_2_2;
						else if(section[20]==2)
							coeff = ch20_coeff_3_2;
						else
							coeff = ch20_coeff_4_2;
						end
					10:	begin
						if(section[20]==0)
							coeff = ch20_coeff_1_1;
						else if(section[20]==1)
							coeff = ch20_coeff_2_1;
						else if(section[20]==2)
							coeff = ch20_coeff_3_1;
						else
							coeff = ch20_coeff_4_1;
						end
					11:	begin
						if(section[20]==0)
							coeff = ch20_coeff_1_0;
						else if(section[20]==1)
							coeff = ch20_coeff_2_0;
						else if(section[20]==2)
							coeff = ch20_coeff_3_0;
						else
							coeff = ch20_coeff_4_0;
						end
				endcase
			end

			21: begin
				case(count)
					1:	begin
						if(section[21]==0)
							coeff = ch21_coeff_1_10;
						else if(section[21]==1)
							coeff = ch21_coeff_2_10;
						else if(section[21]==2)
							coeff = ch21_coeff_3_10;
						else
							coeff = ch21_coeff_4_10;
						end
					2:	begin
						if(section[21]==0)
							coeff = ch21_coeff_1_9;
						else if(section[21]==1)
							coeff = ch21_coeff_2_9;
						else if(section[21]==2)
							coeff = ch21_coeff_3_9;
						else
							coeff = ch21_coeff_4_9;
						end
					3:	begin
						if(section[21]==0)
							coeff = ch21_coeff_1_8;
						else if(section[21]==1)
							coeff = ch21_coeff_2_8;
						else if(section[21]==2)
							coeff = ch21_coeff_3_8;
						else
							coeff = ch21_coeff_4_8;
						end
					4:	begin
						if(section[21]==0)
							coeff = ch21_coeff_1_7;
						else if(section[21]==1)
							coeff = ch21_coeff_2_7;
						else if(section[21]==2)
							coeff = ch21_coeff_3_7;
						else
							coeff = ch21_coeff_4_7;
						end
					5:	begin
						if(section[21]==0)
							coeff = ch21_coeff_1_6;
						else if(section[21]==1)
							coeff = ch21_coeff_2_6;
						else if(section[21]==2)
							coeff = ch21_coeff_3_6;
						else
							coeff = ch21_coeff_4_6;
						end
					6:	begin
						if(section[21]==0)
							coeff = ch21_coeff_1_5;
						else if(section[21]==1)
							coeff = ch21_coeff_2_5;
						else if(section[21]==2)
							coeff = ch21_coeff_3_5;
						else
							coeff = ch21_coeff_4_5;
						end
					7:	begin
						if(section[21]==0)
							coeff = ch21_coeff_1_4;
						else if(section[21]==1)
							coeff = ch21_coeff_2_4;
						else if(section[21]==2)
							coeff = ch21_coeff_3_4;
						else
							coeff = ch21_coeff_4_4;
						end
					8:	begin
						if(section[21]==0)
							coeff = ch21_coeff_1_3;
						else if(section[21]==1)
							coeff = ch21_coeff_2_3;
						else if(section[21]==2)
							coeff = ch21_coeff_3_3;
						else
							coeff = ch21_coeff_4_3;
						end
					9:	begin
						if(section[21]==0)
							coeff = ch21_coeff_1_2;
						else if(section[21]==1)
							coeff = ch21_coeff_2_2;
						else if(section[21]==2)
							coeff = ch21_coeff_3_2;
						else
							coeff = ch21_coeff_4_2;
						end
					10:	begin
						if(section[21]==0)
							coeff = ch21_coeff_1_1;
						else if(section[21]==1)
							coeff = ch21_coeff_2_1;
						else if(section[21]==2)
							coeff = ch21_coeff_3_1;
						else
							coeff = ch21_coeff_4_1;
						end
					11:	begin
						if(section[21]==0)
							coeff = ch21_coeff_1_0;
						else if(section[21]==1)
							coeff = ch21_coeff_2_0;
						else if(section[21]==2)
							coeff = ch21_coeff_3_0;
						else
							coeff = ch21_coeff_4_0;
						end
				endcase
			end

			22: begin
				case(count)
					1:	begin
						if(section[22]==0)
							coeff = ch22_coeff_1_10;
						else if(section[22]==1)
							coeff = ch22_coeff_2_10;
						else if(section[22]==2)
							coeff = ch22_coeff_3_10;
						else
							coeff = ch22_coeff_4_10;
						end
					2:	begin
						if(section[22]==0)
							coeff = ch22_coeff_1_9;
						else if(section[22]==1)
							coeff = ch22_coeff_2_9;
						else if(section[22]==2)
							coeff = ch22_coeff_3_9;
						else
							coeff = ch22_coeff_4_9;
						end
					3:	begin
						if(section[22]==0)
							coeff = ch22_coeff_1_8;
						else if(section[22]==1)
							coeff = ch22_coeff_2_8;
						else if(section[22]==2)
							coeff = ch22_coeff_3_8;
						else
							coeff = ch22_coeff_4_8;
						end
					4:	begin
						if(section[22]==0)
							coeff = ch22_coeff_1_7;
						else if(section[22]==1)
							coeff = ch22_coeff_2_7;
						else if(section[22]==2)
							coeff = ch22_coeff_3_7;
						else
							coeff = ch22_coeff_4_7;
						end
					5:	begin
						if(section[22]==0)
							coeff = ch22_coeff_1_6;
						else if(section[22]==1)
							coeff = ch22_coeff_2_6;
						else if(section[22]==2)
							coeff = ch22_coeff_3_6;
						else
							coeff = ch22_coeff_4_6;
						end
					6:	begin
						if(section[22]==0)
							coeff = ch22_coeff_1_5;
						else if(section[22]==1)
							coeff = ch22_coeff_2_5;
						else if(section[22]==2)
							coeff = ch22_coeff_3_5;
						else
							coeff = ch22_coeff_4_5;
						end
					7:	begin
						if(section[22]==0)
							coeff = ch22_coeff_1_4;
						else if(section[22]==1)
							coeff = ch22_coeff_2_4;
						else if(section[22]==2)
							coeff = ch22_coeff_3_4;
						else
							coeff = ch22_coeff_4_4;
						end
					8:	begin
						if(section[22]==0)
							coeff = ch22_coeff_1_3;
						else if(section[22]==1)
							coeff = ch22_coeff_2_3;
						else if(section[22]==2)
							coeff = ch22_coeff_3_3;
						else
							coeff = ch22_coeff_4_3;
						end
					9:	begin
						if(section[22]==0)
							coeff = ch22_coeff_1_2;
						else if(section[22]==1)
							coeff = ch22_coeff_2_2;
						else if(section[22]==2)
							coeff = ch22_coeff_3_2;
						else
							coeff = ch22_coeff_4_2;
						end
					10:	begin
						if(section[22]==0)
							coeff = ch22_coeff_1_1;
						else if(section[22]==1)
							coeff = ch22_coeff_2_1;
						else if(section[22]==2)
							coeff = ch22_coeff_3_1;
						else
							coeff = ch22_coeff_4_1;
						end
					11:	begin
						if(section[22]==0)
							coeff = ch22_coeff_1_0;
						else if(section[22]==1)
							coeff = ch22_coeff_2_0;
						else if(section[22]==2)
							coeff = ch22_coeff_3_0;
						else
							coeff = ch22_coeff_4_0;
						end
				endcase
			end

			23: begin
				case(count)
					1:	begin
						if(section[23]==0)
							coeff = ch23_coeff_1_10;
						else if(section[23]==1)
							coeff = ch23_coeff_2_10;
						else if(section[23]==2)
							coeff = ch23_coeff_3_10;
						else
							coeff = ch23_coeff_4_10;
						end
					2:	begin
						if(section[23]==0)
							coeff = ch23_coeff_1_9;
						else if(section[23]==1)
							coeff = ch23_coeff_2_9;
						else if(section[23]==2)
							coeff = ch23_coeff_3_9;
						else
							coeff = ch23_coeff_4_9;
						end
					3:	begin
						if(section[23]==0)
							coeff = ch23_coeff_1_8;
						else if(section[23]==1)
							coeff = ch23_coeff_2_8;
						else if(section[23]==2)
							coeff = ch23_coeff_3_8;
						else
							coeff = ch23_coeff_4_8;
						end
					4:	begin
						if(section[23]==0)
							coeff = ch23_coeff_1_7;
						else if(section[23]==1)
							coeff = ch23_coeff_2_7;
						else if(section[23]==2)
							coeff = ch23_coeff_3_7;
						else
							coeff = ch23_coeff_4_7;
						end
					5:	begin
						if(section[23]==0)
							coeff = ch23_coeff_1_6;
						else if(section[23]==1)
							coeff = ch23_coeff_2_6;
						else if(section[23]==2)
							coeff = ch23_coeff_3_6;
						else
							coeff = ch23_coeff_4_6;
						end
					6:	begin
						if(section[23]==0)
							coeff = ch23_coeff_1_5;
						else if(section[23]==1)
							coeff = ch23_coeff_2_5;
						else if(section[23]==2)
							coeff = ch23_coeff_3_5;
						else
							coeff = ch23_coeff_4_5;
						end
					7:	begin
						if(section[23]==0)
							coeff = ch23_coeff_1_4;
						else if(section[23]==1)
							coeff = ch23_coeff_2_4;
						else if(section[23]==2)
							coeff = ch23_coeff_3_4;
						else
							coeff = ch23_coeff_4_4;
						end
					8:	begin
						if(section[23]==0)
							coeff = ch23_coeff_1_3;
						else if(section[23]==1)
							coeff = ch23_coeff_2_3;
						else if(section[23]==2)
							coeff = ch23_coeff_3_3;
						else
							coeff = ch23_coeff_4_3;
						end
					9:	begin
						if(section[23]==0)
							coeff = ch23_coeff_1_2;
						else if(section[23]==1)
							coeff = ch23_coeff_2_2;
						else if(section[23]==2)
							coeff = ch23_coeff_3_2;
						else
							coeff = ch23_coeff_4_2;
						end
					10:	begin
						if(section[23]==0)
							coeff = ch23_coeff_1_1;
						else if(section[23]==1)
							coeff = ch23_coeff_2_1;
						else if(section[23]==2)
							coeff = ch23_coeff_3_1;
						else
							coeff = ch23_coeff_4_1;
						end
					11:	begin
						if(section[23]==0)
							coeff = ch23_coeff_1_0;
						else if(section[23]==1)
							coeff = ch23_coeff_2_0;
						else if(section[23]==2)
							coeff = ch23_coeff_3_0;
						else
							coeff = ch23_coeff_4_0;
						end
				endcase
			end

			24: begin
				case(count)
					1:	begin
						if(section[24]==0)
							coeff = ch24_coeff_1_10;
						else if(section[24]==1)
							coeff = ch24_coeff_2_10;
						else if(section[24]==2)
							coeff = ch24_coeff_3_10;
						else
							coeff = ch24_coeff_4_10;
						end
					2:	begin
						if(section[24]==0)
							coeff = ch24_coeff_1_9;
						else if(section[24]==1)
							coeff = ch24_coeff_2_9;
						else if(section[24]==2)
							coeff = ch24_coeff_3_9;
						else
							coeff = ch24_coeff_4_9;
						end
					3:	begin
						if(section[24]==0)
							coeff = ch24_coeff_1_8;
						else if(section[24]==1)
							coeff = ch24_coeff_2_8;
						else if(section[24]==2)
							coeff = ch24_coeff_3_8;
						else
							coeff = ch24_coeff_4_8;
						end
					4:	begin
						if(section[24]==0)
							coeff = ch24_coeff_1_7;
						else if(section[24]==1)
							coeff = ch24_coeff_2_7;
						else if(section[24]==2)
							coeff = ch24_coeff_3_7;
						else
							coeff = ch24_coeff_4_7;
						end
					5:	begin
						if(section[24]==0)
							coeff = ch24_coeff_1_6;
						else if(section[24]==1)
							coeff = ch24_coeff_2_6;
						else if(section[24]==2)
							coeff = ch24_coeff_3_6;
						else
							coeff = ch24_coeff_4_6;
						end
					6:	begin
						if(section[24]==0)
							coeff = ch24_coeff_1_5;
						else if(section[24]==1)
							coeff = ch24_coeff_2_5;
						else if(section[24]==2)
							coeff = ch24_coeff_3_5;
						else
							coeff = ch24_coeff_4_5;
						end
					7:	begin
						if(section[24]==0)
							coeff = ch24_coeff_1_4;
						else if(section[24]==1)
							coeff = ch24_coeff_2_4;
						else if(section[24]==2)
							coeff = ch24_coeff_3_4;
						else
							coeff = ch24_coeff_4_4;
						end
					8:	begin
						if(section[24]==0)
							coeff = ch24_coeff_1_3;
						else if(section[24]==1)
							coeff = ch24_coeff_2_3;
						else if(section[24]==2)
							coeff = ch24_coeff_3_3;
						else
							coeff = ch24_coeff_4_3;
						end
					9:	begin
						if(section[24]==0)
							coeff = ch24_coeff_1_2;
						else if(section[24]==1)
							coeff = ch24_coeff_2_2;
						else if(section[24]==2)
							coeff = ch24_coeff_3_2;
						else
							coeff = ch24_coeff_4_2;
						end
					10:	begin
						if(section[24]==0)
							coeff = ch24_coeff_1_1;
						else if(section[24]==1)
							coeff = ch24_coeff_2_1;
						else if(section[24]==2)
							coeff = ch24_coeff_3_1;
						else
							coeff = ch24_coeff_4_1;
						end
					11:	begin
						if(section[24]==0)
							coeff = ch24_coeff_1_0;
						else if(section[24]==1)
							coeff = ch24_coeff_2_0;
						else if(section[24]==2)
							coeff = ch24_coeff_3_0;
						else
							coeff = ch24_coeff_4_0;
						end
				endcase
			end

			25: begin
				case(count)
					1:	begin
						if(section[25]==0)
							coeff = ch25_coeff_1_10;
						else if(section[25]==1)
							coeff = ch25_coeff_2_10;
						else if(section[25]==2)
							coeff = ch25_coeff_3_10;
						else
							coeff = ch25_coeff_4_10;
						end
					2:	begin
						if(section[25]==0)
							coeff = ch25_coeff_1_9;
						else if(section[25]==1)
							coeff = ch25_coeff_2_9;
						else if(section[25]==2)
							coeff = ch25_coeff_3_9;
						else
							coeff = ch25_coeff_4_9;
						end
					3:	begin
						if(section[25]==0)
							coeff = ch25_coeff_1_8;
						else if(section[25]==1)
							coeff = ch25_coeff_2_8;
						else if(section[25]==2)
							coeff = ch25_coeff_3_8;
						else
							coeff = ch25_coeff_4_8;
						end
					4:	begin
						if(section[25]==0)
							coeff = ch25_coeff_1_7;
						else if(section[25]==1)
							coeff = ch25_coeff_2_7;
						else if(section[25]==2)
							coeff = ch25_coeff_3_7;
						else
							coeff = ch25_coeff_4_7;
						end
					5:	begin
						if(section[25]==0)
							coeff = ch25_coeff_1_6;
						else if(section[25]==1)
							coeff = ch25_coeff_2_6;
						else if(section[25]==2)
							coeff = ch25_coeff_3_6;
						else
							coeff = ch25_coeff_4_6;
						end
					6:	begin
						if(section[25]==0)
							coeff = ch25_coeff_1_5;
						else if(section[25]==1)
							coeff = ch25_coeff_2_5;
						else if(section[25]==2)
							coeff = ch25_coeff_3_5;
						else
							coeff = ch25_coeff_4_5;
						end
					7:	begin
						if(section[25]==0)
							coeff = ch25_coeff_1_4;
						else if(section[25]==1)
							coeff = ch25_coeff_2_4;
						else if(section[25]==2)
							coeff = ch25_coeff_3_4;
						else
							coeff = ch25_coeff_4_4;
						end
					8:	begin
						if(section[25]==0)
							coeff = ch25_coeff_1_3;
						else if(section[25]==1)
							coeff = ch25_coeff_2_3;
						else if(section[25]==2)
							coeff = ch25_coeff_3_3;
						else
							coeff = ch25_coeff_4_3;
						end
					9:	begin
						if(section[25]==0)
							coeff = ch25_coeff_1_2;
						else if(section[25]==1)
							coeff = ch25_coeff_2_2;
						else if(section[25]==2)
							coeff = ch25_coeff_3_2;
						else
							coeff = ch25_coeff_4_2;
						end
					10:	begin
						if(section[25]==0)
							coeff = ch25_coeff_1_1;
						else if(section[25]==1)
							coeff = ch25_coeff_2_1;
						else if(section[25]==2)
							coeff = ch25_coeff_3_1;
						else
							coeff = ch25_coeff_4_1;
						end
					11:	begin
						if(section[25]==0)
							coeff = ch25_coeff_1_0;
						else if(section[25]==1)
							coeff = ch25_coeff_2_0;
						else if(section[25]==2)
							coeff = ch25_coeff_3_0;
						else
							coeff = ch25_coeff_4_0;
						end
				endcase
			end

			26: begin
				case(count)
					1:	begin
						if(section[26]==0)
							coeff = ch26_coeff_1_10;
						else if(section[26]==1)
							coeff = ch26_coeff_2_10;
						else if(section[26]==2)
							coeff = ch26_coeff_3_10;
						else
							coeff = ch26_coeff_4_10;
						end
					2:	begin
						if(section[26]==0)
							coeff = ch26_coeff_1_9;
						else if(section[26]==1)
							coeff = ch26_coeff_2_9;
						else if(section[26]==2)
							coeff = ch26_coeff_3_9;
						else
							coeff = ch26_coeff_4_9;
						end
					3:	begin
						if(section[26]==0)
							coeff = ch26_coeff_1_8;
						else if(section[26]==1)
							coeff = ch26_coeff_2_8;
						else if(section[26]==2)
							coeff = ch26_coeff_3_8;
						else
							coeff = ch26_coeff_4_8;
						end
					4:	begin
						if(section[26]==0)
							coeff = ch26_coeff_1_7;
						else if(section[26]==1)
							coeff = ch26_coeff_2_7;
						else if(section[26]==2)
							coeff = ch26_coeff_3_7;
						else
							coeff = ch26_coeff_4_7;
						end
					5:	begin
						if(section[26]==0)
							coeff = ch26_coeff_1_6;
						else if(section[26]==1)
							coeff = ch26_coeff_2_6;
						else if(section[26]==2)
							coeff = ch26_coeff_3_6;
						else
							coeff = ch26_coeff_4_6;
						end
					6:	begin
						if(section[26]==0)
							coeff = ch26_coeff_1_5;
						else if(section[26]==1)
							coeff = ch26_coeff_2_5;
						else if(section[26]==2)
							coeff = ch26_coeff_3_5;
						else
							coeff = ch26_coeff_4_5;
						end
					7:	begin
						if(section[26]==0)
							coeff = ch26_coeff_1_4;
						else if(section[26]==1)
							coeff = ch26_coeff_2_4;
						else if(section[26]==2)
							coeff = ch26_coeff_3_4;
						else
							coeff = ch26_coeff_4_4;
						end
					8:	begin
						if(section[26]==0)
							coeff = ch26_coeff_1_3;
						else if(section[26]==1)
							coeff = ch26_coeff_2_3;
						else if(section[26]==2)
							coeff = ch26_coeff_3_3;
						else
							coeff = ch26_coeff_4_3;
						end
					9:	begin
						if(section[26]==0)
							coeff = ch26_coeff_1_2;
						else if(section[26]==1)
							coeff = ch26_coeff_2_2;
						else if(section[26]==2)
							coeff = ch26_coeff_3_2;
						else
							coeff = ch26_coeff_4_2;
						end
					10:	begin
						if(section[26]==0)
							coeff = ch26_coeff_1_1;
						else if(section[26]==1)
							coeff = ch26_coeff_2_1;
						else if(section[26]==2)
							coeff = ch26_coeff_3_1;
						else
							coeff = ch26_coeff_4_1;
						end
					11:	begin
						if(section[26]==0)
							coeff = ch26_coeff_1_0;
						else if(section[26]==1)
							coeff = ch26_coeff_2_0;
						else if(section[26]==2)
							coeff = ch26_coeff_3_0;
						else
							coeff = ch26_coeff_4_0;
						end
				endcase
			end

			27: begin
				case(count)
					1:	begin
						if(section[27]==0)
							coeff = ch27_coeff_1_10;
						else if(section[27]==1)
							coeff = ch27_coeff_2_10;
						else if(section[27]==2)
							coeff = ch27_coeff_3_10;
						else
							coeff = ch27_coeff_4_10;
						end
					2:	begin
						if(section[27]==0)
							coeff = ch27_coeff_1_9;
						else if(section[27]==1)
							coeff = ch27_coeff_2_9;
						else if(section[27]==2)
							coeff = ch27_coeff_3_9;
						else
							coeff = ch27_coeff_4_9;
						end
					3:	begin
						if(section[27]==0)
							coeff = ch27_coeff_1_8;
						else if(section[27]==1)
							coeff = ch27_coeff_2_8;
						else if(section[27]==2)
							coeff = ch27_coeff_3_8;
						else
							coeff = ch27_coeff_4_8;
						end
					4:	begin
						if(section[27]==0)
							coeff = ch27_coeff_1_7;
						else if(section[27]==1)
							coeff = ch27_coeff_2_7;
						else if(section[27]==2)
							coeff = ch27_coeff_3_7;
						else
							coeff = ch27_coeff_4_7;
						end
					5:	begin
						if(section[27]==0)
							coeff = ch27_coeff_1_6;
						else if(section[27]==1)
							coeff = ch27_coeff_2_6;
						else if(section[27]==2)
							coeff = ch27_coeff_3_6;
						else
							coeff = ch27_coeff_4_6;
						end
					6:	begin
						if(section[27]==0)
							coeff = ch27_coeff_1_5;
						else if(section[27]==1)
							coeff = ch27_coeff_2_5;
						else if(section[27]==2)
							coeff = ch27_coeff_3_5;
						else
							coeff = ch27_coeff_4_5;
						end
					7:	begin
						if(section[27]==0)
							coeff = ch27_coeff_1_4;
						else if(section[27]==1)
							coeff = ch27_coeff_2_4;
						else if(section[27]==2)
							coeff = ch27_coeff_3_4;
						else
							coeff = ch27_coeff_4_4;
						end
					8:	begin
						if(section[27]==0)
							coeff = ch27_coeff_1_3;
						else if(section[27]==1)
							coeff = ch27_coeff_2_3;
						else if(section[27]==2)
							coeff = ch27_coeff_3_3;
						else
							coeff = ch27_coeff_4_3;
						end
					9:	begin
						if(section[27]==0)
							coeff = ch27_coeff_1_2;
						else if(section[27]==1)
							coeff = ch27_coeff_2_2;
						else if(section[27]==2)
							coeff = ch27_coeff_3_2;
						else
							coeff = ch27_coeff_4_2;
						end
					10:	begin
						if(section[27]==0)
							coeff = ch27_coeff_1_1;
						else if(section[27]==1)
							coeff = ch27_coeff_2_1;
						else if(section[27]==2)
							coeff = ch27_coeff_3_1;
						else
							coeff = ch27_coeff_4_1;
						end
					11:	begin
						if(section[27]==0)
							coeff = ch27_coeff_1_0;
						else if(section[27]==1)
							coeff = ch27_coeff_2_0;
						else if(section[27]==2)
							coeff = ch27_coeff_3_0;
						else
							coeff = ch27_coeff_4_0;
						end
				endcase
			end

			28: begin
				case(count)
					1:	begin
						if(section[28]==0)
							coeff = ch28_coeff_1_10;
						else if(section[28]==1)
							coeff = ch28_coeff_2_10;
						else if(section[28]==2)
							coeff = ch28_coeff_3_10;
						else
							coeff = ch28_coeff_4_10;
						end
					2:	begin
						if(section[28]==0)
							coeff = ch28_coeff_1_9;
						else if(section[28]==1)
							coeff = ch28_coeff_2_9;
						else if(section[28]==2)
							coeff = ch28_coeff_3_9;
						else
							coeff = ch28_coeff_4_9;
						end
					3:	begin
						if(section[28]==0)
							coeff = ch28_coeff_1_8;
						else if(section[28]==1)
							coeff = ch28_coeff_2_8;
						else if(section[28]==2)
							coeff = ch28_coeff_3_8;
						else
							coeff = ch28_coeff_4_8;
						end
					4:	begin
						if(section[28]==0)
							coeff = ch28_coeff_1_7;
						else if(section[28]==1)
							coeff = ch28_coeff_2_7;
						else if(section[28]==2)
							coeff = ch28_coeff_3_7;
						else
							coeff = ch28_coeff_4_7;
						end
					5:	begin
						if(section[28]==0)
							coeff = ch28_coeff_1_6;
						else if(section[28]==1)
							coeff = ch28_coeff_2_6;
						else if(section[28]==2)
							coeff = ch28_coeff_3_6;
						else
							coeff = ch28_coeff_4_6;
						end
					6:	begin
						if(section[28]==0)
							coeff = ch28_coeff_1_5;
						else if(section[28]==1)
							coeff = ch28_coeff_2_5;
						else if(section[28]==2)
							coeff = ch28_coeff_3_5;
						else
							coeff = ch28_coeff_4_5;
						end
					7:	begin
						if(section[28]==0)
							coeff = ch28_coeff_1_4;
						else if(section[28]==1)
							coeff = ch28_coeff_2_4;
						else if(section[28]==2)
							coeff = ch28_coeff_3_4;
						else
							coeff = ch28_coeff_4_4;
						end
					8:	begin
						if(section[28]==0)
							coeff = ch28_coeff_1_3;
						else if(section[28]==1)
							coeff = ch28_coeff_2_3;
						else if(section[28]==2)
							coeff = ch28_coeff_3_3;
						else
							coeff = ch28_coeff_4_3;
						end
					9:	begin
						if(section[28]==0)
							coeff = ch28_coeff_1_2;
						else if(section[28]==1)
							coeff = ch28_coeff_2_2;
						else if(section[28]==2)
							coeff = ch28_coeff_3_2;
						else
							coeff = ch28_coeff_4_2;
						end
					10:	begin
						if(section[28]==0)
							coeff = ch28_coeff_1_1;
						else if(section[28]==1)
							coeff = ch28_coeff_2_1;
						else if(section[28]==2)
							coeff = ch28_coeff_3_1;
						else
							coeff = ch28_coeff_4_1;
						end
					11:	begin
						if(section[28]==0)
							coeff = ch28_coeff_1_0;
						else if(section[28]==1)
							coeff = ch28_coeff_2_0;
						else if(section[28]==2)
							coeff = ch28_coeff_3_0;
						else
							coeff = ch28_coeff_4_0;
						end
				endcase
			end

			29: begin
				case(count)
					1:	begin
						if(section[29]==0)
							coeff = ch29_coeff_1_10;
						else if(section[29]==1)
							coeff = ch29_coeff_2_10;
						else if(section[29]==2)
							coeff = ch29_coeff_3_10;
						else
							coeff = ch29_coeff_4_10;
						end
					2:	begin
						if(section[29]==0)
							coeff = ch29_coeff_1_9;
						else if(section[29]==1)
							coeff = ch29_coeff_2_9;
						else if(section[29]==2)
							coeff = ch29_coeff_3_9;
						else
							coeff = ch29_coeff_4_9;
						end
					3:	begin
						if(section[29]==0)
							coeff = ch29_coeff_1_8;
						else if(section[29]==1)
							coeff = ch29_coeff_2_8;
						else if(section[29]==2)
							coeff = ch29_coeff_3_8;
						else
							coeff = ch29_coeff_4_8;
						end
					4:	begin
						if(section[29]==0)
							coeff = ch29_coeff_1_7;
						else if(section[29]==1)
							coeff = ch29_coeff_2_7;
						else if(section[29]==2)
							coeff = ch29_coeff_3_7;
						else
							coeff = ch29_coeff_4_7;
						end
					5:	begin
						if(section[29]==0)
							coeff = ch29_coeff_1_6;
						else if(section[29]==1)
							coeff = ch29_coeff_2_6;
						else if(section[29]==2)
							coeff = ch29_coeff_3_6;
						else
							coeff = ch29_coeff_4_6;
						end
					6:	begin
						if(section[29]==0)
							coeff = ch29_coeff_1_5;
						else if(section[29]==1)
							coeff = ch29_coeff_2_5;
						else if(section[29]==2)
							coeff = ch29_coeff_3_5;
						else
							coeff = ch29_coeff_4_5;
						end
					7:	begin
						if(section[29]==0)
							coeff = ch29_coeff_1_4;
						else if(section[29]==1)
							coeff = ch29_coeff_2_4;
						else if(section[29]==2)
							coeff = ch29_coeff_3_4;
						else
							coeff = ch29_coeff_4_4;
						end
					8:	begin
						if(section[29]==0)
							coeff = ch29_coeff_1_3;
						else if(section[29]==1)
							coeff = ch29_coeff_2_3;
						else if(section[29]==2)
							coeff = ch29_coeff_3_3;
						else
							coeff = ch29_coeff_4_3;
						end
					9:	begin
						if(section[29]==0)
							coeff = ch29_coeff_1_2;
						else if(section[29]==1)
							coeff = ch29_coeff_2_2;
						else if(section[29]==2)
							coeff = ch29_coeff_3_2;
						else
							coeff = ch29_coeff_4_2;
						end
					10:	begin
						if(section[29]==0)
							coeff = ch29_coeff_1_1;
						else if(section[29]==1)
							coeff = ch29_coeff_2_1;
						else if(section[29]==2)
							coeff = ch29_coeff_3_1;
						else
							coeff = ch29_coeff_4_1;
						end
					11:	begin
						if(section[29]==0)
							coeff = ch29_coeff_1_0;
						else if(section[29]==1)
							coeff = ch29_coeff_2_0;
						else if(section[29]==2)
							coeff = ch29_coeff_3_0;
						else
							coeff = ch29_coeff_4_0;
						end
				endcase
			end

			30: begin
				case(count)
					1:	begin
						if(section[30]==0)
							coeff = ch30_coeff_1_10;
						else if(section[30]==1)
							coeff = ch30_coeff_2_10;
						else if(section[30]==2)
							coeff = ch30_coeff_3_10;
						else
							coeff = ch30_coeff_4_10;
						end
					2:	begin
						if(section[30]==0)
							coeff = ch30_coeff_1_9;
						else if(section[30]==1)
							coeff = ch30_coeff_2_9;
						else if(section[30]==2)
							coeff = ch30_coeff_3_9;
						else
							coeff = ch30_coeff_4_9;
						end
					3:	begin
						if(section[30]==0)
							coeff = ch30_coeff_1_8;
						else if(section[30]==1)
							coeff = ch30_coeff_2_8;
						else if(section[30]==2)
							coeff = ch30_coeff_3_8;
						else
							coeff = ch30_coeff_4_8;
						end
					4:	begin
						if(section[30]==0)
							coeff = ch30_coeff_1_7;
						else if(section[30]==1)
							coeff = ch30_coeff_2_7;
						else if(section[30]==2)
							coeff = ch30_coeff_3_7;
						else
							coeff = ch30_coeff_4_7;
						end
					5:	begin
						if(section[30]==0)
							coeff = ch30_coeff_1_6;
						else if(section[30]==1)
							coeff = ch30_coeff_2_6;
						else if(section[30]==2)
							coeff = ch30_coeff_3_6;
						else
							coeff = ch30_coeff_4_6;
						end
					6:	begin
						if(section[30]==0)
							coeff = ch30_coeff_1_5;
						else if(section[30]==1)
							coeff = ch30_coeff_2_5;
						else if(section[30]==2)
							coeff = ch30_coeff_3_5;
						else
							coeff = ch30_coeff_4_5;
						end
					7:	begin
						if(section[30]==0)
							coeff = ch30_coeff_1_4;
						else if(section[30]==1)
							coeff = ch30_coeff_2_4;
						else if(section[30]==2)
							coeff = ch30_coeff_3_4;
						else
							coeff = ch30_coeff_4_4;
						end
					8:	begin
						if(section[30]==0)
							coeff = ch30_coeff_1_3;
						else if(section[30]==1)
							coeff = ch30_coeff_2_3;
						else if(section[30]==2)
							coeff = ch30_coeff_3_3;
						else
							coeff = ch30_coeff_4_3;
						end
					9:	begin
						if(section[30]==0)
							coeff = ch30_coeff_1_2;
						else if(section[30]==1)
							coeff = ch30_coeff_2_2;
						else if(section[30]==2)
							coeff = ch30_coeff_3_2;
						else
							coeff = ch30_coeff_4_2;
						end
					10:	begin
						if(section[30]==0)
							coeff = ch30_coeff_1_1;
						else if(section[30]==1)
							coeff = ch30_coeff_2_1;
						else if(section[30]==2)
							coeff = ch30_coeff_3_1;
						else
							coeff = ch30_coeff_4_1;
						end
					11:	begin
						if(section[30]==0)
							coeff = ch30_coeff_1_0;
						else if(section[30]==1)
							coeff = ch30_coeff_2_0;
						else if(section[30]==2)
							coeff = ch30_coeff_3_0;
						else
							coeff = ch30_coeff_4_0;
						end
				endcase
			end

			31: begin
				case(count)
					1:	begin
						if(section[31]==0)
							coeff = ch31_coeff_1_10;
						else if(section[31]==1)
							coeff = ch31_coeff_2_10;
						else if(section[31]==2)
							coeff = ch31_coeff_3_10;
						else
							coeff = ch31_coeff_4_10;
						end
					2:	begin
						if(section[31]==0)
							coeff = ch31_coeff_1_9;
						else if(section[31]==1)
							coeff = ch31_coeff_2_9;
						else if(section[31]==2)
							coeff = ch31_coeff_3_9;
						else
							coeff = ch31_coeff_4_9;
						end
					3:	begin
						if(section[31]==0)
							coeff = ch31_coeff_1_8;
						else if(section[31]==1)
							coeff = ch31_coeff_2_8;
						else if(section[31]==2)
							coeff = ch31_coeff_3_8;
						else
							coeff = ch31_coeff_4_8;
						end
					4:	begin
						if(section[31]==0)
							coeff = ch31_coeff_1_7;
						else if(section[31]==1)
							coeff = ch31_coeff_2_7;
						else if(section[31]==2)
							coeff = ch31_coeff_3_7;
						else
							coeff = ch31_coeff_4_7;
						end
					5:	begin
						if(section[31]==0)
							coeff = ch31_coeff_1_6;
						else if(section[31]==1)
							coeff = ch31_coeff_2_6;
						else if(section[31]==2)
							coeff = ch31_coeff_3_6;
						else
							coeff = ch31_coeff_4_6;
						end
					6:	begin
						if(section[31]==0)
							coeff = ch31_coeff_1_5;
						else if(section[31]==1)
							coeff = ch31_coeff_2_5;
						else if(section[31]==2)
							coeff = ch31_coeff_3_5;
						else
							coeff = ch31_coeff_4_5;
						end
					7:	begin
						if(section[31]==0)
							coeff = ch31_coeff_1_4;
						else if(section[31]==1)
							coeff = ch31_coeff_2_4;
						else if(section[31]==2)
							coeff = ch31_coeff_3_4;
						else
							coeff = ch31_coeff_4_4;
						end
					8:	begin
						if(section[31]==0)
							coeff = ch31_coeff_1_3;
						else if(section[31]==1)
							coeff = ch31_coeff_2_3;
						else if(section[31]==2)
							coeff = ch31_coeff_3_3;
						else
							coeff = ch31_coeff_4_3;
						end
					9:	begin
						if(section[31]==0)
							coeff = ch31_coeff_1_2;
						else if(section[31]==1)
							coeff = ch31_coeff_2_2;
						else if(section[31]==2)
							coeff = ch31_coeff_3_2;
						else
							coeff = ch31_coeff_4_2;
						end
					10:	begin
						if(section[31]==0)
							coeff = ch31_coeff_1_1;
						else if(section[31]==1)
							coeff = ch31_coeff_2_1;
						else if(section[31]==2)
							coeff = ch31_coeff_3_1;
						else
							coeff = ch31_coeff_4_1;
						end
					11:	begin
						if(section[31]==0)
							coeff = ch31_coeff_1_0;
						else if(section[31]==1)
							coeff = ch31_coeff_2_0;
						else if(section[31]==2)
							coeff = ch31_coeff_3_0;
						else
							coeff = ch31_coeff_4_0;
						end
				endcase
			end
		endcase

	end

//	output srdyo
	always @(posedge clk) begin
		// if((count == 11 && ((ct >= 15) || (ct <= 4))) || (count == 12 && ct < 15 && ct >= 5)) 
		// 	srdyo_z <= 1;
		// else
		// 	srdyo_z <= 0;
		if(count == 12 && ct == 18)
			srdyo_out <= 1;
		else if(count == 12 && ct == 19)
			srdyo_out <= 0;
		else 
			srdyo_out <= 0;
	end

//	to x_lin
	always @(posedge clk) begin
		if(count == 11) begin
			case(ct)
				19: out[0] <= x_lin;
				20: out[1] <= x_lin;
				21: out[2] <= x_lin;
				22: out[3] <= x_lin;
				23: out[4] <= x_lin;
				24: out[5] <= x_lin;
				25: out[6] <= x_lin;
				26: out[7] <= x_lin;
				27: out[8] <= x_lin;
				28: out[9] <= x_lin;
				29: out[10] <= x_lin;
				30: out[11] <= x_lin;
				31: out[12] <= x_lin;

				0: out[13] <= x_lin;
				1: out[14] <= x_lin;
				2: out[15] <= x_lin;
				3: out[16] <= x_lin;
				4: out[17] <= x_lin;
			endcase
		end

		if(count == 12) begin
			case(ct)
				5: out[18] <= x_lin;
				6: out[19] <= x_lin;
				7: out[20] <= x_lin;
				8: out[21] <= x_lin;
				9: out[22] <= x_lin;
				10: out[23] <= x_lin;
				11: out[24] <= x_lin;
				12: out[25] <= x_lin;
				13: out[26] <= x_lin;
				14: out[27] <= x_lin;
				15: out[28] <= x_lin;
				16: out[29] <= x_lin;
				17: out[30] <= x_lin;
				18: out[31] <= x_lin;

			endcase
		end
	end

	assign srdyo = srdyo_out;

	assign ch0_x_lin = out[0];
	assign ch1_x_lin = out[1];
	assign ch2_x_lin = out[2];
	assign ch3_x_lin = out[3];
	assign ch4_x_lin = out[4];
	assign ch5_x_lin = out[5];
	assign ch6_x_lin = out[6];
	assign ch7_x_lin = out[7];
	assign ch8_x_lin = out[8];
	assign ch9_x_lin = out[9];
	assign ch10_x_lin = out[10];
	assign ch11_x_lin = out[11];
	assign ch12_x_lin = out[12];
	assign ch13_x_lin = out[13];
	assign ch14_x_lin = out[14];
	assign ch15_x_lin = out[15];
	assign ch16_x_lin = out[16];
	assign ch17_x_lin = out[17];
	assign ch18_x_lin = out[18];
	assign ch19_x_lin = out[19];
	assign ch20_x_lin = out[20];
	assign ch21_x_lin = out[21];
	assign ch22_x_lin = out[22];
	assign ch23_x_lin = out[23];
	assign ch24_x_lin = out[24];
	assign ch25_x_lin = out[25];
	assign ch26_x_lin = out[26];
	assign ch27_x_lin = out[27];
	assign ch28_x_lin = out[28];
	assign ch29_x_lin = out[29];
	assign ch30_x_lin = out[30];
	assign ch31_x_lin = out[31];


endmodule

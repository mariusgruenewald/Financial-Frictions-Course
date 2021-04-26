function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = BGGsticky.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(143, 1);
lhs = y(56);
rhs = (y(55)-params(3)*y(1))^T(1)-params(3)*params(2)*(y(197)-y(55)*params(3))^T(1);
residual(1) = lhs - rhs;
lhs = y(57);
rhs = y(56)*params(2)/y(2);
residual(2) = lhs - rhs;
lhs = y(198)*y(59);
rhs = 1;
residual(3) = lhs - rhs;
lhs = y(56)*y(90)*(1-params(1))*y(89);
rhs = y(58)*params(4)*T(2);
residual(4) = lhs - rhs;
lhs = y(89);
rhs = T(3)*T(33);
residual(5) = lhs - rhs;
lhs = y(89);
rhs = y(60)*y(85);
residual(6) = lhs - rhs;
lhs = y(62);
rhs = y(89)*y(90)*(1-params(1))/y(58);
residual(7) = lhs - rhs;
lhs = y(63);
rhs = y(90)*params(1)*y(89)/y(3);
residual(8) = lhs - rhs;
lhs = y(61);
rhs = (1-y(138))*y(74)+y(3)*(1-params(6));
residual(9) = lhs - rhs;
lhs = y(140);
rhs = y(74)/y(7);
residual(10) = lhs - rhs;
lhs = y(138);
rhs = params(10)*(y(140)-1)^2;
residual(11) = lhs - rhs;
lhs = y(139);
rhs = (y(140)-1)*2*params(10);
residual(12) = lhs - rhs;
lhs = y(75)*(1-y(138)-y(140)*y(139))+y(198)*y(202)*y(214)*T(4);
rhs = 1;
residual(13) = lhs - rhs;
lhs = y(65);
rhs = (y(63)+(1-params(6))*y(75))/y(8);
residual(14) = lhs - rhs;
lhs = y(61)*y(75);
rhs = y(68)+y(66);
residual(15) = lhs - rhs;
lhs = y(66);
rhs = y(3)*y(8)*y(65)*(y(91)+params(7))*(1-y(135));
residual(16) = lhs - rhs;
lhs = y(69);
rhs = y(3)*y(8)*y(65)*(1-y(135))*(1-params(7))*(1-y(91));
residual(17) = lhs - rhs;
lhs = y(66)*y(67);
rhs = y(61)*y(75);
residual(18) = lhs - rhs;
lhs = y(67)*y(200)*(y(213)-y(93)*y(212));
rhs = y(199)*(y(67)-1);
residual(19) = lhs - rhs;
lhs = y(72);
rhs = y(5)*(y(3)*y(8)-y(6))/(y(3)*y(8)*y(65)*y(83));
residual(20) = lhs - rhs;
lhs = y(70);
rhs = y(136)/(y(136)*(y(135)-y(93)*y(134))+(1-y(135))*(y(136)-y(93)*y(137)));
residual(21) = lhs - rhs;
lhs = y(71);
rhs = y(59)*y(70);
residual(22) = lhs - rhs;
lhs = y(200);
rhs = y(201);
residual(23) = lhs - rhs;
lhs = y(133);
rhs = T(6);
residual(24) = lhs - rhs;
lhs = y(134);
rhs = 1-normcdf(T(7),0,1);
residual(25) = lhs - rhs;
lhs = y(135);
rhs = y(134)+y(72)*(1-y(133));
residual(26) = lhs - rhs;
lhs = y(136);
rhs = 1-y(133);
residual(27) = lhs - rhs;
lhs = y(137);
rhs = 1/(y(72)*y(92)*2.506628274631)*T(9);
residual(28) = lhs - rhs;
lhs = y(60);
rhs = y(74)+y(55)+y(69)+y(77)+y(3)*y(8)*y(65)*y(93)*y(134);
residual(29) = lhs - rhs;
lhs = y(77);
rhs = y(78);
residual(30) = lhs - rhs;
lhs = y(77);
rhs = y(95)*params(9)*(steady_state(6));
residual(31) = lhs - rhs;
lhs = y(79);
rhs = y(65)-y(59);
residual(32) = lhs - rhs;
lhs = y(85);
rhs = T(11)*T(12)+(1-params(15))*(y(82)/y(83))^(-params(14));
residual(33) = lhs - rhs;
lhs = y(87);
rhs = y(90)*y(60)+y(198)*params(15)*T(13)*T(14)*y(205);
residual(34) = lhs - rhs;
lhs = y(86);
rhs = y(60)+y(198)*params(15)*T(15)*T(16)*y(204);
residual(35) = lhs - rhs;
lhs = y(82);
rhs = y(83)*T(17);
residual(36) = lhs - rhs;
lhs = y(83)^(1-params(14));
rhs = params(15)*y(9)^(params(17)*(1-params(14)))+(1-params(15))*y(82)^(1-params(14));
residual(37) = lhs - rhs;
lhs = y(84);
rhs = y(59)*y(203);
residual(38) = lhs - rhs;
lhs = log(y(84)/(steady_state(31)));
rhs = params(13)*log(y(10)/(steady_state(31)))+(1-params(13))*params(12)*log(y(83)/(steady_state(30)))+(1-params(13))*params(11)*log(T(19))+x(it_, 2);
residual(39) = lhs - rhs;
lhs = y(88);
rhs = 1/y(90);
residual(40) = lhs - rhs;
lhs = y(91);
rhs = (steady_state(38));
residual(41) = lhs - rhs;
lhs = y(94);
rhs = (steady_state(41));
residual(42) = lhs - rhs;
lhs = y(93);
rhs = (steady_state(40));
residual(43) = lhs - rhs;
lhs = y(115);
rhs = (y(114)-params(3)*y(22))^T(1)-params(3)*params(2)*(y(206)-params(3)*y(114))^T(1);
residual(44) = lhs - rhs;
lhs = y(116);
rhs = params(2)*y(115)/y(23);
residual(45) = lhs - rhs;
lhs = y(207)*y(118);
rhs = 1;
residual(46) = lhs - rhs;
lhs = y(207)*y(208);
rhs = 1;
residual(47) = lhs - rhs;
lhs = y(119)*(1-params(1))*y(115);
rhs = params(4)*y(117)*T(20);
residual(48) = lhs - rhs;
lhs = y(119);
rhs = T(21)*y(64)*T(34);
residual(49) = lhs - rhs;
lhs = y(129);
rhs = params(1)*y(119)/y(24);
residual(50) = lhs - rhs;
lhs = y(122);
rhs = (y(129)+(1-params(6))*y(124))/y(26);
residual(51) = lhs - rhs;
lhs = y(132);
rhs = y(123)/y(25);
residual(52) = lhs - rhs;
lhs = y(130);
rhs = params(10)*(y(132)-1)^2;
residual(53) = lhs - rhs;
lhs = y(131);
rhs = 2*params(10)*(y(132)-1);
residual(54) = lhs - rhs;
lhs = y(124)*(1-y(130)-y(132)*y(131))+y(207)*y(209)*y(210)*T(22);
rhs = 1;
residual(55) = lhs - rhs;
lhs = y(121);
rhs = (1-params(1))*y(119)/y(117);
residual(56) = lhs - rhs;
lhs = y(119);
rhs = y(123)+y(114)+y(125);
residual(57) = lhs - rhs;
lhs = y(120);
rhs = y(123)+(1-params(6))*y(24);
residual(58) = lhs - rhs;
lhs = y(125);
rhs = y(126);
residual(59) = lhs - rhs;
lhs = y(125);
rhs = params(9)*(steady_state(66));
residual(60) = lhs - rhs;
lhs = y(128);
rhs = 1;
residual(61) = lhs - rhs;
lhs = y(127);
rhs = y(119)/y(60);
residual(62) = lhs - rhs;
lhs = y(73);
rhs = y(133);
residual(63) = lhs - rhs;
lhs = y(141);
rhs = y(60)/(steady_state(6));
residual(64) = lhs - rhs;
lhs = y(153);
rhs = y(61)/(steady_state(7));
residual(65) = lhs - rhs;
lhs = y(143);
rhs = y(74)/(steady_state(21));
residual(66) = lhs - rhs;
lhs = y(142);
rhs = y(55)/(steady_state(1));
residual(67) = lhs - rhs;
lhs = y(144);
rhs = y(62)/(steady_state(8));
residual(68) = lhs - rhs;
lhs = y(155);
rhs = y(58)/(steady_state(4));
residual(69) = lhs - rhs;
lhs = y(146);
rhs = y(75)/(steady_state(22));
residual(70) = lhs - rhs;
lhs = y(145);
rhs = y(59)/(steady_state(5));
residual(71) = lhs - rhs;
lhs = y(150);
rhs = y(65)/(steady_state(11));
residual(72) = lhs - rhs;
lhs = y(147);
rhs = y(84)/(steady_state(31));
residual(73) = lhs - rhs;
lhs = y(148);
rhs = y(83)/(steady_state(30));
residual(74) = lhs - rhs;
lhs = y(152);
rhs = y(217)-y(216);
residual(75) = lhs - rhs;
lhs = y(151);
rhs = y(66)/(steady_state(13));
residual(76) = lhs - rhs;
lhs = y(154);
rhs = y(70)/(steady_state(17));
residual(77) = lhs - rhs;
lhs = y(157);
rhs = 1;
residual(78) = lhs - rhs;
lhs = y(156);
rhs = y(67)/(steady_state(14));
residual(79) = lhs - rhs;
lhs = y(149);
rhs = y(127)/(steady_state(74));
residual(80) = lhs - rhs;
lhs = y(158);
rhs = y(68)/(steady_state(15));
residual(81) = lhs - rhs;
lhs = y(159);
rhs = T(18);
residual(82) = lhs - rhs;
lhs = y(168);
rhs = y(120)/(steady_state(67));
residual(83) = lhs - rhs;
lhs = y(161);
rhs = y(123)/(steady_state(70));
residual(84) = lhs - rhs;
lhs = y(160);
rhs = y(114)/(steady_state(61));
residual(85) = lhs - rhs;
lhs = y(162);
rhs = y(121)/(steady_state(68));
residual(86) = lhs - rhs;
lhs = y(165);
rhs = y(117)/(steady_state(64));
residual(87) = lhs - rhs;
lhs = y(166);
rhs = y(124)/(steady_state(71));
residual(88) = lhs - rhs;
lhs = y(163);
rhs = y(118)/(steady_state(65));
residual(89) = lhs - rhs;
lhs = y(167);
rhs = y(122)/(steady_state(69));
residual(90) = lhs - rhs;
lhs = y(164);
rhs = y(218)-y(163);
residual(91) = lhs - rhs;
lhs = log(y(64));
rhs = 0.75*log(y(4))+x(it_, 1);
residual(92) = lhs - rhs;
lhs = log(y(95));
rhs = 0.75*log(y(13))+x(it_, 3);
residual(93) = lhs - rhs;
lhs = log(y(92)/y(94));
rhs = params(19)*log(y(12)/y(94))+y(105)+log(y(14))+log(y(27))+log(y(29))+log(y(32))+log(y(36))+log(y(41))+log(y(47))+log(y(54));
residual(94) = lhs - rhs;
lhs = y(105);
rhs = log(y(96));
residual(95) = lhs - rhs;
lhs = y(106);
rhs = log(y(97));
residual(96) = lhs - rhs;
lhs = y(107);
rhs = log(y(98));
residual(97) = lhs - rhs;
lhs = y(108);
rhs = log(y(99));
residual(98) = lhs - rhs;
lhs = y(109);
rhs = log(y(100));
residual(99) = lhs - rhs;
lhs = y(110);
rhs = log(y(101));
residual(100) = lhs - rhs;
lhs = y(111);
rhs = log(y(102));
residual(101) = lhs - rhs;
lhs = y(112);
rhs = log(y(103));
residual(102) = lhs - rhs;
lhs = y(113);
rhs = log(y(104));
residual(103) = lhs - rhs;
lhs = log(y(104));
rhs = params(21)*x(it_, 11);
residual(104) = lhs - rhs;
lhs = log(y(103));
rhs = x(it_, 11)*params(21)*params(20)+T(25)*x(it_, 10);
residual(105) = lhs - rhs;
lhs = log(y(102));
rhs = x(it_, 11)*params(21)*T(23)+x(it_, 10)*params(21)*params(20)*T(24)+T(25)*x(it_, 9);
residual(106) = lhs - rhs;
lhs = log(y(101));
rhs = x(it_, 11)*params(21)*T(26)+x(it_, 10)*params(21)*T(23)*T(24)+params(21)*params(20)*T(24)*x(it_, 9)+T(25)*x(it_, 8);
residual(107) = lhs - rhs;
lhs = log(y(100));
rhs = x(it_, 11)*params(21)*T(27)+x(it_, 10)*params(21)*T(24)*T(26)+x(it_, 9)*params(21)*T(23)*T(24)+params(21)*params(20)*T(24)*x(it_, 8)+T(25)*x(it_, 7);
residual(108) = lhs - rhs;
lhs = log(y(99));
rhs = x(it_, 11)*params(21)*T(28)+x(it_, 10)*params(21)*T(24)*T(27)+x(it_, 9)*params(21)*T(24)*T(26)+params(21)*T(23)*T(24)*x(it_, 8)+params(21)*params(20)*T(24)*x(it_, 7)+T(25)*x(it_, 6);
residual(109) = lhs - rhs;
lhs = log(y(98));
rhs = x(it_, 11)*params(21)*T(29)+x(it_, 10)*params(21)*T(24)*T(28)+x(it_, 9)*params(21)*T(24)*T(27)+x(it_, 8)*params(21)*T(24)*T(26)+params(21)*T(23)*T(24)*x(it_, 7)+params(21)*params(20)*T(24)*x(it_, 6)+T(25)*x(it_, 5);
residual(110) = lhs - rhs;
lhs = log(y(97));
rhs = x(it_, 11)*params(21)*T(30)+x(it_, 10)*params(21)*T(24)*T(29)+x(it_, 9)*params(21)*T(24)*T(28)+x(it_, 8)*params(21)*T(24)*T(27)+params(21)*T(24)*T(26)*x(it_, 7)+params(21)*T(23)*T(24)*x(it_, 6)+params(21)*params(20)*T(24)*x(it_, 5)+T(25)*x(it_, 4);
residual(111) = lhs - rhs;
lhs = log(y(96));
rhs = x(it_, 11)*T(31)+x(it_, 10)*params(22)*T(24)*T(30)+x(it_, 9)*T(24)*T(29)*params(22)+x(it_, 8)*T(24)*T(28)*params(22)+x(it_, 7)*T(24)*T(27)*params(22)+x(it_, 6)*T(24)*T(26)*params(22)+x(it_, 5)*T(23)*T(24)*params(22)+x(it_, 4)*params(20)*T(24)*params(22)+T(24)*params(22)*x(it_, 12);
residual(112) = lhs - rhs;
lhs = y(81);
rhs = 1;
residual(113) = lhs - rhs;
lhs = y(80);
rhs = 1;
residual(114) = lhs - rhs;
lhs = y(76);
rhs = 1;
residual(115) = lhs - rhs;
lhs = y(169);
rhs = y(15);
residual(116) = lhs - rhs;
lhs = y(170);
rhs = y(16);
residual(117) = lhs - rhs;
lhs = y(171);
rhs = y(28);
residual(118) = lhs - rhs;
lhs = y(172);
rhs = y(17);
residual(119) = lhs - rhs;
lhs = y(173);
rhs = y(30);
residual(120) = lhs - rhs;
lhs = y(174);
rhs = y(31);
residual(121) = lhs - rhs;
lhs = y(175);
rhs = y(18);
residual(122) = lhs - rhs;
lhs = y(176);
rhs = y(33);
residual(123) = lhs - rhs;
lhs = y(177);
rhs = y(34);
residual(124) = lhs - rhs;
lhs = y(178);
rhs = y(35);
residual(125) = lhs - rhs;
lhs = y(179);
rhs = y(19);
residual(126) = lhs - rhs;
lhs = y(180);
rhs = y(37);
residual(127) = lhs - rhs;
lhs = y(181);
rhs = y(38);
residual(128) = lhs - rhs;
lhs = y(182);
rhs = y(39);
residual(129) = lhs - rhs;
lhs = y(183);
rhs = y(40);
residual(130) = lhs - rhs;
lhs = y(184);
rhs = y(20);
residual(131) = lhs - rhs;
lhs = y(185);
rhs = y(42);
residual(132) = lhs - rhs;
lhs = y(186);
rhs = y(43);
residual(133) = lhs - rhs;
lhs = y(187);
rhs = y(44);
residual(134) = lhs - rhs;
lhs = y(188);
rhs = y(45);
residual(135) = lhs - rhs;
lhs = y(189);
rhs = y(46);
residual(136) = lhs - rhs;
lhs = y(190);
rhs = y(21);
residual(137) = lhs - rhs;
lhs = y(191);
rhs = y(48);
residual(138) = lhs - rhs;
lhs = y(192);
rhs = y(49);
residual(139) = lhs - rhs;
lhs = y(193);
rhs = y(50);
residual(140) = lhs - rhs;
lhs = y(194);
rhs = y(51);
residual(141) = lhs - rhs;
lhs = y(195);
rhs = y(52);
residual(142) = lhs - rhs;
lhs = y(196);
rhs = y(53);
residual(143) = lhs - rhs;

end

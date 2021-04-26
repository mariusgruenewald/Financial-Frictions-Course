function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = BGGflexi.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(54, 78);
g1(1,11)=(-(T(12)-params(3)*params(2)*T(12)));
g1(1,12)=1;
g1(2,1)=(-((-(y(12)*params(2)))/(y(1)*y(1))));
g1(2,12)=(-(params(2)/y(1)));
g1(2,13)=1;
g1(3,64)=y(15);
g1(3,15)=y(64);
g1(4,12)=(1-params(1))*y(16);
g1(4,14)=(-(params(4)*T(2)+y(14)*params(4)*getPowerDeriv(y(14),params(5),1)));
g1(4,16)=y(12)*(1-params(1));
g1(5,14)=(-(T(4)*getPowerDeriv(y(14),1-params(1),1)));
g1(5,16)=1;
g1(5,2)=(-(T(5)*y(20)*y(31)*T(13)));
g1(5,20)=(-(T(3)*T(5)));
g1(5,31)=(-(T(5)*y(20)*y(2)*T(13)));
g1(6,14)=(-((-((1-params(1))*y(16)))/(y(14)*y(14))));
g1(6,16)=(-((1-params(1))/y(14)));
g1(6,18)=1;
g1(7,16)=(-(params(1)/(y(31)*y(2))));
g1(7,2)=(-((-(y(31)*params(1)*y(16)))/(y(31)*y(2)*y(31)*y(2))));
g1(7,19)=1;
g1(7,31)=(-((-(y(2)*params(1)*y(16)))/(y(31)*y(2)*y(31)*y(2))));
g1(8,2)=(-(1-params(6)));
g1(8,17)=1;
g1(8,29)=(-(1-y(42)));
g1(8,42)=y(29);
g1(9,6)=(-((-y(29))/(y(6)*y(6))));
g1(9,29)=(-(1/y(6)));
g1(9,41)=1;
g1(10,41)=(-(params(8)*2*(y(41)-1)));
g1(10,42)=1;
g1(11,41)=(-(2*params(8)));
g1(11,43)=1;
g1(12,64)=T(6)*y(68)*y(70);
g1(12,30)=1-y(42)-y(41)*y(43);
g1(12,68)=T(6)*y(64)*y(70);
g1(12,41)=y(30)*(-y(43));
g1(12,69)=y(64)*y(68)*y(70)*2*y(69);
g1(12,42)=(-y(30));
g1(12,43)=y(30)*(-y(41));
g1(12,70)=y(64)*y(68)*T(6);
g1(13,28)=(-T(14));
g1(13,36)=(-(T(16)+T(15)*(-0.5)*2*y(36)));
g1(13,44)=1;
g1(14,28)=(-(1/y(28)))/y(36)*T(17);
g1(14,36)=T(17)*(y(36)*0.5*2*y(36)-(0.5*T(7)-log(y(28))))/(y(36)*y(36));
g1(14,45)=1;
g1(15,28)=(-(1-y(44)));
g1(15,44)=y(28);
g1(15,45)=(-1);
g1(15,46)=1;
g1(16,44)=1;
g1(16,47)=1;
g1(17,28)=(-(T(11)*(-(y(36)*2.506628274631))/(y(28)*y(36)*2.506628274631*y(28)*y(36)*2.506628274631)+1/(y(28)*y(36)*2.506628274631)*T(11)*(-(1/y(28)*2*(log(y(28))+T(7)*.5)))/(2*T(7))));
g1(17,36)=(-(T(11)*(-(y(28)*2.506628274631))/(y(28)*y(36)*2.506628274631*y(28)*y(36)*2.506628274631)+1/(y(28)*y(36)*2.506628274631)*T(11)*(2*T(7)*(-(2*(log(y(28))+T(7)*.5)*.5*2*y(36)))-T(10)*2*2*y(36))/(2*T(7)*2*T(7))));
g1(17,48)=1;
g1(18,19)=(-(y(31)/y(7)));
g1(18,21)=1;
g1(18,7)=(-((-(y(31)*(y(19)+(1-params(6))*y(30))))/(y(7)*y(7))));
g1(18,30)=(-(y(31)*(1-params(6))/y(7)));
g1(18,31)=(-((y(19)+(1-params(6))*y(30))/y(7)));
g1(19,17)=y(30);
g1(19,22)=(-1);
g1(19,24)=(-1);
g1(19,30)=y(17);
g1(20,2)=(-(y(7)*y(21)*(y(35)+params(7))*(1-y(46))));
g1(20,21)=(-(y(2)*y(7)*(y(35)+params(7))*(1-y(46))));
g1(20,22)=1;
g1(20,7)=(-(y(2)*y(21)*(y(35)+params(7))*(1-y(46))));
g1(20,35)=(-(y(2)*y(7)*y(21)*(1-y(46))));
g1(20,46)=(-(y(2)*y(7)*y(21)*(-(y(35)+params(7)))));
g1(21,2)=(-(y(7)*y(21)*(1-y(46))*(1-params(7))*(1-y(35))));
g1(21,21)=(-(y(2)*y(7)*(1-y(46))*(1-params(7))*(1-y(35))));
g1(21,25)=1;
g1(21,7)=(-(y(2)*y(21)*(1-y(46))*(1-params(7))*(1-y(35))));
g1(21,35)=(-(y(2)*y(7)*y(21)*(1-y(46))*(-(1-params(7)))));
g1(21,46)=(-(y(2)*y(7)*y(21)*(-((1-params(7))*(1-y(35))))));
g1(22,17)=(-y(30));
g1(22,22)=y(23);
g1(22,23)=y(22);
g1(22,30)=(-y(17));
g1(23,65)=(-(y(23)-1));
g1(23,66)=y(23)*(y(72)-y(38)*y(71));
g1(23,23)=y(66)*(y(72)-y(38)*y(71))-y(65);
g1(23,38)=y(23)*y(66)*(-y(71));
g1(23,71)=y(23)*y(66)*(-y(38));
g1(23,72)=y(23)*y(66);
g1(24,2)=(-((y(2)*y(21)*y(7)*y(7)*y(4)-y(4)*(y(2)*y(7)-y(5))*y(21)*y(7))/(y(2)*y(21)*y(7)*y(2)*y(21)*y(7))));
g1(24,21)=(-((-(y(2)*y(7)*y(4)*(y(2)*y(7)-y(5))))/(y(2)*y(21)*y(7)*y(2)*y(21)*y(7))));
g1(24,4)=(-((y(2)*y(7)-y(5))/(y(2)*y(21)*y(7))));
g1(24,5)=(-((-y(4))/(y(2)*y(21)*y(7))));
g1(24,28)=1;
g1(24,7)=(-((y(2)*y(21)*y(7)*y(2)*y(4)-y(4)*(y(2)*y(7)-y(5))*y(2)*y(21))/(y(2)*y(21)*y(7)*y(2)*y(21)*y(7))));
g1(25,26)=1;
g1(25,38)=(-((-(y(47)*(y(47)*(-y(45))+(1-y(46))*(-y(48)))))/T(18)));
g1(25,45)=(-((-(y(47)*y(47)*(-y(38))))/T(18)));
g1(25,46)=(-((-(y(47)*(y(47)-(y(47)-y(48)*y(38)))))/T(18)));
g1(25,47)=(-((y(47)*(y(46)-y(45)*y(38))+(1-y(46))*(y(47)-y(48)*y(38))-y(47)*(1-y(46)+y(46)-y(45)*y(38)))/T(18)));
g1(25,48)=(-((-(y(47)*(1-y(46))*(-y(38))))/T(18)));
g1(26,15)=(-y(26));
g1(26,26)=(-y(15));
g1(26,27)=1;
g1(27,66)=1;
g1(27,67)=(-1);
g1(28,11)=(-1);
g1(28,16)=1;
g1(28,2)=(-(y(7)*y(21)*y(45)*y(38)));
g1(28,21)=(-(y(2)*y(7)*y(45)*y(38)));
g1(28,25)=(-1);
g1(28,29)=(-1);
g1(28,7)=(-(y(2)*y(21)*y(45)*y(38)));
g1(28,32)=(-1);
g1(28,38)=(-(y(2)*y(7)*y(45)*y(21)));
g1(28,45)=(-(y(2)*y(7)*y(21)*y(38)));
g1(29,32)=1;
g1(29,33)=(-1);
g1(30,32)=1;
g1(31,15)=1;
g1(31,66)=(-1);
g1(31,34)=1;
g1(32,3)=(-(0.75*1/y(3)));
g1(32,20)=1/y(20);
g1(32,75)=(-1);
g1(33,10)=(-(params(11)*1/y(10)));
g1(33,40)=1/y(40);
g1(33,76)=(-1);
g1(34,9)=(-(params(10)*1/y(37)/(y(9)/y(37))));
g1(34,36)=1/y(37)/(y(36)/y(37));
g1(34,37)=(-y(36))/(y(37)*y(37))/(y(36)/y(37))-params(10)*(-y(9))/(y(37)*y(37))/(y(9)/y(37));
g1(34,78)=(-0.07);
g1(35,8)=(-(params(11)*1/y(8)));
g1(35,31)=1/y(31);
g1(35,77)=1;
g1(36,39)=1;
g1(36,44)=(-1);
g1(37,16)=(-(1/(steady_state(6))));
g1(37,49)=1;
g1(38,17)=(-(1/(steady_state(7))));
g1(38,58)=1;
g1(39,29)=(-(1/(steady_state(20))));
g1(39,51)=1;
g1(40,11)=(-(1/(steady_state(1))));
g1(40,50)=1;
g1(41,18)=(-(1/(steady_state(8))));
g1(41,52)=1;
g1(42,14)=(-(1/(steady_state(4))));
g1(42,60)=1;
g1(43,30)=(-(1/(steady_state(21))));
g1(43,54)=1;
g1(44,15)=(-(1/(steady_state(5))));
g1(44,53)=1;
g1(45,21)=(-(1/(steady_state(11))));
g1(45,55)=1;
g1(46,73)=1;
g1(46,74)=(-1);
g1(46,57)=1;
g1(47,22)=(-(1/(steady_state(13))));
g1(47,56)=1;
g1(48,26)=(-(1/(steady_state(17))));
g1(48,59)=1;
g1(49,31)=(-(1/(steady_state(22))));
g1(49,62)=1;
g1(50,23)=(-(1/(steady_state(14))));
g1(50,61)=1;
g1(51,24)=(-(1/(steady_state(15))));
g1(51,63)=1;
g1(52,35)=1;
g1(53,37)=1;
g1(54,38)=1;

end

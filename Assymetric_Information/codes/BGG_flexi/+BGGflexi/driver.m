%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'BGGflexi';
M_.dynare_version = '4.6.3';
oo_.dynare_version = '4.6.3';
options_.dynare_version = '4.6.3';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('BGGflexi.log');
M_.exo_names = cell(4,1);
M_.exo_names_tex = cell(4,1);
M_.exo_names_long = cell(4,1);
M_.exo_names(1) = {'e_A'};
M_.exo_names_tex(1) = {'e\_A'};
M_.exo_names_long(1) = {'e_A'};
M_.exo_names(2) = {'e_G'};
M_.exo_names_tex(2) = {'e\_G'};
M_.exo_names_long(2) = {'e_G'};
M_.exo_names(3) = {'e_KQ'};
M_.exo_names_tex(3) = {'e\_KQ'};
M_.exo_names_long(3) = {'e_KQ'};
M_.exo_names(4) = {'e_RS'};
M_.exo_names_tex(4) = {'e\_RS'};
M_.exo_names_long(4) = {'e_RS'};
M_.endo_names = cell(54,1);
M_.endo_names_tex = cell(54,1);
M_.endo_names_long = cell(54,1);
M_.endo_names(1) = {'C'};
M_.endo_names_tex(1) = {'C'};
M_.endo_names_long(1) = {'C'};
M_.endo_names(2) = {'Uc'};
M_.endo_names_tex(2) = {'Uc'};
M_.endo_names_long(2) = {'Uc'};
M_.endo_names(3) = {'Lambda'};
M_.endo_names_tex(3) = {'Lambda'};
M_.endo_names_long(3) = {'Lambda'};
M_.endo_names(4) = {'Lab'};
M_.endo_names_tex(4) = {'Lab'};
M_.endo_names_long(4) = {'Lab'};
M_.endo_names(5) = {'R'};
M_.endo_names_tex(5) = {'R'};
M_.endo_names_long(5) = {'R'};
M_.endo_names(6) = {'Y'};
M_.endo_names_tex(6) = {'Y'};
M_.endo_names_long(6) = {'Y'};
M_.endo_names(7) = {'K'};
M_.endo_names_tex(7) = {'K'};
M_.endo_names_long(7) = {'K'};
M_.endo_names(8) = {'W'};
M_.endo_names_tex(8) = {'W'};
M_.endo_names_long(8) = {'W'};
M_.endo_names(9) = {'A'};
M_.endo_names_tex(9) = {'A'};
M_.endo_names_long(9) = {'A'};
M_.endo_names(10) = {'rK'};
M_.endo_names_tex(10) = {'rK'};
M_.endo_names_long(10) = {'rK'};
M_.endo_names(11) = {'Rk'};
M_.endo_names_tex(11) = {'Rk'};
M_.endo_names_long(11) = {'Rk'};
M_.endo_names(12) = {'Z'};
M_.endo_names_tex(12) = {'Z'};
M_.endo_names_long(12) = {'Z'};
M_.endo_names(13) = {'Ne'};
M_.endo_names_tex(13) = {'Ne'};
M_.endo_names_long(13) = {'Ne'};
M_.endo_names(14) = {'phie'};
M_.endo_names_tex(14) = {'phie'};
M_.endo_names_long(14) = {'phie'};
M_.endo_names(15) = {'Le'};
M_.endo_names_tex(15) = {'Le'};
M_.endo_names_long(15) = {'Le'};
M_.endo_names(16) = {'Ce'};
M_.endo_names_tex(16) = {'Ce'};
M_.endo_names_long(16) = {'Ce'};
M_.endo_names(17) = {'rho'};
M_.endo_names_tex(17) = {'rho'};
M_.endo_names_long(17) = {'rho'};
M_.endo_names(18) = {'rhoRex'};
M_.endo_names_tex(18) = {'rhoRex'};
M_.endo_names_long(18) = {'rhoRex'};
M_.endo_names(19) = {'omega'};
M_.endo_names_tex(19) = {'omega'};
M_.endo_names_long(19) = {'omega'};
M_.endo_names(20) = {'I'};
M_.endo_names_tex(20) = {'I'};
M_.endo_names_long(20) = {'I'};
M_.endo_names(21) = {'Q'};
M_.endo_names_tex(21) = {'Q'};
M_.endo_names_long(21) = {'Q'};
M_.endo_names(22) = {'psi'};
M_.endo_names_tex(22) = {'psi'};
M_.endo_names_long(22) = {'psi'};
M_.endo_names(23) = {'G'};
M_.endo_names_tex(23) = {'G'};
M_.endo_names_long(23) = {'G'};
M_.endo_names(24) = {'T'};
M_.endo_names_tex(24) = {'T'};
M_.endo_names_long(24) = {'T'};
M_.endo_names(25) = {'spread'};
M_.endo_names_tex(25) = {'spread'};
M_.endo_names_long(25) = {'spread'};
M_.endo_names(26) = {'sigmae'};
M_.endo_names_tex(26) = {'sigmae'};
M_.endo_names_long(26) = {'sigmae'};
M_.endo_names(27) = {'sigma_omega'};
M_.endo_names_tex(27) = {'sigma\_omega'};
M_.endo_names_long(27) = {'sigma_omega'};
M_.endo_names(28) = {'sigma_omega_ss'};
M_.endo_names_tex(28) = {'sigma\_omega\_ss'};
M_.endo_names_long(28) = {'sigma_omega_ss'};
M_.endo_names(29) = {'mon'};
M_.endo_names_tex(29) = {'mon'};
M_.endo_names_long(29) = {'mon'};
M_.endo_names(30) = {'bankrupt'};
M_.endo_names_tex(30) = {'bankrupt'};
M_.endo_names_long(30) = {'bankrupt'};
M_.endo_names(31) = {'Sg'};
M_.endo_names_tex(31) = {'Sg'};
M_.endo_names_long(31) = {'Sg'};
M_.endo_names(32) = {'X'};
M_.endo_names_tex(32) = {'X'};
M_.endo_names_long(32) = {'X'};
M_.endo_names(33) = {'S'};
M_.endo_names_tex(33) = {'S'};
M_.endo_names_long(33) = {'S'};
M_.endo_names(34) = {'Sdash'};
M_.endo_names_tex(34) = {'Sdash'};
M_.endo_names_long(34) = {'Sdash'};
M_.endo_names(35) = {'p'};
M_.endo_names_tex(35) = {'p'};
M_.endo_names_long(35) = {'p'};
M_.endo_names(36) = {'fnG'};
M_.endo_names_tex(36) = {'fnG'};
M_.endo_names_long(36) = {'fnG'};
M_.endo_names(37) = {'fnGam'};
M_.endo_names_tex(37) = {'fnGam'};
M_.endo_names_long(37) = {'fnGam'};
M_.endo_names(38) = {'DGam'};
M_.endo_names_tex(38) = {'DGam'};
M_.endo_names_long(38) = {'DGam'};
M_.endo_names(39) = {'DG'};
M_.endo_names_tex(39) = {'DG'};
M_.endo_names_long(39) = {'DG'};
M_.endo_names(40) = {'YY'};
M_.endo_names_tex(40) = {'YY'};
M_.endo_names_long(40) = {'YY'};
M_.endo_names(41) = {'CC'};
M_.endo_names_tex(41) = {'CC'};
M_.endo_names_long(41) = {'CC'};
M_.endo_names(42) = {'II'};
M_.endo_names_tex(42) = {'II'};
M_.endo_names_long(42) = {'II'};
M_.endo_names(43) = {'WW'};
M_.endo_names_tex(43) = {'WW'};
M_.endo_names_long(43) = {'WW'};
M_.endo_names(44) = {'RR'};
M_.endo_names_tex(44) = {'RR'};
M_.endo_names_long(44) = {'RR'};
M_.endo_names(45) = {'QQ'};
M_.endo_names_tex(45) = {'QQ'};
M_.endo_names_long(45) = {'QQ'};
M_.endo_names(46) = {'RkRk'};
M_.endo_names_tex(46) = {'RkRk'};
M_.endo_names_long(46) = {'RkRk'};
M_.endo_names(47) = {'NeNe'};
M_.endo_names_tex(47) = {'NeNe'};
M_.endo_names_long(47) = {'NeNe'};
M_.endo_names(48) = {'spreadspread'};
M_.endo_names_tex(48) = {'spreadspread'};
M_.endo_names_long(48) = {'spreadspread'};
M_.endo_names(49) = {'KK'};
M_.endo_names_tex(49) = {'KK'};
M_.endo_names_long(49) = {'KK'};
M_.endo_names(50) = {'rhorho'};
M_.endo_names_tex(50) = {'rhorho'};
M_.endo_names_long(50) = {'rhorho'};
M_.endo_names(51) = {'LabLab'};
M_.endo_names_tex(51) = {'LabLab'};
M_.endo_names_long(51) = {'LabLab'};
M_.endo_names(52) = {'phiephie'};
M_.endo_names_tex(52) = {'phiephie'};
M_.endo_names_long(52) = {'phiephie'};
M_.endo_names(53) = {'psipsi'};
M_.endo_names_tex(53) = {'psipsi'};
M_.endo_names_long(53) = {'psipsi'};
M_.endo_names(54) = {'LeLe'};
M_.endo_names_tex(54) = {'LeLe'};
M_.endo_names_long(54) = {'LeLe'};
M_.endo_partitions = struct();
M_.param_names = cell(11,1);
M_.param_names_tex = cell(11,1);
M_.param_names_long = cell(11,1);
M_.param_names(1) = {'alphha'};
M_.param_names_tex(1) = {'alphha'};
M_.param_names_long(1) = {'alphha'};
M_.param_names(2) = {'betta'};
M_.param_names_tex(2) = {'betta'};
M_.param_names_long(2) = {'betta'};
M_.param_names(3) = {'gammma'};
M_.param_names_tex(3) = {'gammma'};
M_.param_names_long(3) = {'gammma'};
M_.param_names(4) = {'chil'};
M_.param_names_tex(4) = {'chil'};
M_.param_names_long(4) = {'chil'};
M_.param_names(5) = {'epsl'};
M_.param_names_tex(5) = {'epsl'};
M_.param_names_long(5) = {'epsl'};
M_.param_names(6) = {'delta'};
M_.param_names_tex(6) = {'delta'};
M_.param_names_long(6) = {'delta'};
M_.param_names(7) = {'ksie'};
M_.param_names_tex(7) = {'ksie'};
M_.param_names_long(7) = {'ksie'};
M_.param_names(8) = {'phiX'};
M_.param_names_tex(8) = {'phiX'};
M_.param_names_long(8) = {'phiX'};
M_.param_names(9) = {'G_over_Y'};
M_.param_names_tex(9) = {'G\_over\_Y'};
M_.param_names_long(9) = {'G_over_Y'};
M_.param_names(10) = {'rhosigma'};
M_.param_names_tex(10) = {'rhosigma'};
M_.param_names_long(10) = {'rhosigma'};
M_.param_names(11) = {'rhog'};
M_.param_names_tex(11) = {'rhog'};
M_.param_names_long(11) = {'rhog'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 54;
M_.param_nbr = 11;
M_.orig_endo_nbr = 54;
M_.aux_vars = [];
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.linear_decomposition = false;
M_.orig_eq_nbr = 54;
M_.eq_nbr = 54;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 11 0;
 1 12 0;
 0 13 64;
 0 14 0;
 0 15 65;
 0 16 0;
 2 17 0;
 0 18 0;
 3 19 0;
 0 20 0;
 0 21 66;
 4 0 0;
 5 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 0 26 0;
 0 27 67;
 0 28 0;
 6 29 0;
 7 30 68;
 8 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 9 36 0;
 0 37 0;
 0 38 0;
 0 39 0;
 10 40 0;
 0 41 69;
 0 42 0;
 0 43 70;
 0 44 0;
 0 45 71;
 0 46 72;
 0 47 0;
 0 48 0;
 0 49 0;
 0 50 0;
 0 51 0;
 0 52 0;
 0 53 73;
 0 54 0;
 0 55 74;
 0 56 0;
 0 57 0;
 0 58 0;
 0 59 0;
 0 60 0;
 0 61 0;
 0 62 0;
 0 63 0;]';
M_.nstatic = 34;
M_.nfwrd   = 10;
M_.npred   = 9;
M_.nboth   = 1;
M_.nsfwrd   = 11;
M_.nspred   = 10;
M_.ndynamic   = 20;
M_.dynamic_tmp_nbr = [11; 7; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'Uc' ;
  2 , 'name' , 'Lambda' ;
  3 , 'name' , '3' ;
  4 , 'name' , '4' ;
  5 , 'name' , 'Y' ;
  6 , 'name' , 'W' ;
  7 , 'name' , 'rK' ;
  8 , 'name' , 'K' ;
  9 , 'name' , 'X' ;
  10 , 'name' , 'S' ;
  11 , 'name' , 'Sdash' ;
  12 , 'name' , '12' ;
  13 , 'name' , 'p' ;
  14 , 'name' , 'fnG' ;
  15 , 'name' , 'fnGam' ;
  16 , 'name' , 'DGam' ;
  17 , 'name' , 'DG' ;
  18 , 'name' , 'Rk' ;
  19 , 'name' , '19' ;
  20 , 'name' , 'Ne' ;
  21 , 'name' , 'Ce' ;
  22 , 'name' , '22' ;
  23 , 'name' , '23' ;
  24 , 'name' , 'omega' ;
  25 , 'name' , 'rho' ;
  26 , 'name' , 'rhoRex' ;
  27 , 'name' , '27' ;
  28 , 'name' , '28' ;
  29 , 'name' , 'G' ;
  30 , 'name' , '30' ;
  31 , 'name' , 'spread' ;
  32 , 'name' , '32' ;
  33 , 'name' , '33' ;
  34 , 'name' , '34' ;
  35 , 'name' , '35' ;
  36 , 'name' , 'bankrupt' ;
  37 , 'name' , 'YY' ;
  38 , 'name' , 'KK' ;
  39 , 'name' , 'II' ;
  40 , 'name' , 'CC' ;
  41 , 'name' , 'WW' ;
  42 , 'name' , 'LabLab' ;
  43 , 'name' , 'QQ' ;
  44 , 'name' , 'RR' ;
  45 , 'name' , 'RkRk' ;
  46 , 'name' , 'spreadspread' ;
  47 , 'name' , 'NeNe' ;
  48 , 'name' , 'rhorho' ;
  49 , 'name' , 'psipsi' ;
  50 , 'name' , 'phiephie' ;
  51 , 'name' , 'LeLe' ;
  52 , 'name' , 'sigmae' ;
  53 , 'name' , 'sigma_omega_ss' ;
  54 , 'name' , 'mon' ;
};
M_.mapping.C.eqidx = [1 28 40 ];
M_.mapping.Uc.eqidx = [1 2 4 ];
M_.mapping.Lambda.eqidx = [2 3 12 ];
M_.mapping.Lab.eqidx = [4 5 6 42 ];
M_.mapping.R.eqidx = [3 23 26 31 44 ];
M_.mapping.Y.eqidx = [4 5 6 7 28 30 37 ];
M_.mapping.K.eqidx = [5 7 8 19 20 21 22 24 28 38 ];
M_.mapping.W.eqidx = [6 41 ];
M_.mapping.A.eqidx = [5 32 ];
M_.mapping.rK.eqidx = [7 18 ];
M_.mapping.Rk.eqidx = [18 20 21 23 24 27 28 31 45 ];
M_.mapping.Z.eqidx = [24 ];
M_.mapping.Ne.eqidx = [19 20 22 24 47 ];
M_.mapping.phie.eqidx = [22 23 50 ];
M_.mapping.Le.eqidx = [19 51 ];
M_.mapping.Ce.eqidx = [21 28 ];
M_.mapping.rho.eqidx = [25 26 48 ];
M_.mapping.rhoRex.eqidx = [26 27 ];
M_.mapping.omega.eqidx = [13 14 15 17 24 ];
M_.mapping.I.eqidx = [8 9 28 39 ];
M_.mapping.Q.eqidx = [12 18 19 20 21 22 24 28 43 ];
M_.mapping.psi.eqidx = [5 7 18 35 49 ];
M_.mapping.G.eqidx = [28 29 30 ];
M_.mapping.T.eqidx = [29 ];
M_.mapping.spread.eqidx = [31 ];
M_.mapping.sigmae.eqidx = [20 21 52 ];
M_.mapping.sigma_omega.eqidx = [13 14 17 34 53 ];
M_.mapping.sigma_omega_ss.eqidx = [34 53 ];
M_.mapping.mon.eqidx = [23 25 28 54 ];
M_.mapping.bankrupt.eqidx = [36 ];
M_.mapping.Sg.eqidx = [33 ];
M_.mapping.X.eqidx = [9 10 11 12 ];
M_.mapping.S.eqidx = [8 10 12 ];
M_.mapping.Sdash.eqidx = [11 12 ];
M_.mapping.p.eqidx = [13 15 16 36 ];
M_.mapping.fnG.eqidx = [14 15 23 25 28 ];
M_.mapping.fnGam.eqidx = [15 20 21 23 25 ];
M_.mapping.DGam.eqidx = [16 25 ];
M_.mapping.DG.eqidx = [17 25 ];
M_.mapping.YY.eqidx = [37 ];
M_.mapping.CC.eqidx = [40 ];
M_.mapping.II.eqidx = [39 ];
M_.mapping.WW.eqidx = [41 ];
M_.mapping.RR.eqidx = [44 46 ];
M_.mapping.QQ.eqidx = [43 ];
M_.mapping.RkRk.eqidx = [45 46 ];
M_.mapping.NeNe.eqidx = [47 ];
M_.mapping.spreadspread.eqidx = [46 ];
M_.mapping.KK.eqidx = [38 ];
M_.mapping.rhorho.eqidx = [48 ];
M_.mapping.LabLab.eqidx = [42 ];
M_.mapping.phiephie.eqidx = [50 ];
M_.mapping.psipsi.eqidx = [49 ];
M_.mapping.LeLe.eqidx = [51 ];
M_.mapping.e_A.eqidx = [32 ];
M_.mapping.e_G.eqidx = [33 ];
M_.mapping.e_KQ.eqidx = [35 ];
M_.mapping.e_RS.eqidx = [34 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = true;
M_.state_var = [2 7 9 12 13 20 21 22 27 31 ];
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(54, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(11, 1);
M_.endo_trends = struct('deflator', cell(54, 1), 'log_deflator', cell(54, 1), 'growth_factor', cell(54, 1), 'log_growth_factor', cell(54, 1));
M_.NNZDerivatives = [169; -1; -1; ];
M_.static_tmp_nbr = [11; 9; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(7) = 0.0102;
ksie = M_.params(7);
M_.params(1) = 0.33;
alphha = M_.params(1);
M_.params(2) = 0.99;
betta = M_.params(2);
M_.params(3) = 0.500;
gammma = M_.params(3);
M_.params(6) = 0.025;
delta = M_.params(6);
M_.params(4) = 5.584;
chil = M_.params(4);
M_.params(5) = 0.333;
epsl = M_.params(5);
M_.params(8) = 1;
phiX = M_.params(8);
M_.params(9) = 0.2;
G_over_Y = M_.params(9);
M_.params(10) = 0.97;
rhosigma = M_.params(10);
M_.params(11) = 0.97;
rhog = M_.params(11);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.Sigma_e(2, 2) = (1)^2;
M_.Sigma_e(3, 3) = (1)^2;
M_.Sigma_e(4, 4) = (1)^2;
steady;
options_.nograph   = 1;
options_.irf = 40;
options_.order = 1;
options_.periods = 10000;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
save('BGGflexi_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('BGGflexi_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('BGGflexi_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('BGGflexi_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('BGGflexi_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('BGGflexi_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('BGGflexi_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off

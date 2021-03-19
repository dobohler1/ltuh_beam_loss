cd ..function [] = writeRunTaoFile(madName)
%madName='CEDL3';
[idx] = readlat('latlist.txt', madName);


fid = fopen('test3.tao','w');
formatSpec ='%s\n';
formatSpec1 ='%s %.0f\n';
fprintf(fid,formatSpec, 'change ele beginning e_tot @13.5e9');
fprintf(fid,formatSpec, 'veto var correctors.x');
fprintf(fid,formatSpec, 'use var correctors.y[3:18]');
fprintf(fid,formatSpec, 'set var correctors.y|meas =0');
fprintf(fid,formatSpec, 'set var correctors.y|weight =3e8');
fprintf(fid,formatSpec, 'use dat loss.rel_point');
fprintf(fid,formatSpec, 'set dat loss.rel_point|weight = 1');
fprintf(fid,formatSpec, 'sho dat');
fprintf(fid,formatSpec, 'set lattice model=design');
fprintf(fid,formatSpec, 'set dat loss.rel_point|ele_name = DTDUND2');
fprintf(fid,formatSpec1, 'set dat loss.rel_point|meas = 2385 -',idx);
fprintf(fid,formatSpec, 'set ele rcoll::* x1_limit = 20e-3');
fprintf(fid,formatSpec, 'set ele rcoll::* x2_limit = 20e-3');
fprintf(fid,formatSpec, 'scycles 5');
fprintf(fid,formatSpec, 'sde 1000');
fprintf(fid,formatSpec, 'ode');
fprintf(fid,formatSpec, 'run');
fprintf(fid,formatSpec, 'show -write optOutput.txt var -good -bmad');
fid(close);





















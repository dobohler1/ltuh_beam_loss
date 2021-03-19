function [] = corSet(act, fname,s)
%example
%[] = corSet('gets', 'optOutput.txt')
%[] = corSet('sets', 'optOutput.txt')
%[] = corSet('restore', 'optOutput.txt')
% s is string to indicate loss point

%act = 'gets','sets','restore'
%filename from bmad e.g. 'var1.out'
%act = 'gets';
%fname = 'optOutput.txt';

[devNames, new_val]=readBmadFile2(fname);
devPv = model_nameConvert(devNames,'PV');
data.ts = now;
data.devNames=devNames;
name = ['corSet' s '.mat'];
save(name,'-struct', 'data')
switch act
    case 'gets'
        bactpv = strcat(devPv, ':BACT');
        old_val = lcaGet(bactpv(:));
    case 'sets'     
        
        control_magnetSet(devNames, new_val*5, 'action', 'TRIM')
        
    case 'restores'
        control_magnetSet(devNames, old_val, 'action', 'TRIM')
end



%should add something to check that everything gets where we think it is.

function [devName, vals] = readBmadFile2(filename)
%example: [d,v]=readBmadFile2('optOutput.txt')
%where 'optOutput.txt' is the output file from bmad optimization

fid=fopen(filename);
data = textscan(fid, '%s %s %s\n');
fclose(fid);
 
names = data{1}; %need to pick LTUH out of whole list
val_string = data{3};

vals = zeros(1, length(names));
for i=1:length(names)
    vals(i) =str2double(val_string{i});
end 
vals = vals'*10; %T*m-> KG*m
devName = {1:length(names)};
  for i = 1: length(names) 
     devName{i} = extractBefore(names{i}, '[');
 end
 devName=devName';
 
 
 
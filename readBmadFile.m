
function [devName, vals] = readBmadFile(filename)

%example: [d,v]=readBmadFile('var1.out')
%where 'var1.out' is the output file from bmad optimization

fid=fopen(filename); 
 data = textscan(fid, '%s %s %s\n');
 fclose(fid);
 
 stop_idx = find(strcmp(data{1,1},'end_file'));
 
names = data{1}(1:stop_idx-1);
val_string = data{3}(1:stop_idx-1);

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
 
 
 
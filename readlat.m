function [idx] = readlat(fname, devName)
%script to read latlist.txt and return index num

%fname = 'latlist.txt';

fid=fopen(fname);
data = textscan(fid, '%s %s %s\n');
fclose(fid);


idx = find(contains(data{2}, devName));

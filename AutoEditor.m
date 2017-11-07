% AutoEditor(FILE,LINES,CONTENTS)
%     update the lines in file FILE according to LINES and replace the line
%     with CONTENTS
%     FILE should contain the name and path
%     LINES should be a vector that indicates the lines to be updated
%     CONTENTS should be a cell with the same number of LINES that specify
%     the new content.
function AutoEditor(file,lines,contents)
% Read txt into cell Content
fid = fopen(file,'r');
i = 1;
tline = fgetl(fid);
Content{i} = tline;
while ischar(tline)
    i = i+1;
    tline = fgetl(fid);
    Content{i} = tline;
end
fclose(fid);
% Change cell Content
for i=1:length(lines)
 Content{lines(i)}=contents{i};   
end
% Write cell content into txt
fid = fopen(file, 'w+');  % discard and rewrite
fprintf(fid, '%s\n', Content{:});
fclose(fid);
end
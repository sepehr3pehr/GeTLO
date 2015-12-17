function [ OCC ] = computeOCC(cov, selectedTests)
if(numel(find(selectedTests))==1)
    temp = cov(logical(selectedTests),:);
else
    temp = sum(cov(logical(selectedTests),:));
end
    [OCC.val, OCC.per] = sort(temp);
end


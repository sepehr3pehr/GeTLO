function [ma,cnt,indx] = maxLex(W,sel)
%Find the vectors with the highest lexicographical rank
w=W;
ma = -1*ones(1,size(W,2));
cnt = 0;
indx = 0;
for i=1:size(w,1)
    if(sel(i))
        continue;
    end
    if(compareLexi(w(i,:),ma)==1)
        ma = w(i,:);
        cnt = 1;
        indx = i;
    elseif(isequal(ma,w(i,:)))
        indx = [indx i];
        cnt = cnt + 1;
    end
end
end

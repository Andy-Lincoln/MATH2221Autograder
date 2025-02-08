function v = checkValid(M, i, j)
    % 檢查 r 和 c 是否超出範圍
    if (i~=1)&(i~=2)&(i~=3)
        disp('Invalid i');
        v = 0;
        return;
    elseif (j~=1)&(j~=2)&(j~=3)
         disp('Invalid j');
        v = 0;
        return;
    end

    % 檢查該位置是否已經被佔用
    if M(i, j) ~= 0
        disp('Already occupied');
        v = 0;
        return;
    end

    % 若以上條件都不符合，則為有效輸入
    disp('Valid input');
    v = 1;
end


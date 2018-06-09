function [ w1, w2 ] = lvqF( i, j, w1, w2, t, LR )
%UNT�TLED4 Summary of this function goes here
%   Detailed explanation goes here

    x = [i j];
    
    d1 = sqrt((i - w1(1))^2 + (j - w1(2))^2);
    d2 = sqrt((i - w2(2))^2 + (j - w2(2))^2);
    
    minD = min(d1,d2);
    
    %%d1 yani w1 en k�sa mesafe ise YSA n�n ��kt�s� 0 d�r
    if(minD == d1 && t == 0)
        w1 = w1 + LR*(x - w1);
        return;
    elseif(minD == d1 && t == 1)
        w1 = w1 - LR*(x - w1);
        return;
    end
    
    %%d2 yani w2 en k�sa mesafe ise YSA n�n ��kt�s� 1 d�r
    if(minD == d2 && t == 1)
        w2 = w2 + LR*(x - w2);
        return;
    elseif(minD == d2 && t == 0)
        w2 = w2 - LR*(x - w2);
        return;
    end

end


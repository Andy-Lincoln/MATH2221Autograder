function [x,y,s]=think(M,tp)
    x=0;
    y=0;
    s=2;
    for i=1:3
        for j=1:3
            if M(i,j)==0
                N=M;
                N(i,j)=tp;
                if checkWin(N)==tp
                    x=i;
                    y=j;
                    s=1;
                    return
                end
            end
        end
    end
    for i=1:3
        for j=1:3
            if M(i,j)==0
                N=M;
                N(i,j)=-tp;
                if checkWin(N)==-tp
                    if x~=0
                        s=0;
                        return
                    end
                    x=i;
                    y=j;
                end
            end
        end
    end
    if x~=0
        N=M;
        N(x,y)=tp;
        [trl,trr,r]=think(N,-tp);
        if r~=2
            s=1-r;
        else
            s=2;
        end
        return
    end
    ws=-ones(3,3);
    for i=1:3
        for j=1:3
            if M(i,j)==0
                N=M;
                N(i,j)=tp;
                [p,q,r]=think(N,-tp);
                ws(i,j)=r;
                if r==0
                    x=i;
                    y=j;
                    s=1;
                    return
                end
            end
        end
    end
    for i=1:3
        for j=1:3
            if M(i,j)==0 && ws(i,j)==2
                x=i;
                y=j;
                s=2;
                return
            end
        end
    end
    s=0;
    for i=1:3
        for j=1:3
            if M(i,j)==0
                x=i;
                y=j;
                return
            end
        end
    end
end

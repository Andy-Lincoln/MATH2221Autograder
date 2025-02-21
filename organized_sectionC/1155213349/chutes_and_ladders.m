function n=chutes_and_ladders()
goal=0;
starting=1;
round=0;
while goal~=100
    round=round+1;
    dice=randi(6);
    starting=starting+dice;
    if starting==4
        starting=14;
    end
        if starting==9
            starting=31;
        end
            if starting==20
                starting=38;
            end
            if starting==28
                starting=84;
            end
            if starting==36
                starting=44;
            end
           if starting==40
               starting=42;
           end 
           if starting==51
               starting=67;
           end
           if starting==71
               starting=91;
           end
           if starting==80
               starting=81;
           end
           if starting==16
               starting=6;
           end
           if starting==47
               starting=26;
           end
           if starting==56
               starting=53;
           end
           if starting==62
               starting=19;
           end
           if starting==64
               starting=60;
           end
           if starting==87
               starting=24;
           end
           if starting==93
               starting=73;
           end
           if starting==95
               starting=75;
           end
           if starting==98
               starting=78;
           end
             if starting>100
                 starting=100-(starting-100);
             end
             if starting==100
                 goal=100;
             end       
end
 n=round;
end
           
              
         
    
function n= chutes_and_ladders(p)
p=1
d=randi([1,6])
while p<100
    p=p+d
    if p+d==4
        p=14

    elseif p+d==9
        p=31

    elseif p+d==20
        p=38

    elseif p+d==28
        p=84

    elseif p+d==36
        p=44

    elseif p+d==40
        p=42

    elseif p+d==51
        p=67

    elseif p+d==71
        p=91

    elseif p+d==80
        p=81

    elseif p+d==16
        p=9

    elseif p+d==47
        p=26

    elseif p+d==49
        p=11

    elseif p+d==56
        p=53

    elseif p+d==62
        p=19

    elseif p+d==64
        p=60

    elseif p+d==87
        p=24

    elseif p+d==93
        p=73

    elseif p+d==95
        p=75

    elseif p+d==98
        p=78

    elseif p+d>100
        p=100-(p+d-100)

    elseif p+d==100
        break
    end
  end
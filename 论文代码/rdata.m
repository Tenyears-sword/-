r = zeros(1e7,1);
i = 1;
for cel = 10:0.1:30
    for light = 0.02:0.01:1.6
        for sal = 10:35
            r(i) = rfunc(cel,light,sal);
            i = i+1;
        end
    end
end
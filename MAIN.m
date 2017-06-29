disp('1 = Unipolar NRZ; 2 = Polar NRZ; 3 = Unipolar RZ; 4 = Polar RZ; 5 = Miller Encoding; 6 = 2B1Q encoding; 7 = Manchester Encoding;')
Func = input('Type of code = ');
n = input('No of samples: ');
switch Func
    case 1
        unipolarnrz(n);
    case 2
        polarnrz(n);
    case 3
        unipolarrz(n);
    case 4
        polarrz(n);
    case 5
        miller(n);
    case 6
        c2b1q(n);
    case 7
        manchester(n);
end

x = [1,-1,0,0,4];
disp('Norm1 calculata fara Octave');
norm1 = sum(abs(x))
disp('Norm1 calculata cu Octave');
norm1Octave = norm(x,1)
disp('Norm2 calculata fara Octave');
norm2 = sqrt(sum(x.^2))
disp('Norm2 calculate cu Octave');
norm2Octave = norm(x,2)
disp('NormInf calculata fara Octave');
normInf = max(x)
disp('NormInf calculata cu Octave');
normInfOctave = norm(x,inf)
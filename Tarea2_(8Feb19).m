%% Problema 1
%Script para Resolver (Despejar x cuando y=0) 'x' en términos de 'a'

clc
clear

syms x a

y = 2*x+a-5 == 0
%pretty(y)

x = solve(y,x)
%pretty(x)


%% Problema 2
%Script para Resolver 'x' en términos de 'a', 'b'

clc
clear

syms x a b

y = x.^2+a*x+b == 0;
disp('Y =')
pretty(y)

x = solve(y,x);
%pretty(x)

disp('X1 =')
x1=x(1,1);
pretty(x1)
disp('X2 =')
x2=x(2,1);
pretty(x2)


%% Problema 3
%Script para Resolver 'x' 

clc
clear

syms x

y = 2*exp(x)+3*cos(x) == 0

x = solve(y,x)


%% Problema 4
%Script para resolver un sistema de ecuaciones para 'x', 'y' en términos de
%de 'c'

%2x -3cy = 5
%cx +2y  = 7

clc
clear

syms x y c

A=[2 -3*c;
    c 2];

B=[5; 
    7];

%Inverso de A
IA=inv(A);

%Solución
Sol=IA*B;
%disp('Sol =')
%pretty(Sol)

%Función Directa
SolDir=mldivide(A,B);

%Función Directa 2
SolDir2=A\B;

%----------------------------------

Ec1 = 2*x -3*c*y -5 == 0
Ec2 = c*x +2*y -7 == 0

[x1 x2] = solve([Ec1 Ec2],[x y]);

disp('X1 =')
pretty(x1)
disp('X2 =')
pretty(x2)


%% Problema 5
%Resolver el siguiente sistema de ecuaciones algebraícas no lineales
%para las variables x, y.
clc
clear

syms x y

Ec1 = 3*x.^2 -2*x +y -7;
Ec2 = x*y +x -5;

[Sol1 Sol2] = solve([Ec1 Ec2],[x y]);

disp('Sol1 =')
pretty(Sol1)
disp('Sol2 =')
pretty(Sol2)

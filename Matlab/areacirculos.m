clear all
clc

% Your code
syms x y

l0=63;
l1=65;
l2=130;
l3=l2;
l4=l1;

ellipseOne = ((x+(l0/2))^2)+y^2 ==(l1+l2)^2;
ellipseTwo = ((x-(l0/2))^2)+y^2 ==(l1+l2)^2;
intersection = solve(ellipseOne, ellipseTwo);


% Find the points of intersection
X = double(intersection.x);
Y = double(intersection.y);
mask = ~any(imag(X), 2) | ~any(imag(Y), 2);
X = X(mask); 
Y = Y(mask);

ezplot(ellipseOne, [-500, 500, -500, 500])
hold on
ezplot(ellipseTwo, [-500, 500, -500, 500])
% New - place intersection points
plot(X, Y, 'b.');
title('Ellipses');
hold off;

intersectionx = solve(ellipseOne,x)
y=0;
intxs=subs(intersectionx);

base= double(intxs(1,1))
baseC= base*2
altura=double(Y(2,1))
hipotenusa=((base^2)+(altura^2))^(1/2);
area=baseC*altura/2;
O1=(atan(altura/base))*180/pi;
atrc=O1*pi*(baseC^2)/360;
areaextra=atrc-area;
AT=(2*area)+(4*areaextra);
circulos=pi*((l0/2)^2);
areaTT=AT
cuadrado=250*400

areareal=areaTT-cuadrado

porcentaje=areareal*100/cuadrado

%condiciones: l1=l4 min:50 max:210
%             l2=l3 min:50 max:210
%             l0=min:55mm max:200mm


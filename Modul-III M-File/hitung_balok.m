function [p,l,t] = hitung_balok(p,l,t);

v = p*l*t;
l = 2*(p*l+p*t+l*t);

fprintf("Volume: %f\nLebar: %f\n",v,l);
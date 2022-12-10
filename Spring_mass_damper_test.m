ks = 2; % spring constant
kd = 2; % damping constant
m = 4; % mass
t = 0.001; % timestep
v0 = 0; % initial velocity
x0 = 1; % initial position

A = [[0 1];[-ks/m -kd/m]] 
B = [[0];[1/m]]
C = [1 0]
D = [0]

model = ss(A,B,C,D)

initial(model,[1;0])
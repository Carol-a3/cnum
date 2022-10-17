using LinearAlgebra

function a(V, y)
  Vt = transpose(V)
  a = inv(Vt*V)*(Vt*y)
  return a
end

x = [0 ; 0.25 ; 0.5 ; 0.75; 1]
y = [-153 ; 64 ; 242 ; 284 ; 175]

M(x) = [sin(pi*x[1]) cos(pi*x[1]) ;
        sin(pi*x[2]) cos(pi*x[2]) ;
        sin(pi*x[3]) cos(pi*x[3]) ;
        sin(pi*x[4]) cos(pi*x[4]) ;
        sin(pi*x[5]) cos(pi*x[5]) ] 

V = M(x)

r = a(V, y)
println(r)

M(x) = [ 1 x[1] x[1]^2 x[1]^3 x[1]^4 ;
         1 x[2] x[2]^2 x[2]^3 x[2]^4 ;
         1 x[3] x[3]^2 x[3]^3 x[3]^4 ;
         1 x[4] x[4]^2 x[4]^3 x[4]^4 ;
         1 x[5] x[5]^2 x[5]^3 x[5]^4 ]  

V = M(x)
r = a(V, y)
println(r)

#Exercício 7.1.2

x = [-0.35 ; 0.15 ; 0.23 ; 0.35]
y = [0.2 ; -0.5 ; 0.54 ; 0.7]

M(x) = [ 1 x[1];
         1 x[2];
         1 x[3];
         1 x[4]] 

V = M(x)
r = a(V, y)
println(r)

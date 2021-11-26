%nprocshared=20
%mem=60000MB
#p TDA(triplets,Nstates=3) wB97XD/def2tzvp NoSymm     SCRF(PCM,Read) pop=full  iop(9/40=3)  GFINPUT
 IOp(3/107=optima_gamma) IOp(3/108=optimal_gamma)

molec1

 0   1
cartesian coordinate of neutral ground state geometry

Eps=3.0


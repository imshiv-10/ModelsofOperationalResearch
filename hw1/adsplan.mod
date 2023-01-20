param n;   # Number of Decision Variables
param m;   # Number of Constraints
set J := {1..n};  #set of decision variables
set I := {1..m};  #set of constraints

param C {J} >= 0;  #Coeffficients of Objective Function
param A {I,J} >= 0;  #Coefficients of Constraint Matrix
param B {I} >= 0;  #LHS of the Constraints
param D {I} >= 0;  #RHS of the constraints

var X {J} >=0;  #decision variables

maximize z:  sum {j in J} C[j] * X[j];  #Objective Function 

s.t. Constraint {i in I}:
	B[i] <= sum {j in J} A[i,j] * X[j] <= D[i]; # B <= Constraints <= D
	
	
	
	# PLEASE RUN THE COMMAND include adsplan.run; IN THE CONSOLE to obtain the result
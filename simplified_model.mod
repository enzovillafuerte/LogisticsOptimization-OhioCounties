param f;
param c;

# defining sets
set J = 1..f; 
set I = 1..c;

# defining parameters
param Di{i in I}; # demand at customer i
param Sj{j in J}; #supply at facility j
param Cji{j in J,i in I}; # variable transportation cost from j to i
param Oj{j in J}; # cost for opening facility j
param T; # Truck Capacity
param F; # Fixed Cost for renting the truck
param M; # big M

# decision variables
var Xji{j in J,i in I} >= 0; # Amount of goods transported for j to i in kg
var Yj{j in J} binary; # Binary Variable if facility j is open
var Zji{j in J,i in I} binary; # binary variable if goods are being transported from j to i (for fixed cost)


# objective Function
minimize total_cost:
	sum{j in J, i in I} (Cji[j,i] * Xji[j,i] + F * Zji[j,i]) + sum{j in J} (Oj[j] * Yj[j]);
	
# supply Constraints
s.t. c1 {j in J}: sum{i in I} Xji[j,i] <= Sj[j]; #* Yj[j], redundant;

# demand constraints
s.t. c2 {i in I}: sum{j in J} Xji[j,i] >= Di[i];

# facility opening constraints
s.t. c3 {j in J}: sum {i in I} Xji[j,i] <= M * Yj[j];

# capacity constraints
s.t. c4 {j in J, i in I}: Xji[j,i] <= T; #* Zji[j,i], redundant;

# rental fixed cost constraint
s.t. c5 {j in J, i in I}: Xji[j,i] <= M * Zji[j,i]



# LogisticsOptimization-OhioCounties

Innovation of proposed model

The innovation in our model is intricately linked to the unique situational characteristics of transportation operations. Specifically, we've partnered with a truck agency to introduce an inventive rental cost scheme. Under this arrangement, the agency receives payment from local sponsors to display advertisements on their trucks while in operation. This innovative approach allows us, as the end user, to benefit from reduced rental costs. Consequently, our rental structure comprises both fixed and variable costs.

Furthermore, the truck agency mandates a return to the initial facility 'j' following the completion of product delivery from point 'i.' This requirement adds dynamism to the scenario by ensuring increased exposure time for the trucks on highways, thus maximizing advertising income. Regarding our model, it closely resembles a conventional transportation problem. However, it incorporates additional elements such as opening costs for potential facility candidates, truck capacity constraints, and the inclusion of a binary decision variable (Zji). This variable helps determine whether goods are transported for fixed cost calculations, thereby amplifying the intricacy of the problem.

Assumptions:
	A truck that has departed from facility j to point i, must come back to facility j right after delivery at point i.
	A demand point i can only be served once by a supply facility j due to limitations on the truck availability.
	The truck company offers an innovative methodology for rent pricings based on quantity transported due to commercial agreements. That means that the increase in variable rental cost will be correlated with the quantity of goods (kg) transported in each truck.
	Additionally, the truck offers a fixed rental cost of $30 per truck used.
	The truck will have capacity limitations of 1,000 kg of storage available for transporting goods.


Objective:   Minimize overall costs associated with the opening of new facilities and transportation of products from facilities j while satisfying demand for all the points I
Parameters and Sets:
D_i , demand at point i, i=1, 2,…,m; 
S_j, supply at facility j, j=1, 2,…,n; 
X_ji, quantity of goods (kg) transported from j to i;
C_ji, variable transportation cost per unit (kg) from j to i;
O_j, cost of opening facility j;
M, big M.
T, maximum truck capacity (1,000kg);
F, fixed cost for renting a truck ($30)

Constraints:
C1: Supply Constraint.
C2: Demand Constraint.
C3: Facility Opening Constraint.
C4: Truck Capacity Constraint.
C5: Fixed Rental Costs per Truck Utilized Constraint.

Metric:  USD ($)

Decision Variables:	
 x_ji={quantity of goods (kg) transported from j to i;}┤ 
Y_(j    )= {█( 1,if facility j is estimated to be opened @0,otherwise;)┤
Z_ji= {█(1,if goods are being transported from j to i @0,otherwise;)┤

 

Mathematical Model
OF:  MIN  ∑_(j=1)^n▒〖〖 ∑_(i=1)^m▒(C_ji∙ X_ji  +F ∙ Z_ji ) 〗_ + 〗 ∑_(j=1)^n▒〖O_j∙Y_j 〗
s.t. 
C1: ∑_(i=1)^m▒〖Xji≤Sj〗 ,       		∀j
C2: ∑_(j=1)^n▒〖Xji≥ Di〗 ,     		∀i
C3: ∑_(i=1)^m▒〖Xji≤M∙Yj 〗, 		∀j
C4: Xji≤T, 			∀j,i
C5: Xji≤M∙ Zji , 		∀j,i

X_ji≥0  
Y_j∈{0,1}
Z_ji∈{0,1}


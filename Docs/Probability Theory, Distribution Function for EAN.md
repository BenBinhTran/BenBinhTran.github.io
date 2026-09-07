Probability Theory, Distribution Functions & Optimization in Air Network Partner Management


Probability Theory, Distribution Functions & Optimization in Air Network Partner Management
Why This Matters
Most people see Air Network Planning as finding airline partners and arranging capacity.
In reality, network planners are constantly making decisions under uncertainty:
	• Future volume is unknown.
	• Delays are uncertain.
	• Capacity availability changes.
	• Weather disruptions occur.
	• Customer demand fluctuates.
This is where probability theory, statistical distributions, and optimization become powerful tools.


1. Probability Theory in Air Network Planning
Core Question
Instead of asking:

	
	What do I think will happen?

A network engineer asks:

	
	What is the probability that this will happen?

Examples:
	• Probability demand exceeds available capacity.
	• Probability of service failure.
	• Probability of missing delivery commitments.
	• Probability of network disruption during typhoon season.
	• Probability of partner capacity shortages during peak season.
Example
Current Vietnam-USA lane:
	• Average demand = 50 tons/day
	• Capacity = 55 tons/day
Question:
What is the probability daily demand exceeds available capacity?
This allows management to quantify risk and decide whether additional capacity should be purchased.


2. Statistical Distribution Functions
Why Distributions Matter
Network variables are not fixed.
Transit times, demand volumes, delays, and capacity utilisation all vary.
Averages alone are often misleading.
Example
Average transit time:
SGN → HKG → MEM = 36 hours
However:
	• 20% arrive in 34 hours
	• 50% arrive in 36 hours
	• 20% arrive in 38 hours
	• 10% arrive after 42 hours
The distribution provides much more insight than the average.


Common Distributions Relevant to FedEx Network Planning
Normal Distribution
Used for:
	• Daily volume forecasting
	• Transit time analysis
	• Capacity utilisation modelling
Characteristics:
	• Mean (μ)
	• Standard Deviation (σ)
Applications:
	• Estimate probability of exceeding capacity.
	• Build safety capacity buffers.
	• Forecast peak demand.


Poisson Distribution
Used for:
	• Shipment arrivals
	• Operational incidents
	• Service failures
Applications:
	• Predict arrival patterns.
	• Estimate disruption events.
	• Workforce and facility planning.


Exponential Distribution
Used for:
	• Time between disruptions.
	• Time between equipment failures.
	• Time between service incidents.
Applications:
	• Reliability analysis.
	• Network resilience planning.


Binomial Distribution
Used for:
	• Success/failure outcomes.
	• On-time performance calculations.
Example:
If OTP = 95%,
What is the probability that 18 or more of 20 flights arrive on time?
Useful for partner performance evaluation.


3. Forecasting Demand Using Probability
Network planning is fundamentally a forecasting function.
Example
Forecast scenarios:

Scenario	Demand	Probability
Low	45 T/day	20%
Base	55 T/day	60%
High	70 T/day	20%

Decision:
How much capacity should FedEx secure?
Questions:
	• Plan for average demand?
	• Plan for worst case?
	• Accept some risk?
This is a probability-based business decision.


4. Risk Assessment Using Probability
A Partner Network Engineer continuously evaluates risk.
Types of Risk
Weather Risk
Examples:
	• Typhoons
	• Monsoon disruptions
	• Snowstorms
Evaluate:
P(Flight Cancellation)


Capacity Risk
Evaluate:
P(Demand > Capacity)
High probability indicates additional capacity should be secured.


Service Risk
Evaluate:
P(Missing Delivery Commitment)
Used to assess customer experience impact.


5. Optimization in Air Network Management
Optimization is the process of finding the best solution while satisfying constraints.
Typical Objective
Maximise:
	• Service reliability
	• Network resilience
	• Capacity utilisation
Minimise:
	• Cost
	• Transit time
	• Service failures


6. Airline Partner Selection Optimization
Suppose:

Airline	Capacity	Cost/kg
Cathay	20 T	$2.60
EVA	15 T	$2.50
Korean	10 T	$2.35

Required:
15 T/day
Objective:
Minimise transportation cost.
Constraints:
	• Capacity ≥ Demand
	• Transit Time ≤ SLA
	• Reliability ≥ Target
This becomes an optimization problem rather than a subjective decision.


7. Multi-Criteria Decision Analysis (MCDA)
Partner selection rarely depends on cost alone.
Example weighting model:

Criteria	Weight
Service Performance	30%
Capacity Availability	25%
Transit Time	25%
Cost	20%

Final Score:
Score = Σ(Weight × Rating)
This creates transparent and data-driven recommendations.


8. Capacity Optimization
Question:
How should available cargo volume be distributed among multiple partners?
Example:
Available demand:
50 tons/day
Partners:
	• Cathay
	• EVA
	• Korean Air
Objective:
Allocate volume to minimise cost while maintaining service quality.
Additional constraints:
	• Capacity limits
	• Transit requirements
	• Reliability targets
	• Peak season restrictions
This is a classic Operations Research problem.


9. Route Optimization
Possible routes:
	1. SGN → HKG → MEM
	2. SGN → ICN → MEM
	3. SGN → TPE → MEM
Evaluation dimensions:
	• Cost
	• Transit time
	• Reliability
	• Capacity
	• Risk exposure
The optimal route is not always the cheapest route.
The best route is usually the one that provides the best balance of service, cost, resilience, and capacity.


10. How This Links Directly to the Job Description
Conduct Network Analyses
Apply:
	• Probability analysis
	• Distribution analysis
	• Multi-criteria decision making
	• Optimization models


Develop Market-Specific Capacity Strategies
Apply:
	• Demand forecasting
	• Capacity risk modelling
	• Safety capacity calculations
	• Scenario analysis


Network Optimization & Performance Management
Apply:
	• Route optimization
	• Capacity allocation optimization
	• Service-cost tradeoff analysis


Analytics & Continuous Improvement
Apply:
	• Statistical analysis
	• Distribution monitoring
	• Variance analysis
	• Process optimisation


Interview Positioning Statement
'My engineering background includes probability theory, statistical distributions, forecasting, and optimisation. I see these skills as highly relevant to air network planning because transportation decisions must be made under uncertainty. Probability models help quantify demand and service risks, distribution analysis helps understand network performance variability, and optimisation techniques support partner selection, capacity planning, and routing decisions based on cost, service, transit time, and resilience.'

From <https://m365.cloud.microsoft/chat/conversation/5019d530-a9f3-44e1-9c88-cead9d79aece?from=PortalHome&auth=2&origindomain=microsoft365&client-request-id=463e6d4c-cdec-4f18-b014-cf6c3a4ab9ba&es=SSR&redirfrom=userTypeCookie> 


From <https://m365.cloud.microsoft/chat/conversation/5019d530-a9f3-44e1-9c88-cead9d79aece?from=PortalHome&auth=2&origindomain=microsoft365&client-request-id=463e6d4c-cdec-4f18-b014-cf6c3a4ab9ba&es=SSR&redirfrom=userTypeCookie> 

====
Included
New sidebar page after Key Responsibilities – 3
Probability theory for capacity and service-risk decisions
Normal, Poisson, Exponential, and Binomial distributions
Transit-time distribution example with the 20% / 50% / 20% / 10% breakdown
Demand forecasting scenarios
Weather, capacity, and service-risk assessment
Network optimization objectives
Airline partner selection comparison
MCDA weighting model
Capacity allocation optimization
SGN route optimization
Direct mapping to the four job responsibilities
Professional positioning statement
Interaction updates
Added kr4 page switching
Added the page to the existing search behavior
Reused the current note blocks, callouts, tables, responsive wrappers, and design tokens
No new packages or assets were required
Validation confirmed:
kr4 appears after kr3
All requested sections are present
Seven responsive table sections are included
Search can discover the new page
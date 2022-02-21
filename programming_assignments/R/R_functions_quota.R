Assignment: Computing Payoff for a Quota Structure
Depends: Functions and Control Structures

University of Virginia
Programming for Data Science

TOTAL POINTS: 10

Problem Statement: 
A salesperson at a large tech firm is faced with
a new payment structure. This salesperson has a quarterly quota of $225,000.
The payment received follows a progressive schedule with four brackets as follows:
  
1) For the first 40% of quota, the salesperson receives 7% on quota reached
2) For the next 30% of quota, the salesperson receives 10% on quota reached
3) For the next 20% of quota, the salesperson receives 13% on quota reached
4) For the next 10% of quota, the salesperson receives 16% on quota reached

For example, if the salesperson is 50% to quota, reaching $112,500 of sales,
a) the first 40% is paid out at 7% (payout = $225,000 * 40% * 7%)
b) the next 10% is paid out at 10%
The total payout to the salesperson would be (a) + (b)
Notice what does NOT happen: getting to the second bracket does NOT mean the payout
is $225,000 * 50% * 10%.

This schedule represents earnings up to 100% of quota. We ignore sales above 100% here.
The salesperson would like to know how much she would earn if she 
reaches a given percentage of quarterly quota.

Note: The quota structure in this assignment is analogous to how the US tax system works:
There are several brackets with rate i applied to dollars in bracket i.


Task 1 (8 POINTS FOR FUNCTION PRODUCING CORRECT OUTPUT)

Write a function with these specifications:
  
- takes input: quarterly quota (225000)
- takes input: fraction of quarterly quota reached (0.8 means 80%)
- outputs the dollar amount earned 

Call this function and print the dollar amount earned.

Hint:
You will want to understand which brackets apply.
"if" statements can help compute amounts in each bracket.


Task 2 (2 POINTS FOR CORRECT GRAPH)

For a range between 0%-100% earned in increments of 10%,
plot the amounts earned (y-axis) versus quarterly quota reached (x-axis).

Hints: 
1) You might want to call your function in a "for-loop".
2) qplot() makes a fairly nice plot quickly


# Chapter 3
## Question 1 generate a category from:
|Question|Answer|
|-|-|
|A graph with one node and no edges|Add an identity morphism to the node|
|A graph with one node and one (directed) edges|Add the identity and the composition of that with the edge|
|A graph with 2 nodes and a single arrow between them|Add the identity morphism for each object|
|A graph with a single node and 26 arrows marked with the letters of the alphabet: a,b,c...z|Add the compositions of the arrows and id|
## Question 2: What kind of order is
|Question|Answer|
|-|-|
|A set of sets with the inclusion relation: A is included in B if every element of a is also an element of B|Partial order|
|C++ type with the following subtyping relation: T1 is subtype of T2 if a pointer to T1 can be passed to a function that expects a pointer to T2|Partial order|
## Question 3: Prove that Bool forms a monoid under && and ||
* && and || take a Bool and return a Bool
* The id of && is True and the id of || is False
* && and || are associative
## Question 4: Represent the Bool monoid with the && operator as a category
.--|
^--|

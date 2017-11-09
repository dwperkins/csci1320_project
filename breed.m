function child = breed(Parent1, Parent2, population)
%this function breeds a child from two parents(indexes) from the population
%pool

%inputs are the two parents
a = population(Parent1,:);
b = population(Parent2,:);

%choose random letters from each parent and combine to produce child
%Method 1: Select a random point in parent1, everything before is added
%to the opposite of parent2
aselector = repelem(1,randi(length(a)));
aselector = logical([aselector,zeros(1,length(a)-length(aselector))]);

bselector = ~aselector;
%output is the child of the two parents
child = [a(aselector),b(bselector)];

end
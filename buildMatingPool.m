function mating_indices = buildMatingPool(mating_factor,fitness)
%This function takes in two inputs, mating_factor and fitness.
%mating_factor determines how many tickets an individual with a fitness of
%1 is given, and fitness is the input of all the individual fitnesses.

%With these inputs, fitness is normalized by dividing all entries by the
%maximum fitness of the population.
normalized_fitness = fitness/max(fitness);
%The normalized fitness will then be multiplied by the mating factor, and
%the resultant number will be the number of indices that each individual
%will have in mating_indices as an output.
tokens = ceil(normalized_fitness*mating_factor);

%Find(fitness == 0) ensures that each member of the population has a
%minimum of 1 token.
mating_indices = [repelem(1:length(tokens),tokens),find(fitness == 0)'];

end


%Created by David Perkins, 11/6/17
function fitness = calculateFitness(current_population,target_string)
%This function calculates the fitness of each individual in the input,
%current_population (which needs to be a matrix) and compares each row to
%target_string, returning a cell with each row's (individual's) fitness.

    matching_instances = current_population == target_string;
    %Rowwise sum produces the number of elements in each population that is
    %equal to the test string
    raw_fitness = sum(matching_instances,2);
    %Normalize the raw_fitness output
    fitness = {raw_fitness/length(target_string)};
end


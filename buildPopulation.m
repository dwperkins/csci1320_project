%David Perkins, 11/6/17
function population = buildPopulation(population_size,target_string)
%This function takes in two inputs, the population size and the target
%string and returns a cell with a population size of random strings with
%the same length as the target string.

    l = length(target_string);
    %Values for the ASCII characters of interest: 32, 65-90, 97-122
    values = [32,65:90,97:122];
    gen_num = values(randi([1,length(values)],population_size,l));
    %Convert gen_num into ASCII characters
    population = {char(gen_num)};
end
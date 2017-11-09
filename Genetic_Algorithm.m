%This script is used for the final project for CSCI 1320, which essentially
%models a genetic algorithm for evolution.

%Created by David Perkins and Mike McCuen
clear; clc; close all;

%For now, define pop size and target string
population_size = 200;
target_string = 'To be or not to be';
%% Task 1.1: Randomly Generate an initial population of strings
population = buildPopulation(population_size,target_string);

%% Task 1.2: Calculate the fitness of each member in the population
%For now, define current_population as first cell of population
current_population = population{1,1};
%Calculate the fitness of the current_population and assign the resultant
%cell to the cell to the right of the current_population
population(1,2) = calculateFitness(current_population,target_string);

%% Task 1.3: Build and Define a Mating Pool
%Define a mating_factor
mating_factor = 10;

%Assign the result of the build mating pool to the third column of the
%population cell array
population(1,3) = {buildMatingPool(mating_factor,population{1,2})};

%% Task 1.4: Breed a child from two parents
%Preallocate a set of children
blank_children = repmat(blanks(length(target_string)),[population_size,1]);
mating_indices = population{1,3};

%Populate the entire blank_children matrix with children
for i = 1:population_size
    %First, we need to find and determine two parents, that cannot be the same
    %index
    parent1_location = randi(length(mating_indices));
    parent1 = mating_indices(parent1_location);
    
    parent2_location = randi(length(mating_indices));
    parent2 = mating_indices(parent2_location);
    
    while parent1 == parent2
        parent2_location = randi(length(mating_indices));
        parent2 = mating_indices(parent2_location);
    end

    %breed the two parents in the given population to produce a child
    blank_children(i,:) = breed(parent1,parent2,population{1,1});
end

%% Task 1.5: Cause DNA Mutation

%% Task 1.6: Script of Combined 1.1 - 1.5

%Define the target phrase

%Generate the starting population using buildPopulation

%Using a while loop and a counter for the generation number,
    %Calculate the fitness of each individual of the population, store in
    %the cell to the right of the population using calculateFitness
    %Build the mating pool from this cell using buildMatingPool
    %Breed a new population
        %Parents cannot be the same
        %Mutate child
        %Continue to breed new children until the current population number
        %has been reached
    %Print total generations using the counter number, which has been
    %iterating
    %Print total time elapsed with tic/toc
%Plot the maximum fitness and average fitness
    %Calculate max fitness by finding max of the second cell
    %Calculate average fitness by adding second cell together and dividing
    %by number of individuals
%Plot the genetic diversity
    %Calculated by maxfitness-averagefitness
%Save best phrase, max fitness, average fitness, and genetic diveristy for
%each generation to a text file

function mutatedChild = causeMutation(child,mutation_chance)
%this function will cause a mutation in mutation_chance of bred children,
%where mutation chance is the odds that a child is mutated (in percent).

%input is a child and the mutation chance
if randi(100) <= mutation_chance
    %Preallocated mutatedChild
    mutatedChild = child;
    
    %choose one random character of the child and change it into another
    character_to_change = randi(length(child));
    
    %Create a values vector to determine the possible mutations
    values = [32,65:90,97:122];
    
    %Assign the new character
    new_character = char(values(randi(length(values))));
    
    mutatedChild(character_to_change) = new_character;
    %output is mutated child
end

end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   �tape d'initialisation
%
%       G�n�re des individus al�atoire
%       dans les limites du probl�me et
%       l'ensemble vide archive
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Po = InitialisationSPEA2(individuVide, ProblemParameters,GAParameters,UserInput)

%-----------------------------------------
%	Init variables
%-----------------------------------------
A = ProblemParameters.LowerLimit;
B = ProblemParameters.UpperLimit;
N = GAParameters.PopSize;
n = ProblemParameters.NbVariablesDecision;

%Population initiale vide
Po = repmat(individuVide, N, 1);

%-----------------------------------------
%   G�n�ration d'une population al�atoire
%   entre les bornes du probl�me
%-----------------------------------------
for i = 1:N
  
    Po(i).Val = A+(B-A)*rand(n,1);
    Po(i).ValObjective = Probleme(UserInput.Probleme,Po(i).Val);
    
end
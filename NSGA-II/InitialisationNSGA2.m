%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   �tape d'initialisation
%
%       G�n�re des individus al�atoire
%       dans les limites du probl�me
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Pop = InitialisationNSGA2(individuVide, ProblemParameters,GAParameters)

%-----------------------------------------
%	Init variables
%-----------------------------------------
A = ProblemParameters.LowerLimit;
B = ProblemParameters.UpperLimit;
N = GAParameters.PopSize;
n = ProblemParameters.NbVariablesDecision;

%-----------------------------------------
%	Regroupement des colonnes en une tab
%-----------------------------------------
Pop = repmat(individuVide,N,1);

%-----------------------------------------
%   G�n�ration d'une population al�atoire
%   entre les bornes du probl�me
%-----------------------------------------
for i = 1:N
    Pop(i).Val = A+(B-A)*rand(n,1);
end
%___________________________________________________________________%
% Chimp Optimization Algorithm (ChOA) source codes version 1.0   
% By: M. Khishe, M. R. Musavi
% m_khishe@alumni.iust.ac.ir
%For more information please refer to the following papers:
% M. Khishe, M. R. Mosavi, “Chimp Optimization Algorithm,” Expert Systems
% With Applications, 2020.
% Please note that some files and functions are taken from the GWO algorithm
% such as: Get_Functions_details, PSO,  
%  For more information please refer to the following papers:
% Mirjalili, S., Mirjalili, S. M., & Lewis, A. (2014). Grey Wolf Optimizer. Advances in engineering software, 69, 46-61.            %
%___________________________________________________________________%

% You can simply define your cost in a seperate file and load its handle to fobj 
% The initial parameters that you need are:
%__________________________________________
% fobj = @YourCostFunction
% dim = number of your variables
% Max_iteration = maximum number of generations
% SearchAgents_no = number of search agents
% lb=[lb1,lb2,...,lbn] where lbn is the lower bound of variable n
% ub=[ub1,ub2,...,ubn] where ubn is the upper bound of variable n
% If all the variables have equal lower bound you can just
% define lb and ub as two single number numbers

clear all 
clc

SearchAgents_no=30; % Number of search agents
N=SearchAgents_no;
Function_name='F8'; % Name of the test function that can be from F1 to F23 (Table 3,4,5 in the paper)

Max_iteration=500; % Maximum numbef of iterations
Max_iter=Max_iteration;

% Load details of the selected benchmark function
[lb,ub,dim,fobj]=Get_Functions_details(Function_name);


[ABest_scoreChimp,ABest_posChimp,Chimp_curve]=Chimp(SearchAgents_no,Max_iteration,lb,ub,dim,fobj);
[PSO_gBestScore,PSO_gBest,PSO_cg_curve]=PSO(N,Max_iteration,lb,ub,dim,fobj);
[TACPSO_gBestScore,TACPSO_gBest,TACPSO_cg_curve]=TACPSO(N,Max_iteration,lb,ub,dim,fobj);
[MPSO_gBestScore,MPSO_gBest,MPSO_cg_curve]=MPSO(N,Max_iteration,lb,ub,dim,fobj);

% PSO_cg_curve=PSO(SearchAgents_no,Max_iteration,lb,ub,dim,fobj); % run PSO to compare to results

figure('Position',[500 500 660 290])
%Draw search space
subplot(1,2,1);
func_plot(Function_name);
title('Parameter space')
xlabel('x_1');
ylabel('x_2');
zlabel([Function_name,'( x_1 , x_2 )'])

%Draw objective space
subplot(1,2,2);
semilogy(MPSO_cg_curve,'Color','g')
hold on
semilogy(PSO_cg_curve,'Color','b')
hold on
semilogy(TACPSO_cg_curve,'Color','y')
hold on
semilogy(Chimp_curve,'--r')


title('Objective space')
xlabel('Iteration');
ylabel('Best score obtained so far');

axis tight
grid on
box on
legend('MPSO','PSO','TACPSO','Chimp')

display(['The best optimal value of the objective funciton found by TACPSO is : ', num2str(TACPSO_gBestScore)]);
display(['The best optimal value of the objective funciton found by PSO is : ', num2str(PSO_gBestScore)]);
display(['The best optimal value of the objective funciton found by PSO is : ', num2str(MPSO_gBestScore)]);
display(['The best optimal value of the objective funciton found by Chimp is : ', num2str(ABest_scoreChimp)]);


        




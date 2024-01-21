%M. Khishe, M.R. Mosavi,
Chimp optimization algorithm,
Expert Systems with Applications,
Volume 149,
2020,
113338,
ISSN 0957-4174,
https://doi.org/10.1016/j.eswa.2020.113338.
(http://www.sciencedirect.com/science/article/pii/S0957417420301639)
 Max_iter=500;
 l=1:Max_iter; 
       
   %Group 1
    C1G1=1.95-((2*l.^(1/4))/(Max_iter.^(1/3)));
%     C2G1=(2*l.^(1/3))/(Max_iter.^(1/3))+0.5;
        
   %Group 2
    C1G2= 1.95-((2*l.^(1/3))/(Max_iter.^(1/4)));
%     C2G2=(2*(l.^3)/(Max_iter.^3))+0.5;
    
    %Group 3
    C1G3=(-3*(l.^3)/(Max_iter.^3))+1.5;
%     C2G3=(2*l.^(1/3))/(Max_iter.^(1/3))+0.5;
    
    %Group 4
    C1G4=(-2*(l.^3)/(Max_iter.^3))+1.5;
%     C2G4=(2*(l.^3)/(Max_iter.^3))+0.5;
    % PLOT c1
    hold on
plot(C1G1,'--m','Linewidth',3);
hold on
plot(C1G2,'-.k','Linewidth',3);
hold on
plot(C1G3,'g','Linewidth',3);
hold on
plot(C1G4,':b','Linewidth',3)


title('f (ChOA1)','FontName','Times New Roman','FontSize',16,'FontWeight','bold');
xlabel('Iteration','FontName','Times New Roman','FontSize',16,'FontWeight','bold');
ylabel('Amplitude','FontName','Times New Roman','FontSize',16,'FontWeight','bold');
legend('Attacker','Barrier','Driver','Chaser');
axis tight
box on

    
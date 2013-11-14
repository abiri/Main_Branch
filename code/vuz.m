
% Draws the agents on the map 

load data;

x_w = zeros(time_walk/dt,1);
y_w = zeros(time_walk/dt,1);
 
 for i = 1:length(x_w)
     
     if (i <= ceil(time_walk / dt *0.2))
         
         y_w(i)= 4;
         
     elseif (i > ceil(time_span / dt*0.2) && i <= ceil(time_span / dt * 0.6)) 
         
         % additional terms clear irregularities induced by changing
         % conditions
         
         y_w(i) = 2*x_w(i) + y_w( ceil(time_span / dt*0.2)) - 2*(ceil(time_span / dt*0.2));
         
     else
         
         y_w(i) = -3*x_w(i) + y_w(ceil(time_span / dt*0.6)) + 3*(ceil(time_span / dt*0.6));
     
     end
    
 end
 fid = figure;
   
 for k = previous:(apti*(i-1))
     hold on
     for ii = 1 : length(y)
         plot(x_y,y_w(M(:,2))); %% not sure if correct
     end
     hold off
 end
     
 
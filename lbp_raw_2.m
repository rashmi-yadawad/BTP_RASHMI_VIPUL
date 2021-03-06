function H1 = lbp_raw_2(file)
      I=imread(file);
%       y=y(:);
      
      mapping=getmapping(8,'u2'); 
      H1=lbp(I,1,8,mapping,'h'); %LBP histogram in (8,1) neighborhood
      %stem(H1);                           %using uniform patterns
%       subplot(2,1,1),stem(H1);
%       Matrix=zeros(200,10304);
%       temp=zeros(112,92);
%       for i= 1:40
%           tmp= strcat('s',int2str(i));
%           temp= imread(strcat('F:\BTP\FaceDatabase\Database1\Train_Data\', tmp ,'\06.pgm'));
%           
%           temp=temp(:);
%           k=sqrt(sum(temp.*temp));
%           temp=temp/k;
%           Matrix(5*(i-1)+1,:)=temp;
%           temp= imread(strcat('F:\BTP\FaceDatabase\Database1\Train_Data\', tmp ,'\07.pgm'));
%           temp=temp(:);
%           k=sqrt(sum(temp.*temp));
%           temp=temp/k;
%           Matrix(5*(i-1)+2,:)=temp;
%           temp= imread(strcat('F:\BTP\FaceDatabase\Database1\Train_Data\', tmp ,'\08.pgm'));
%           temp=temp(:);
%           k=sqrt(sum(temp.*temp));
%           temp=temp/k;
%           Matrix(5*(i-1)+3,:)=temp;
%           temp= imread(strcat('F:\BTP\FaceDatabase\Database1\Train_Data\', tmp ,'\09.pgm'));
%           temp=temp(:);
%           k=sqrt(sum(temp.*temp));
%           temp=temp/k;
%           Matrix(5*(i-1)+4,:)=temp;
%           temp= imread(strcat('F:\BTP\FaceDatabase\Database1\Train_Data\', tmp ,'\010.pgm'));
%           temp=temp(:);
%           k=sqrt(sum(temp.*temp));
%           temp=temp/k;
%           Matrix(5*(i-1)+5,:)=temp;
%           
%       end
%       
%       A=zeros(10304,200);
%       A=Matrix';
%       xp=zeros(200,1);
%       x0=zeros(200,1);
%       f=ones(200,1);
%       
%       xp = linprog(f,[],[],A,y,[],[],[],[]);
% %       xp = l1decode_pd(x0, A, y);
%       
%       min=inf;
%       r_y=zeros(10304,1);
%       rms=0;
%       k=-1;
%       shift=[ones(1,5),zeros(1,195)];
%       
%   
%       for i=1:40
%           shift=circshift(shift,[0,5*(i-1)]);
%           
%           delta= xp.*shift;
%           r_y= y-A*delta;
%           rms=sqrt(sum(r_y.*r_y));
%           if(rms<min)
%               min=rms;
%               k=i;
%           end
%       end  
%           k
      
          
          
          
          
          
 
      

% 
%       H2=LBP(I);
%       subplot(2,2,2),stem(H2);
% 
%       SP=[-1 -1; -1 0; -1 1; 0 -1; -0 1; 1 -1; 1 0; 1 1];
%       I2=LBP(I,SP,0,'i'); %LBP code image using sampling points in SP
%                           %and no mapping. Now H2 is equal to histogram
%                           %of I2.
                          
      

%
% %       A = [ -1   0  -2   0   0
% %        2   8   0   1   0
% %        0   0   3   0  -2
% %        0  -3   2   0   0
% %        1   2   0   0  -4];
% 
%   a=size(H1);
%   b=size(H1);
%   c=0;
%   position=0;
%   for i=1:a 
%       for j=1:b 
%           if H1(i,j) ~=0
%               c=c+1;
%               position=position+1;
%               S(c,:)=[position,i,j,H1(i,j)];
%           end
%       end
%   end
% 
%   index=size(S,1);
%   NIR = [];
% for i = 1:index
%     for j = 1:index
%         if i ~= j
%             if S(i,2) == S(j,2)if S(i,3) < S(j,3)if length(NIR) < i
%                         NIR(i,1) = S(j,1);
%                     end
%                 end
%             end
%         end
%     end
%     if length(NIR) < i
%         NIR(i,1) = 0;
%     end
% end
% 
% %finding NIC
% NIC = [];
% for i = 1:index
%     for j = 1:index
%         if i ~= j
%             if S(i,3) == S(j,3)if S(i,2) < S(j,2)if length(NIC) < i
%                         NIC(i,1) = S(j,1);
%                     end
%                 end
%             end
%         end
%     end
%     if length(NIC) < i
%         NIC(i,1) = 0;
%     end
% end
% 
% Sprs=[S,NIR,NIC]
% 
% n=nnz(H1);
% r=size(H1);
% m=r(1,1);
% position=zeros(n,1);
% t=1;
% FIR= zeros(m,1);
% FIC= zeros(m,1);
% for i= 1: n
%     position(i,1)= i;
% end
% 
% for i= 1: m
%     for j= 1: m
%         if (H1(i,j)~= 0)
%             value(var,1)= H1(i,j);
%             row(var,1)= i;
%             col(var,1)= j;
%             var= var+ 1;
%         end
%     end
% end
% for j= 1: m
%     for i= t: n
%         if row(i,1)== j
%             FIR(j,1)= position(i,1);
%             t= i+1;
%             break;
%         end
%     end
% end
% for k= 1: m
% for l= 1: n
%     if (col(l,1)== k)
%         FIC(k,1)= position(l,1);
%         break;
%     end
% end
% end
% [i,j,s]=find(H1);
%       [m,n]=size(H1);
%       
%       S1=sparse(i,j,s,m,n);
%       subplot(2,1,2),stem(S1);
% 

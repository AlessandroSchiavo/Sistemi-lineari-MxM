function [A,b]=PivotingParziale(A,b,k,N)
max=0;
posmax=0;
%ricerca elemento maassimo 
 for y=k:N %controllo su tutti gli elemente della k-esima colonna
     if A(y,k)>max
         max=A(y,k); 
         posmax=y; %salva il numero della riga dell'elemento maggiore 
     end
 end
 if posmax~=k %se l elemento più grande non si trova nella k-esima riga esegue scambio
     for i=k:N %colonna
         temp_row = A(i, :);
         A(i, :) = A(k, :);
         A(k, :) = temp_row;
         %scambio elementi di b
         temp=b(i);
         b(i)=b(k);
         b(k)=temp;

     end
 end
end

         
     
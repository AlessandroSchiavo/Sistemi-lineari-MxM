function [A,b]=EliminazioneDiGauss(N,A,b)
for k=1:N-1 %contatore dei passi
    [A,b]=PivotingParziale(A,b,k,N); %ricercherà l elemento più grande all'interno
                                     %della k-esima colonna e effettuerà
                                     %opportuni scambi
    for i=k+1:N %contatore righe
        molt=A(i,k)/A(k,k); %calcolo del moltiplicatore 
        for j=k:N %contatore colonne
           A(i,j)=A(i,j)-(molt)*A(k,j); %esegue combinazione lineare 
                                        %su ogni elemento di A 
                                        %a partire dall elemento che si trova
                                        %nella k+1 esima riga e k colonna
                                     
        end
        b(i)=b(i)-molt*b(k); %esegue combinazione lineare su ogni elemento 
                             %di b a partire dalla posizione k+1
    end
end

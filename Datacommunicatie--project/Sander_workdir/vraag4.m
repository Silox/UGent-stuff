%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          VRAAG 4         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

format long

load('Xfile4.mat');


% Om E[n] te bepalen hebben we nodig: p_i en n_i
% p_i is de kans dat X een waarde uit M aanneemt (0,1)
% n_i is het aantal bits in ons codewoord
% N is |M| = 2 (onze bron heeft 0 of 1 )

% sym = [subsref(tabulate(bitsrc),struct('type','()','subs',{{1,1}})),subsref(tabulate(bitsrc),struct('type','()','subs',{{2,1}}))]'
% change = [subsref(tabulate(bitsrc),struct('type','()','subs',{{1,3}})),subsref(tabulate(bitsrc),struct('type','()','subs',{{2,3}}))]'

% Pr = horzcat(sym,change);

set(0,'RecursionLimit',5000);

H = zeros(10,1);            % maak lege rij voor de entropie voor alle k
E = zeros(10,1);            % Gem aantla codebits
ondergrens = zeros(10,1);   % Ondergrens
bovengrens = zeros(10,1);   % Bovengrens
input_size = numel(bitsrc); %aantal bronsymbolen in onze bron

for aantal_bron_symbolen=1:10, %Laat k varieren 1,...,10 waar k het aantal bronsymbolen is in ons macrosymbool, M=(0,1) |A| = M->2: (0,1)
    freq_tabel = zeros(1,2^aantal_bron_symbolen); %De freq tabel
    
    for i=1:input_size/aantal_bron_symbolen, %Voor 1 tem alle bronsymbolen in blokken van K
        index = (bi2de(bitsrc(((i-1)*aantal_bron_symbolen)+1:aantal_bron_symbolen*i)))+1; %Bepaal hashvalue horen bij macrosymbool om onze freq_tabel
        freq_tabel(index) = freq_tabel(index)+1; %Aanpassen freq_tabel
    end
    
    freq_tabel = freq_tabel/i; %relatieve freq
    
    huffman_dict = huffmandict(1:2^aantal_bron_symbolen,freq_tabel); %Stel de huffman code op 
        
    for k=1:2^aantal_bron_symbolen,        
        E(aantal_bron_symbolen) = E(aantal_bron_symbolen) + freq_tabel(k) * numel(huffman_dict{k,2}); %Bepalen van gemiddelde lengte code
    end
    
    E(aantal_bron_symbolen) = E(aantal_bron_symbolen)/aantal_bron_symbolen; %De volledige som delen door K (pagina 20)
        
    H(aantal_bron_symbolen) = -sum(freq_tabel(freq_tabel~=0).*log2(freq_tabel(freq_tabel~=0)));
    bovengrens(aantal_bron_symbolen) = H(aantal_bron_symbolen)/aantal_bron_symbolen + 1/aantal_bron_symbolen;
    ondergrens(aantal_bron_symbolen) = H(aantal_bron_symbolen)/aantal_bron_symbolen;
    
end

waarden_x_as=1:1:10;

plot(waarden_x_as, E, '-go', waarden_x_as, bovengrens, '-ro', waarden_x_as, ondergrens, '-bo');
title('Opgave 4: Gemiddeld aantal codebits per codewoord gebruikmakend van Huffmancodering');
ylabel('E[n] (bits/symbool)');
xlabel('Aantal samengenomen bronsymbolen');
leg1 = legend('Geobserveerde', 'Bovengrens', 'Ondergrens');
set(leg1,'Location','NorthWest')



    

    
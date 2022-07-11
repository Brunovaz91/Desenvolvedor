%cálculo da taxa de ocupação
quarto=input("Digite o numero de quarto(s) da edificação: ");
moradores=quarto*2; %considerou-se o número médio de 2 pessoas por quarto
%cálculo do consumo de água potável:
  if (quarto >= 5);
    c=200;
  elseif (quarto >= 4 && quarto < 5);
    c=160;
  elseif (quarto >= 3 && quarto < 4);
    c=150;
  elseif (quarto >= 2 && quarto < 3);
    c=120;
  elseif (quarto==1);
    c=100;
  endif
%c= consumo de água per capta
volume1=c*moradores*quarto;
printf("Volume do reservatório.............: %d\n", volume1)
%cálculo da fossa séptica
detencaoh=0.67; %dias
k=57; % taxa de acumulação do lodo (dias)
lf=1;
for l=0.67:0.67:(moradores*0.67);
      x=l;
      endfor
vfossa=x*c+moradores*(k*lf)+1000;
printf("Volume da fossa séptica.............: %d\n", vfossa)
%cálculo do filtro anaeróbico
vfiltro=1.6*x*c;
printf("Volume do filtro de anaerobico.............: %d\n", vfiltro)
%cálculo do sumidouro
%Entrada de dados para o dimensionamento
a=1; %Diâmetro do sumidouro (m)
b=moradores;
ceflu=.65*c*moradores; %input("Contribuição de efluentes por dia (v): ")
d=4; %input("Resultado do ensaio de infiltração do solo (min): ")
%Cálculo
e=490/(d+2.5);
%Dimensionamento
ar=ceflu/e;
h=ar/(pi*a);
%Resultado e exposição deste
printf("\a");
printf("Para um diâmetro de sumidouro = %d, temos: \n", a)
printf("Valor do coeficiente de infiltração...: %d\n", e)
printf("Valor da área calculada...............: %d\n", ar)
printf("Valor da altura calculada.............: %d\n", h)

#cálculo da taxa de ocupação
quarto=int(input("Digite o numero de quarto(s) da edificação: "))
moradores=quarto*2 #considerou-se o número médio de 2 pessoas por quarto

#cálculo do consumo de água potável:

if quarto >= 5:
    c=900
elif quarto == 4:
    c=600
elif quarto == 3:
    c=450
elif quarto == 2:
    c=300
elif quarto == 1:
    c=150
#c= consumo de água per capta

#cálculo do volume do reservatório
volume1=c*moradores*2;
print("Volume do reservatório.............: ", volume1)
#cálculo da fossa séptica

detencaoh=0.67; #dias
k=57; #taxa de acumulação do lodo (dias)

soma=0
for lf in range(0, moradores):
    n=0.67
    soma = soma+n

#
vfossa=moradores*(c*detencaoh+k*lf);
print ("Volume da fossa séptica.............: ", vfossa)

#cálculo do filtro anaeróbico
vfiltro=1.6*moradores*c*detencaoh;
print("Volume do filtro de anaerobico.............: ", vfiltro)
#cálculo do sumidouro
#Entrada de dados para o dimensionamento
a=2; #Diâmetro do sumidouro (m)
b=moradores;
ceflu=0.8*c*moradores; #input("Contribuição de efluentes por dia (v): ")
d=4; #input("Resultado do ensaio de infiltração do solo (min): ")
#Cálculo
e=490/(d+2.5);

#Dimensionamento
import math
ar=ceflu/e;
h=ar/(math.pi*a);

#Resultado e exposição deste
print(f"para um diâmetro de sumidouro = {a}, temos: ", a)
print("valor do coeficiente de infiltração...: ", e)
print("valor da área calculada...............: ", ar)
print("valor da altura calculada.............: ", h)

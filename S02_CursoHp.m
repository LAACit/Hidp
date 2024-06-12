%Abrimos los datos 
df=datos(:,[1:6,9]); %Aqui debemos seleccionar la columna de interés


%visualiza el sitio a estudiar 
tt=datetime(df(:,1:6));
plot(tt,df(:,7))
yline(0)


% 2) Preparamos arreglos  vacios para llenarlos posteriormente 

% Primero se identifican el intervalo de años que tenemos
years=unique(df(:,1))

% Numero de años 
nyears = length(unique(df(:, 1)));

% 3a) Se define arreglo para guardar los años 

year = cell(nyears, 1);
for i = 1:nyears
    year{i, 1} = df(:, 1) == years(i);
    year{i,2}= df(year{i,1},:); 
end
clear i 

% 3b) Escogemos un año para sacarlos promedios mensuales

ano=year{2,2};    %Escogemos el año modificando el valor del primer numero 
display(ano(1,1)) %muestra el año escogido 


% 3c) Separamos los datos del año escogido  por mes 

mes=cell(12); %Hacemos un arreglo para guardar los resultados 
for i=1:12;                  %(Aquí 1= Enero, 2= Febrero etc) 
    mes{i,1}=ano(:,2)==i;
    mes{i,2}=ano(mes{i,1},:);
end
clear i


% 4)Calculamos Hidroperiodo tradicional  

%Estaremos calculadon las siguientes varibales; 

%Columna 3: Tiempo de inundadación (Numero de horas x mes inundado)
%Columna 4: Frecuencia de inundacion (eventos inundación x mes)
%Columna 5: Nivel inundación  (Nivel promedio mesual de  inundación)


%Se calcula DURACIÓN Y PROMEDIO 

for i=1:12; 
    horas=0;
    for j=1:length(mes{i,2});
        if mes{i,2}(j,7)>0; %Condición para el contador, la inundación > 0 cm de agua 
        horas=horas+1; %Contador de horas 
    end
    mes{i,5}=horas;  %Numero de horas x mes inundado: Timepo de inundadación
    mes{i,6}=mean(mes{i,2}(:,7));%Nivel promedio mesual de  inundación Nivel inundación 
    end
    clear horas
end
   
%SE CALCULA FRECUENCIA 

%primero se quitan los valores menores a 0 (que son no inundación 

for i=1:12;   
    for j=1:length(mes{i,2});
        if mes{i,2}(j,7)<=0; %Condición para el contador, la inundación > 0 cm de agua 
            mes{i,2}(j,7)=0;
        end
    end
end

%Ahora vamos a smmoth 
for i=1:12;   
    for j=1:length(mes{i,2});
        mes{i,3}=smoothdata(mes{i,2},"movmedian",8);
    end
end

%Ahora identificamos los maximos 
for i=1:12;   
    for j=1:length(mes{i,2});
        mes{i,4}=islocalmax(mes{i,3});
    end
end

%Ahora contamos los maximos 
for i=1:12; 
    max=0;
    for j=1:length(mes{i,2});
        if mes{i,4}(j,7)==1; %Condición para el contador, la inundación > 0 cm de agua 
        max=max+1; %Contador de horas 
        end
        mes{i,7}=max;
    end
end

clearvars -except df mes maxn minn df datos datosAv

Proceso alumno_peso
	Definir peso_alu,contar_alu1,contar_alu2,contar_alu3,contar_alu4,cantalu,contar Como Entero;
	Definir nombre Como Caracter;
	
	contar_alu1<-0;
	contar_alu2<-0;
	contar_alu3<-0;
	contar_alu4<-0;
	contar<-0;
	
	Escribir 'Ingrese cantidad de alumnos del colegio: ';
	Leer cantalu;
	
	Repetir
		contar<-contar+1;
		Escribir 'Ingrese el nombre del alumno: ';
		Leer nombre;
		Escribir 'Ingrese el peso del alumno: ';
		Leer peso_alu;
		si peso_alu < 40 Entonces
			contar_alu1<-contar_alu1 +1;
		Sino
			si peso_alu>=40 Y peso_alu<=50 Entonces
				contar_alu2<-contar_alu2 +1;
			Sino
				si peso_alu>50 Y peso_alu <60 Entonces
					contar_alu3<-contar_alu3 +1;
				Sino 
					si peso_alu >=60 Entonces
						contar_alu4<-contar_alu4 +1;
					FinSi
				FinSi
			FinSi
		FinSi
	Hasta Que contar=cantalu;
	
	Escribir 'El porcentaje de los alumnos con peso menor a 40 es: ',porcentaje(cantalu,contar_alu1),'%';
	Escribir 'El porcentaje de los alumnos con peso entre 40 y 50 es: ',porcentaje(cantalu,contar_alu2),'%';
	Escribir 'El porcentaje de los alumnos con peso de mas de 50 y menos de 60: ',porcentaje(cantalu,contar_alu3),'%';
	Escribir 'El porcentaje de los alumnos con peso de mas o igual que 60 es: ',porcentaje(cantalu,contar_alu4),'%';
	
FinProceso


SubProceso porc <- porcentaje ( cantalu,contar_peso )
	Definir porc como real;
	si contar_peso>0 entonces
		porc<-(100 / cantalu) * contar_peso;
	SiNo
		porc<-0;
	FinSi
FinSubProceso

def selectionSort(vet,n)	#definicao do metodo que aplica a ordenacao Selection Sort, que sera posteriormente chamada no programa  

	i = 0
	j = 0
	while i < n-1

		menor = i   		#define i atual como indice do vetor de menor valor
		j = i+1

		while j < n
			if vet[j] < vet[menor]	#itera sobre os valores do vetor para ordena-los de maneira crescente,			
				menor = j			#tomando como menor o indice do vetor com menor valor entre os elementos
			end						#ainda a serem ordenados	
			j += 1
		end

		if i != menor				#se i for diferente de menor,ou seja, i nao estava ordenado no vetor,
			aux = vet[i]			#ordena um elemento do vetor
			vet[i] = vet[menor]
			vet[menor] = aux
		end

		i +=1
	end
	#return vet
end



n = 1000;

while n<=50000

	puts "#{n}:\n"

	for vezes in 1..10 do				#executa 10 testes para cada valor de n

		i = 0;

		vetor = [rand(0..n)]			#cria o vetor e adiciona um valor aleatoorio a seu primeiro indice
		#puts "Elemento #{i}:#{vetor[i]}"
		i += 1

		while i<n

			vetor <<  rand(0..n)		#adiciona elementos aleatorios de 0 a n no proximo indice do array
			#puts "Elemento #{i}:#{vetor[i]}"
			i += 1
		end

		tempoInicial = Process.clock_gettime(Process::CLOCK_MONOTONIC)		
		selectionSort(vetor,n)
		tempoFinal = Process.clock_gettime(Process::CLOCK_MONOTONIC)

		tempoTotal = tempoFinal - tempoInicial			#calcula o tempo em segundos do inicio ao final da ordenacao

		puts "Tempo da execucao #{vezes}: #{tempoTotal} segundos\n\n"

	end

	if n == 1000
		n += 4000
	else
		n += 5000
	end
end

=begin

i = 0

while i<vetor.length
	puts "Elemento #{i}:#{vetor[i]}\n"
	i+=1
end
=end

{
	printf "\033[%d;37m%s", 41+logs_number, logs_host;

	# Colore a mensagem de acordo com o tipo: DEBUG, WARN, ERROR
	if ($0 ~ /DEBUG|^\[GC \[PSYoungGen|^\[Full GC \[PSYoungGen/)
		printf "\033[1;30;40m"s;

	else if ($0 ~ /WARN/)
		printf "\033[0;33m";

	else if ($0 ~ /ERROR/)
		printf "\033[31;40m";

	else printf "\033[0m"; #Mensagem normal


	# Imprime a mensagem e reseta a cor do terminal
	print $0"\033[0m";
}


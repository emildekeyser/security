all:
	gcc -o vuln -fno-stack-protector -m32 -z execstack vuln.c
	gcc -o s-proc -fno-stack-protector -m32 -z execstack s-proc.c
	gcc -o test -fno-stack-protector -m32 -z execstack test.c
	# gcc -o vuln -fno-stack-protector -z execstack vuln.c

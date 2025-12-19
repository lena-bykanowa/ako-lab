# include <stdio.h>
# include <locale.h>
void plus_jeden(int* a);
void liczba_przeciwna(int* a);

int main() {
	//setlocale(LC_CTYPE, "Polish");
	int m;
	m = -5;
	liczba_przeciwna(&m);

	printf("\n m = %d\n", m);
	return 0;
}
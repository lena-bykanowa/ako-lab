# include <stdio.h>
# include <locale.h>
void plus_jeden(int* a);
void liczba_przeciwna(int* a);
void odejmij_jeden(int** a);

int main() {
	setlocale(LC_CTYPE, "Polish");
	int k;
	int* wsk;

	wsk = &k;
	printf("\Proszê podaæ liczbê: ");
	scanf_s("%d", &k, 12);
	odejmij_jeden(&wsk);
	printf("\nWynik = %d\n", k);
	return 0;
}
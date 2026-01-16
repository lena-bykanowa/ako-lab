# include <stdio.h>
# include <locale.h>
float srednia_harm(float* tablica, unsigned int n);

int main() {
	setlocale(LC_CTYPE, "Polish");
	printf("\nProsze podac iloœæ liczb: ");
	unsigned int n;
	scanf_s("%u", &n);

	float* tablica = (float*)malloc(n * sizeof(float));

	float wynik;

	for (int i = 0; i < n; i++) {
		printf("\nPodaj wartoœæ #%u: ", i + 1);
		scanf_s("%f", &tablica[i]);
	}

	wynik = srednia_harm(tablica, n);

	printf("\nŒrednia harmoniczna wynosi: %f\n", wynik);
	free(tablica);

	return 0;
}
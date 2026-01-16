# include <stdio.h>
# include <locale.h>
//float srednia_harm(float* tablica, unsigned int n);
float nowy_exp(float x);

int main() {
	setlocale(LC_CTYPE, "Polish");
	printf("\nPodaj wartoœæ pocz¹tkow¹ x: ");
	float x;
	scanf_s("%f", &x);

	float wynik = nowy_exp(x);

	printf("\nSuma 20 pocz¹tkowych wyrazów ci¹gu wynosu: %f\n", wynik);
	
	return 0;
}
/* Program przyk³adowy ilustruj¹cy operacje SSE procesora
 Program jest przystosowany do wspó³pracy z podprogramem
 zakodowanym w asemblerze (plik arytm_SSE.asm)
*/
#include <stdio.h>

void int2float(int* calkowite, float* zmienno_przec);
int main()
{
	int a[2] = { -17, 24 };
	float r[4];

	int2float(a, r);
	printf("\nKonwersja = %f %f\n", r[0], r[1]);

	return 0;
}

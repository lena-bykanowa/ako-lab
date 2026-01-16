/* Program przyk³adowy ilustruj¹cy operacje SSE procesora
 Program jest przystosowany do wspó³pracy z podprogramem
 zakodowanym w asemblerze (plik arytm_SSE.asm)
*/
#include <stdio.h>
//void dodaj_SSE(float*, float*, float*);
//void pierwiastek_SSE(float*, float*);
//void odwrotnosc_SSE(float*, float*);
void suma(char* a, char* b, char* wynik);
int main()
{
	/*float p[4] = { 1.0, 1.5, 2.0, 2.5 };
	float q[4] = { 0.25, -0.5, 1.0, -1.75 };
	float r[4];
	dodaj_SSE(p, q, r);
	printf("\n%f %f %f %f", p[0], p[1], p[2], p[3]);
	printf("\n%f %f %f %f", q[0], q[1], q[2], q[3]);
	printf("\n%f %f %f %f", r[0], r[1], r[2], r[3]);
	printf("\n\nObliczanie pierwiastka");
	pierwiastek_SSE(p, r);
	printf("\n%f %f %f %f", p[0], p[1], p[2], p[3]);
	printf("\n%f %f %f %f", r[0], r[1], r[2], r[3]);
	printf("\n\nObliczanie odwrotnoœci - ze wzglêdu na \
stosowanie");
	printf("\n12-bitowej mantysy obliczenia s¹ ma³o dok³adne");
	odwrotnosc_SSE(p, r);
	printf("\n%f %f %f %f", p[0], p[1], p[2], p[3]);
	printf("\n%f %f %f %f", r[0], r[1], r[2], r[3]);*/

	char liczby_A[16] = { -128, -127, -126, -125, -124, -123, -122,
		-121, 120, 121, 122, 123, 124, 125, 126, 127 };
	char liczby_B[16] = { -3, -3, -3, -3, -3, -3, -3, -3,
		3, 3, 3, 3, 3, 3, 3, 3 };
	char wynik[16];

	suma(liczby_A, liczby_B, wynik);

	for (int i = 0; i < 16; i++) {
		printf("%d + %d = %d\n", liczby_A[i], liczby_B[i], wynik[i]);
	}

	return 0;
}

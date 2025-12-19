# include <stdio.h>
# include <locale.h>
void plus_jeden(int* a);

int main() {
	//setlocale(LC_CTYPE, "Polish");
	int m;
	m = -5;
	plus_jeden(&m);

	printf("\n m = %d\n", m);
	return 0;
}
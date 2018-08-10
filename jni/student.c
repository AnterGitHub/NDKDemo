#include <stdio.h>
#include "include/age.h"

int get_ten_years_later_age(int age) {
	int get_age = get_five_years_later_age(age);
	printf("In get_ten_years_later_age: get age is -> %d", get_age);
	get_age += 5;
	return get_age;
}

int main() {
	int final_age = get_ten_years_later_age(8);
	printf("In main: final age is -> %d", final_age);
	getchar();
	return 0;
}
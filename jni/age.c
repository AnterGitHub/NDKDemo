#include <stdio.h>
#include "include/age.h"

int get_five_years_later_age(int age) {
	printf("In get_five_years_later_age: input age is -> %d", age);
	age+=5;
	return age;
}

import random
import sys 

def modulo_30(x):
	a = x % 30
	if x in [1, 7, 11, 13, 17, 19, 23, 29]:
		return True
	else
		return False



def miller_rabin(d, n):
	for a in [2, 4, 8, 16, 32, 64]:
		x = a ** d % n

		if modulo_30(d) == False:
			return False

		while(d != n -1):
			x = x ** 2 & n
			d *= 2;

			if x == 1:
				break
			if x == n - 1:
				return False

			return False

	return True




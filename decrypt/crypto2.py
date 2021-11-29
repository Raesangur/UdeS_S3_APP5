# Python 3 program to find a prime factor of composite using
# Pollard's Rho algorithm
import random
import math

# Function to calculate (base^exponent)%modulus
def modular_pow(base, exponent,modulus):

	# initialize result
	result = 1

	while (exponent > 0):
	
		# if y is odd, multiply base with result
		if (exponent & 1):
			result = (result * base) % modulus

		# exponent = exponent/2
		exponent = exponent >> 1

		# base = base * base
		base = (base * base) % modulus
	
	return result

# method to return prime divisor for n
def PollardRho(n):
    m = 2
    for i in range(1, n):
        m = (m**i) % n
        if(math.gcd(n, m - 1) != 1):
            f = math.gcd(n, m - 1)

            return f, n//f

def phiN(p, q):
    return (p - 1)*(q - 1)

def inverse_multiplicatif_mod(a,n):
    if ( a == 0): 
        return -1
    hg = n
    hv = 0
    bg = a
    bv = 1
    while ( bg != 0):
        t = hg // bg
        tg = bg
        bg = hg - (t * bg)
        hg = tg
        tv = bv
        bv = hv - (t * bv)
        hv = tv
    return hv

def programme():
    #print("test: ", inverse_multiplicatif_mod(45,56))
    #print("test pollard: ", PollardRho(86429))
    e = 13
    #n =71632723108922042565754944705405938190163585182073827738737257362015607916694427702407539315166426071602596601779609881448209515844638662529498857637473895727439924386515509746946997356908229763669590304560652312325131017845440601438692992657035378159812499525148161871071841049058092385268270673367938496513 
    n = 86062381025757488680496918738059554508315544797
    p, q = (PollardRho(n))
    print(p)
    print(q)
    print ((p*q) == n)
    
# Driver function
if __name__ == "__main__":
    programme()

    #c = modular_pow(50, 3, 55)
    #m = modular_pow(c, 27, 55)
    #print(m)

    #c = modular_pow(50, 13, 86062381025757488680496918738059554508315544797)
    #m = modular_pow(c, 46341282156994238628536118344529511083859039514, 86062381025757488680496918738059554508315544797)
    #print(m)





	
# This code is contributed by chitranayal

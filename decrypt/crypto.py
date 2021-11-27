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
def PollardRho( n):

	# no prime divisor for 1
	if (n == 1):
		return n

	# even number means one of the divisors is 2
	if (n % 2 == 0):
		return 2

	# we will pick from the range [2, N)
	x = (random.randint(0, 2) % (n - 2))
	y = x

	# the constant in f(x).
	# Algorithm can be re-run with a different c
	# if it throws failure for a composite.
	c = (random.randint(0, 1) % (n - 1))

	# Initialize candidate divisor (or result)
	d = 1

	# until the prime factor isn't obtained.
	# If n is prime, return n
	while (d == 1):
	
		# Tortoise Move: x(i+1) = f(x(i))
        # ((x^2 mod n) + c + n) %
		x = (modular_pow(x, 2, n) + c + n)%n

		# Hare Move: y(i+1) = f(f(y(i)))
		y = (modular_pow(y, 2, n) + c + n)%n
		y = (modular_pow(y, 2, n) + c + n)%n

		# check gcd of |x-y| and n
		d = math.gcd(abs(x - y), n)

		# retry if the algorithm fails to find prime factor
		# with chosen x and c
		if (d == n):
			return PollardRho(n)
	
	return d

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
    print("test: ", inverse_multiplicatif_mod(45,56))
    print("test pollard: ", PollardRho(86429))
    e = 13
    n = 86062381025757488680496918738059554508315544797
    p = PollardRho(n)
    q = n // p
    nPQ = p * q
    if (nPQ != n):
        print("ERROR")
    phi_n = phiN(p,q)
    d = inverse_multiplicatif_mod(e,phi_n)
    if (d < 0):
        d = n + d

    print("n= ", n , "\np=", p, "\nq=", q, "\nd=", d, "\nphiN=", phi_n)
    print("private-key (n,d)= (", n, ",", d,")")

# Driver function
if __name__ == "__main__":
    programme()
    c = modular_pow(50, 3, 55)
    m = modular_pow(c, 27, 55)
    print(m)

    c = modular_pow(50, 13, 86062381025757488680496918738059554508315544797)
    m = modular_pow(c, 46341282156994238628536118344529511083859039514, 86062381025757488680496918738059554508315544797)
    print(m)





	
# This code is contributed by chitranayal

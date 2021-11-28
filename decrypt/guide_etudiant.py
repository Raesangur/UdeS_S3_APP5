def pgcd (a, n):
    if n < a:
        t = n
        n = a
        a = t
    r = n % a
    while r != 0:
        n = a
        a = r
        r = n % a
    return a


def Euclide_etendu(a, n):
    if a == 0:
        return 0

    hg = n
    hu = 1
    hv = 0
    bg = a
    bu = 0
    bv = 1
    while bg != 0:
        t = hg // bg
        tg = bg
        bg = hg - t * bg
        hg = tg
        tu = bu
        bu = hu - t * bu
        hu = tu
        tv = bv
        bv = hv - t * bv
        hv = tv
    return (hg, hu, hv)

def inverse_multiplicatif(a, n):
    if a == 0:
        return 0

    hg = n
    hv = 0
    bg = a
    bv = 1

    while bg != 0:
        t = hg // bg
        tg = bg
        bg = hg - t * bg
        hg = tg
        tv = bv
        bv = hv - t * bv
        hv = tv
    return (hg, hv)


e = 1009
phin = 71632723108922042565754944705405938190163585182073827738737257362015607916694427702407539315166426071602596601779609881448209515844638662529498857637473827619877761773410864319648798086006475717425016765310883448201464512252467386407753219877185553417635484970981578316733921058413611972497484410686329921748

print(inverse_multiplicatif(e, phin))


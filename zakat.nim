import strutils

type
    gram = float
    karat = string
    usd_per_ounce = float
    ounce = float

var
    zakat = 0.025
    nisab: gram = 85
    quality: karat = "24k"
    price_gold: usd_per_ounce = 2032

proc toOunce(nisab: gram): ounce =
    nisab / 28.3495

proc calcNisab(): float =
    var quantity = toOunce(nisab)
    price_gold * quantity

proc calcZakat(): float | string =
    echo "Enter your wealth in $"
    var
        wealth = parseFloat(readLine(stdin))
    if wealth < calcNisab():
        echo "Your have to have at least $", calcNisab()
    else:
        var payable = zakat * wealth
        echo "Your zakat due is $", payable

calcZakat()

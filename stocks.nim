var stock_array = @[50.20, 51.15, 52.00, 51.75, 50.90, 51.40,
        52.25, 52.50, 53.10, 54.00]

proc calculateAveragePrice(stock_array: seq[float]) =
    var sum: float = 0
    var length = stock_array.len()
    for stock in stock_array:
        sum = sum + stock
    echo "Average stock price is: ", (sum/float(length))

proc findMaximumPrice(stock_array: seq[float]) =
    var max: float = 0
    for stock in stock_array:
        if stock > max:
            max = stock
    echo "Maximum stock price is: ", max


proc countOccurrences(stock_array: seq[float], price: float) =
    var count = 0
    for stock in stock_array:
        if stock == price:
            inc count
    echo price, " occured ", count, " time(s)"

proc calculateCumulativeSum(stock_array: seq[float]): seq[float] =
    var sum: float = 0
    var cumulative_list: seq[float] = @[]
    for stock in stock_array:
        sum = sum + stock
        cumulative_list.add(sum)
    return cumulative_list

# method calls
calculateAveragePrice(stock_array)
# findMaximumPrice(stock_array)
# countOccurrences(stock_array, 54.0)
# var cumulative = calculateCumulativeSum(stock_array)
# for index, sum in cumulative:
#     echo "Cumulative sum at position ", (index+1), " is: ", cumulative[index]

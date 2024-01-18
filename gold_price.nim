import httpbeast, htmlparser, strutils

proc getGoldPrice(url: string): float =
  let
    response = getUrl(url)
    document = parseHtml(response.body)
    priceElement = findNode(document, "p", "The price of gold today")
    priceText = priceElement.firstChild.firstChild.data
    # Extract the numeric part of the price text
    price = parseFloat(priceText.filter(isDigit))

  return price

proc isDigit(c: char): bool =
  # Check if a character is a digit
  return c in {'0'..'9'}

# Example usage
let
  url = "https://www.forbes.com/advisor/investing/gold-price/"
  goldPrice = getGoldPrice(url)

echo "The current gold price is: $", goldPrice

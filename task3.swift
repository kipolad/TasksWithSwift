func numWriter(_ number: Int) -> String {
    var text = ""
    let twentiethNumbers = [" ", "один", "два", "три", "четыре", "пять", "шесть", "семь", "восемь", "девять", "десять", 
    "одиннадцать", "двенадцать", "тринадцать", "четырнадцать", "пятнадцать", "шестнадцать", "семнадцать", "восемнадцать", "девятнадцать"]
    let tens = [" ", "десять", "двадцать", "тридцать", "сорок", "пятьдесят", "шестьдесят", "семьдесят", "восемдесят", "девяносто"]
    let hundreds = [" ", "сто", "двести", "триста", "четыреста", "пятьсот", "шестьсот", "семьсот", "восемьсот", "девятьсот", "тысяча"]

    if number < 20 {
        text = twentiethNumbers[number]
    } else {
        if number < 100 {
            if number % 10 == 0 {
                text = tens[number / 10]
            } else {
                text = tens[number / 10] + " " + twentiethNumbers[number % 10]
            }
        } else {
            if number % 100 == 0 {
                text = hundreds[number / 100]
            } else if number % 100 < 20 {
                text = hundreds[number / 100] + " " + twentiethNumbers[number % 100]
            } else {
                text = hundreds[number / 100] + " " +
                 tens[(number - (number / 100) * 100) / 10] + " " +
                 twentiethNumbers[number - (number / 10) * 10]
            }
        }
    }
    return text
}
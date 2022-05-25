func printMonth(_ monthNum: Int) {
    if monthNum == 12 || monthNum == 1 || monthNum == 2 {
        print("Зима")
    } else if monthNum > 2 && monthNum < 6 {
        print("Весна")
    } else if monthNum > 5 && monthNum < 9 {
        print("Лето")
    } else if monthNum > 8 && monthNum < 12 {
        print("Осень")
    } else {
        print("Нет такого месяца")
    }
}

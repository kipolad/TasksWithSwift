
func arraySorting(_ firstArray: [Int]) -> [Int]{
    var arrayResult = [Int]()
    for item in firstArray {
        item < 0 ? arrayResult.insert(item, at: 0) : arrayResult.append(item)
    }
    return arrayResult
}
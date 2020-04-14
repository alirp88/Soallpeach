import Foundation

extension Int {
    var isPrime: Bool {
        if self <= 3 {
            return self > 1
        }
        if self % 2 == 0 || self % 3 == 0 {
            return false
        }
        var i = 5

        while i * i <= self {
            if self % i == 0 || self % (i + 2) == 0 {
                return false
            }
            i += 6
        }
        return true
    }
}

let data = try String(contentsOfFile: CommandLine.arguments[1])

for line in data.components(separatedBy: .newlines) {
    guard let i = Int(line) else {
        continue
    }
    print(i.isPrime ? 1 : 0)
}

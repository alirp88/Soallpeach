import Foundation

extension Int {
    var isPrime: Bool {
        if self < 3 {
            return true
        }
        if self == 4 {
            return false
        }
        if self == 5 {
            return true
        }
        for i in 2..<(Int(sqrt(Double(self))) + 1) {
            if self % i == 0 {
                return false
            }
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

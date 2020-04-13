import Foundation

extension Int {
    var isPrime: Bool {
        for i in 2..<self {
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

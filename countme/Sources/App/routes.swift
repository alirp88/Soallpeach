import Vapor
let dispatchQueue = DispatchQueue(label: "")
var privateCount = 0
var count: Int {
    get {
        return dispatchQueue.sync {
            return privateCount
        }
    }
    set {
        dispatchQueue.sync {
            privateCount = newValue
        }
    }
}

func routes(_ app: Application) throws {


    app.post { req -> Int in
        count += Int(req.body.string ?? "") ?? 0
        return count
    }

    app.get("count") { req -> String in
        return "\(count)"
    }
}

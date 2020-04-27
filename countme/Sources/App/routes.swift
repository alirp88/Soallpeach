import Vapor

func routes(_ app: Application) throws {
    var count = 0

    app.post { req -> Int in
        count += Int(req.body.string ?? "") ?? 0
        return count
    }

    app.get("count") { req -> String in
        return "\(count)"
    }
}

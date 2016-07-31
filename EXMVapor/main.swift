//
//  main.swift
//  EXMVapor
//
//  Created by Arakane Ikumi on 2016/06/25.
//  Copyright © 2016年 addli.co.jp. All rights reserved.
//

import Foundation
import Vapor

typealias Application = Droplet

let test = TestClass()
test.log("Hello, World!")

let app = Application()

app.get("/") { request in
    test.send()
    return "<html><body><h1>Example vapor sample app.</h1></body></html>"
}

app.get("hello") { request in
    return "Hello, world"
}

app.serve()


//Route.get("hello") { _ in
//    return ["Hello" : "World"]
//}
//let server = Server()
//server.run(port: 8080)

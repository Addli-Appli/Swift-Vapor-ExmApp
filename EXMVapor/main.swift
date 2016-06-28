//
//  main.swift
//  EXMVapor
//
//  Created by Arakane Ikumi on 2016/06/25.
//  Copyright © 2016年 addli.co.jp. All rights reserved.
//

import Foundation
import Vapor

let test = TestClass()
test.log(text:"Hello, World!")

let app = Application()

app.get("hello") { request in
    return "Hello, world"
}

app.start()


//Route.get("hello") { _ in
//    return ["Hello" : "World"]
//}
//let server = Server()
//server.run(port: 8080)

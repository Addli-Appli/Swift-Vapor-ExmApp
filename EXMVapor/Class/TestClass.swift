//
//  TestClass.swift
//  EXMVapor
//
//  Created by Arakane Ikumi on 2016/06/25.
//
//

import Foundation

class TestClass
{
    init(){
        
    }
    
    func log( _ text:String ) {
        print( text )
    }
    
    func send(){
        let query = "{\"hoge\":\"huga\"}"
        guard let data = query.data(using: String.Encoding.utf8 ) else { fatalError() }
        guard case let dic as [String:AnyObject] = try? JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions()) else { fatalError() }
        
        guard case let message as String = dic["hoge"] else { fatalError() }
        
        print( message)
    }
    
    
}

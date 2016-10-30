//
//  MarvelApiUtil.swift
//  marvel-api-test
//
//  Created by Diego Llamas Velasco on 10/29/16.
//  Copyright © 2016 Diego Llamas Velasco. All rights reserved.
//

import Foundation

class MarvelApiUtil{

    static let BASE_URL = "http://gateway.marvel.co/v1/"
    
    static func getKeysMapPath() -> String?{
        return Bundle.main.path(forResource: "Keys", ofType: "plist")
    }
    
    static func getPublicKey() -> String{
        return MarvelApiUtil.getFromSecrects(key: "marvel-public-key")
    }
   
    static func getPrivateKey() -> String{
        return MarvelApiUtil.getFromSecrects(key: "marvel-private-key")
    }
    
    static func getFromSecrects(key: String) -> String{
        let keysPath = MarvelApiUtil.getKeysMapPath()
        if let secrects = NSDictionary(contentsOfFile: keysPath!), let value = secrects[key] as? String{
            return value
        }
        return ""
    }
}

//
//  test_marvel_util.swift
//  marvel-api-test
//
//  Created by Diego Llamas Velasco on 10/29/16.
//  Copyright © 2016 Diego Llamas Velasco. All rights reserved.
//

import XCTest

class test_marvel_util: XCTestCase {
    func testBaseUrl(){
        let url = "http://gateway.marvel.co/v1/"
        XCTAssertEqual(url, MarvelApiUtil.BASE_URL, "Should be same url")
    }
    
    func testShouldExistApiKey(){
        let path = MarvelApiUtil.getKeysMapPath()
        XCTAssertNotNil(path, "Should exist a Keys.plist file but not added to git")
    }
    
    func testShouldReturnPublicKey(){
        XCTAssertFalse(MarvelApiUtil.getPublicKey().isEmpty, "Should return a public key")
    }
    
    func testShouldReturnPrivateKey(){
        XCTAssertFalse(MarvelApiUtil.getPrivateKey().isEmpty, "Private should not be empty key")
    }
    
    func testShouldBeDifferentKeys(){
        XCTAssertNotEqual(MarvelApiUtil.getPrivateKey(), MarvelApiUtil.getPublicKey(), "Should be differentk keys")
    }
    
}

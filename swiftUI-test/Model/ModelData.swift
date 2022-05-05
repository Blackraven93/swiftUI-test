//
//  ModelData.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/05/04.
//

import Foundation


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // 주소값 가져오기 (주소값이 없으면 에러!)
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else { fatalError("Couldn't find \(filename) in main bundle")}
    
    // file = 주소 값 있음
    do {
        data = try Data(contentsOf: file) // 객체 타입으로 변환 즉 객체가 아니면 에러!
        // Data : A byte buffer in memory.
    } catch {
        fatalError("Couldn't \(filename) from main bundle: \n\(error)")
    }
    
    // data: 객체 형태임
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data) // json으로 파싱이 불가능하다면 에러!
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

var landmarks: [Landmark] = load("landmarkData.json")




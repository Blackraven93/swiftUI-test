import UIKit


//struct Track: Codable {
//    let title: String
//    let artistName: String
//    let isStreamable: Bool
//    let releaseDate: Date
//    let arrayTest: [String]
//
//    struct Name: Hashable, Codable {
//        let name:String
//    }
//}
//
//let jsonData = """
//{
//  "artistName" : "Dua Lipa",
//  "isStreamable" : true,
//  "title" : "New Rules",
//  "releaseDate": "2017-06-02T12:00:00Z",
//    "arrayTest":["hello", "bye"]
//}
//""".data(using: .utf8)!
//
//do {
//    let decoder = JSONDecoder()
//    decoder.dateDecodingStrategy = .iso8601
//    let data = try decoder.decode(Track.self, from: jsonData)
//    print(data)
//    print(data.releaseDate)
//
//} catch {
//    print(error)
//}
//

//
//struct EvolutionProposal: Codable {
//    
//    var id: String
//    var title: String
//    var reviewStartDate: Date
//    var reviewEndDate: Date
//    
//    enum CodingKeys: String, CodingKey {
//        case id
//        case title
//        case metadata
//        
//        enum MetadataCodingKeys: String, CodingKey {
//            case reviewStartDate
//            case reviewEndDate
//        }
//    }
//    
//    init(from decoder: Decoder) throws {
//        let rootContainer = try decoder.container(keyedBy: CodingKeys.self)
//        let metadataContainer = try rootContainer.nestedContainer(keyedBy: CodingKeys.MetadataCodingKeys.self, forKey: .metadata)
//        
//        id = try rootContainer.decode(String.self, forKey: .id)
//        title = try rootContainer.decode(String.self, forKey: .title)
//        reviewStartDate = try metadataContainer.decode(Date.self, forKey: .reviewStartDate)
//        reviewEndDate = try metadataContainer.decode(Date.self, forKey: .reviewEndDate)
//    }
//    
//    func encode(to encoder: Encoder) throws {
//        var rootContainer = encoder.container(keyedBy: CodingKeys.self)
//        var metadataContainer = rootContainer.nestedContainer(keyedBy: CodingKeys.MetadataCodingKeys.self, forKey: .metadata)
//        
//        try rootContainer.encode(id, forKey: .id)
//        try rootContainer.encode(title, forKey: .title)
//        try metadataContainer.encode(reviewStartDate, forKey: .reviewStartDate)
//        try metadataContainer.encode(reviewEndDate, forKey: .reviewEndDate)
//    }
//    
//}
//
//let json = """
//{
//    "id": "SE-0274",
//    "title": "Concise magic file names",
//    "metadata": {
//        "review_start_date": "2020-01-08T00:00:00Z",
//        "review_end_date": "2020-01-16T00:00:00Z"
//    }
//}
//"""
//do {
//    let decoder = JSONDecoder()
//    decoder.dateDecodingStrategy = .iso8601
//    decoder.keyDecodingStrategy = .convertFromSnakeCase
//    let answer = try decoder.decode(EvolutionProposal.self, from: Data(json.utf8))
//    print(answer)
//} catch {
//    print(error)
//}
//
//
//
//let sampleJson = """
//{
//    "User":[
//      {
//        "FirstUser":{
//        "name":"John"
//        },
//       "Information":"XY",
//        "SecondUser":{
//        "name":"Tom"
//      }
//     }
//   ]
//}
//""".data(using: .utf8)!
//
//// MARK: - Empty
//struct Root: Codable {
//    let user: [User]
//
//    enum CodingKeys: String, CodingKey {
//        case user = "User"
//    }
//}
//
//// MARK: - User
//struct User: Codable {
//    let firstUser: FirstUserClass
//    let information: String
//    let secondUser: FirstUserClass
//
//    enum CodingKeys: String, CodingKey {
//        case firstUser = "FirstUser"
//        case information = "Information"
//        case secondUser = "SecondUser"
//    }
//}
//
//// MARK: - FirstUserClass
//struct FirstUserClass: Codable {
//    let name: String
//}
//
//do {
//    let res = try JSONDecoder().decode(Root.self, from: sampleJson)
//    print(res)
//} catch {
//    print(error)
//}
//
//
//// MARK: - test!!
//
////
////  Beverage.swift
////  swiftUI-test
////
////  Created by apple developer academy on 2022/05/04.
////
//
//
//// This file was generated from JSON Schema using quicktype, do not modify it directly.
//// To parse the JSON, add this file to your project and do:
//
//
//typealias Beverage = JSONAny
//
//// MARK: - Encode/decode helpers
//
//class JSONNull: Codable, Hashable {
//
//    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
//        return true
//    }
//
//    public var hashValue: Int {
//        return 0
//    }
//
//    public init() {}
//
//    public required init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if !container.decodeNil() {
//            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        var container = encoder.singleValueContainer()
//        try container.encodeNil()
//    }
//}
//
//class JSONCodingKey: CodingKey {
//    let key: String
//
//    required init?(intValue: Int) {
//        return nil
//    }
//
//    required init?(stringValue: String) {
//        key = stringValue
//    }
//
//    var intValue: Int? {
//        return nil
//    }
//
//    var stringValue: String {
//        return key
//    }
//}
//
//class JSONAny: Codable {
//
//    let value: Any
//
//    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
//        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
//        return DecodingError.typeMismatch(JSONAny.self, context)
//    }
//
//    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
//        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
//        return EncodingError.invalidValue(value, context)
//    }
//
//    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
//        if let value = try? container.decode(Bool.self) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self) {
//            return value
//        }
//        if let value = try? container.decode(Double.self) {
//            return value
//        }
//        if let value = try? container.decode(String.self) {
//            return value
//        }
//        if container.decodeNil() {
//            return JSONNull()
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
//        if let value = try? container.decode(Bool.self) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self) {
//            return value
//        }
//        if let value = try? container.decode(Double.self) {
//            return value
//        }
//        if let value = try? container.decode(String.self) {
//            return value
//        }
//        if let value = try? container.decodeNil() {
//            if value {
//                return JSONNull()
//            }
//        }
//        if var container = try? container.nestedUnkeyedContainer() {
//            return try decodeArray(from: &container)
//        }
//        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
//            return try decodeDictionary(from: &container)
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
//        if let value = try? container.decode(Bool.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(Int64.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(Double.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decode(String.self, forKey: key) {
//            return value
//        }
//        if let value = try? container.decodeNil(forKey: key) {
//            if value {
//                return JSONNull()
//            }
//        }
//        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
//            return try decodeArray(from: &container)
//        }
//        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
//            return try decodeDictionary(from: &container)
//        }
//        throw decodingError(forCodingPath: container.codingPath)
//    }
//
//    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
//        var arr: [Any] = []
//        while !container.isAtEnd {
//            let value = try decode(from: &container)
//            arr.append(value)
//        }
//        return arr
//    }
//
//    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
//        var dict = [String: Any]()
//        for key in container.allKeys {
//            let value = try decode(from: &container, forKey: key)
//            dict[key.stringValue] = value
//        }
//        return dict
//    }
//
//    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
//        for value in array {
//            if let value = value as? Bool {
//                try container.encode(value)
//            } else if let value = value as? Int64 {
//                try container.encode(value)
//            } else if let value = value as? Double {
//                try container.encode(value)
//            } else if let value = value as? String {
//                try container.encode(value)
//            } else if value is JSONNull {
//                try container.encodeNil()
//            } else if let value = value as? [Any] {
//                var container = container.nestedUnkeyedContainer()
//                try encode(to: &container, array: value)
//            } else if let value = value as? [String: Any] {
//                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
//                try encode(to: &container, dictionary: value)
//            } else {
//                throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//        }
//    }
//
//    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
//        for (key, value) in dictionary {
//            let key = JSONCodingKey(stringValue: key)!
//            if let value = value as? Bool {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? Int64 {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? Double {
//                try container.encode(value, forKey: key)
//            } else if let value = value as? String {
//                try container.encode(value, forKey: key)
//            } else if value is JSONNull {
//                try container.encodeNil(forKey: key)
//            } else if let value = value as? [Any] {
//                var container = container.nestedUnkeyedContainer(forKey: key)
//                try encode(to: &container, array: value)
//            } else if let value = value as? [String: Any] {
//                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
//                try encode(to: &container, dictionary: value)
//            } else {
//                throw encodingError(forValue: value, codingPath: container.codingPath)
//            }
//        }
//    }
//
//    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
//        if let value = value as? Bool {
//            try container.encode(value)
//        } else if let value = value as? Int64 {
//            try container.encode(value)
//        } else if let value = value as? Double {
//            try container.encode(value)
//        } else if let value = value as? String {
//            try container.encode(value)
//        } else if value is JSONNull {
//            try container.encodeNil()
//        } else {
//            throw encodingError(forValue: value, codingPath: container.codingPath)
//        }
//    }
//
//    public required init(from decoder: Decoder) throws {
//        if var arrayContainer = try? decoder.unkeyedContainer() {
//            self.value = try JSONAny.decodeArray(from: &arrayContainer)
//        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
//            self.value = try JSONAny.decodeDictionary(from: &container)
//        } else {
//            let container = try decoder.singleValueContainer()
//            self.value = try JSONAny.decode(from: container)
//        }
//    }
//
//    public func encode(to encoder: Encoder) throws {
//        if let arr = self.value as? [Any] {
//            var container = encoder.unkeyedContainer()
//            try JSONAny.encode(to: &container, array: arr)
//        } else if let dict = self.value as? [String: Any] {
//            var container = encoder.container(keyedBy: JSONCodingKey.self)
//            try JSONAny.encode(to: &container, dictionary: dict)
//        } else {
//            var container = encoder.singleValueContainer()
//            try JSONAny.encode(to: &container, value: self.value)
//        }
//    }
//}
//
//
//let jsonData = """
//    {
//        "createdAt": "2022-05-04T16:00:00Z",
//        "map" : {
//            "address": "경북 포항시 탐구 지곡동 166-3",
//            "longtitude": 129.3256411,
//            "latitude": 36.0144317
//        },
//        "name": "코카콜라 제로",
//        "manufacturer": "코카콜라 컴퍼니",
//        
//        "volume": {
//            "unit": "ml",
//            "value": 250
//        },
//
//        "price": {
//            "unit": "won",
//            "value": 790
//        },
//        
//        "category": "탄산음료",
//        
//        "flavor": [
//            {"type":"Citrus", "name":"orange"},
//            {"type":"Citrus", "name":"lime"},
//            {"type":"Citrus", "name":"lemon"},
//            {"type":"BrownSpice", "name":"cinnamon"},
//            {"type":"Sweet", "name":"vanilla"},
//            {"type":"Sour", "name":"Acetic acid"}
//        ],
//        
//        "taste": {
//            "sweet": 3.7,
//            "sour": 2.1,
//            "bitter": 1.1,
//            "salty": 2.4,
//            "savory": 1.5
//        },
//        
//        "imageName": "cokeZeroSugar"
//    }
//""".data(using: .utf8)!
//
//
//let beverage = try? JSONDecoder().decode(Beverage.self, from: jsonData)
//print(beverage!)
//
//

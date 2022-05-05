import UIKit

let data = "hello".data(using: .utf8)!
print(data)

// Date: Type

let dateStr = "2020-08-13 16:30" // Date 형태의 String
let nowDate = Date() // 현재의 Date (ex: 2020-08-13 09:14:48 +0000)

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm" // 2020-08-13 16:30
        
let convertDate = dateFormatter.date(from: dateStr) // Date 타입으로 변환
        
let myDateFormatter = DateFormatter()
myDateFormatter.dateFormat = "yyyy.MM.dd a hh시 mm분" // 2020.08.13 오후 04시 30분
myDateFormatter.locale = Locale(identifier:"ko_KR") // PM, AM을 언어에 맞게 setting (ex: PM -> 오후)
let convertStr = myDateFormatter.string(from: convertDate!)
let convertNowStr = myDateFormatter.string(from: nowDate) // 현재 시간의 Date를 format에 맞춰 string으로 반환



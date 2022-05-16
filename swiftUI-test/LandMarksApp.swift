//
//  LandMarksApp.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/05/02.
// 핵심이 되는 앱

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

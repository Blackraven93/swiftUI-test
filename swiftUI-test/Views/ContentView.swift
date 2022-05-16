//
//  ContentView.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/05/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // 최종적으로 전달
        ContentView()
            .environmentObject(ModelData())
    }
}

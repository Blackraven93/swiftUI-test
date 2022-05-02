//
//  ContentView.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello world")
                .font(.title)
                .foregroundColor(.green)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

//
//  ContentView.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello! indigo pigeon")
                .font(.title)
                .foregroundColor(.indigo)
            HStack {
                Text("my first swiftUI content")
                    .font(.subheadline)
                Spacer()
                Text("Korea")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

//
//  ContentView.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height:300)
            // 위치값을 이런식으로 조정하는구나..
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
            Text("Hello! indigo pigeon")
                .font(.title)
                .foregroundColor(.indigo)
                
                HStack {
                    Text("my first swiftUI content")
                        
                    Spacer()
                    Text("Korea")
                
                }
                // 전체 지정할 때는 이렇게 지정하는구나
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("뭔지 모르겠지만 신기함..")
                    .font(.title2)
                Text("이렇게 하는게 맞나?")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

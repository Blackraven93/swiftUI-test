//
//  SwiftUIView.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/04/05.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

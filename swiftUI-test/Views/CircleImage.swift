//
//  CircleImage.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/05/03.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("rainbowlake")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 2)
            }
            .shadow(radius: 20)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

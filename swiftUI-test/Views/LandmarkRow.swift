//
//  LandmarkRow.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/04/05.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack{
            // 뭐지..?
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
                .padding()
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}

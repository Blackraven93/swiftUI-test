//
//  LandmarkRow.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/05/05.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50, alignment: .leading)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            ForEach(0..<landmarks.count) {
                num in LandmarkRow(landmark: landmarks[num])
            }
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}





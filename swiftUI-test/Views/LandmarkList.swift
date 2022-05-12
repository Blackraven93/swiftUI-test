//
//  landmarkList.swift
//  swiftUI-test
//
//  Created by apple developer academy on 2022/05/06.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // Listview를 통해 각각 Row값을 한 줄 씩 전달
        NavigationView {
            List(landmarks, id: \.id) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                }label:{
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks") // 내부 컨텐츠에 걸어야하는구나
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                    LandmarkList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                        .previewDisplayName(deviceName)
                }
    }
}

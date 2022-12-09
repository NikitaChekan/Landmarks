//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Nikita Chekan on 08.12.2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmarks in
                NavigationLink {
                    LandmarkDetail(landmark: landmarks)
                } label: {
                    LandmarkRow(landmark: landmarks)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}

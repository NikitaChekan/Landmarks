//
//  LandmarkList.swift
//  Landmarks
//
//  Created by NikitaChekan on 08.12.2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmarks in
            LandmarkRow(landmark: landmarks)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}

//
//  GeometryView.swift
//  GeometryReader
//
//  Created by Анастасия Конончук on 13.04.2024.
//

import SwiftUI

struct GeometryView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    GeometryTreeView(width: 200, height: 200)
                    CurveCloudView(width: 200, height: 200)
                }
            }
            .navigationBarTitle("Geometry Image")
        }
    }
}

#Preview {
    GeometryView()
}

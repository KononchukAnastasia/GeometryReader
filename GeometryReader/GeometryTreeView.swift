//
//  ChristmasTreeView.swift
//  GeometryReader
//
//  Created by Анастасия Конончук on 13.04.2024.
//

import SwiftUI

struct GeometryTreeView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearline = size * 0.1
            let thirdline = size * 0.3
            let minLine = nearline / 2
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearline / 2))
                path.addLine(to: CGPoint(x: middle + nearline, y: nearline * 2))
                path.addLine(to: CGPoint(x: middle + minLine, y: nearline * 2))
                path.addLine(to: CGPoint(x: middle + nearline + minLine, y: thirdline))
                path.addLine(to: CGPoint(x: middle + minLine, y: thirdline))
                path.addLine(to: CGPoint(x: middle + nearline * 2, y: middle - minLine))
                path.addLine(to: CGPoint(x: middle + nearline, y: middle - minLine))
                path.addLine(to: CGPoint(x: middle + middle / 2, y: middle + nearline))
                path.addLine(to: CGPoint(x: middle / 2, y: middle + nearline))
                path.addLine(to: CGPoint(x: middle - nearline, y: middle - minLine))
                path.addLine(to: CGPoint(x: thirdline, y: middle - minLine))
                path.addLine(to: CGPoint(x: middle - minLine, y: thirdline))
                path.addLine(to: CGPoint(x: thirdline + minLine, y: thirdline))
                path.addLine(to: CGPoint(x: middle - minLine, y: nearline * 2))
                path.addLine(to: CGPoint(x: middle - nearline, y: nearline * 2))
            }
            .fill(Color(red: 0.2, green: 0.55, blue: 0.3))
            
            Path { path in
                path.move(to: CGPoint(x: middle + minLine, y: middle + nearline))
                path.addLine(to: CGPoint(x: middle + minLine, y: middle + nearline + minLine))
                path.addLine(to: CGPoint(x: middle - minLine, y: middle + nearline + minLine))
                path.addLine(to: CGPoint(x: middle - minLine, y: middle + nearline))
            }
            .fill(Color(red: 0.55, green: 0.21, blue: 0.1))
        }
        .frame(width: width, height: height)
    }
}

#Preview {
    GeometryTreeView(width: 400, height: 400)
}

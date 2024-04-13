//
//  CurveCloudView.swift
//  GeometryReader
//
//  Created by Анастасия Конончук on 13.04.2024.
//

import SwiftUI

struct CurveCloudView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)
            let middle = size / 2
            let nearline = size * 0.1
            let minLine = nearline / 2
            
            Path { path in
                path.move(to: CGPoint(x: middle - nearline - minLine, y: nearline * 2))
                path.addQuadCurve(
                    to: CGPoint(x: middle + nearline + minLine, y: nearline * 2),
                    control: CGPoint(x: middle, y: minLine)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle + nearline * 2, y: middle - nearline),
                    control: CGPoint(x: middle + nearline * 3, y: nearline * 3)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle, y: middle),
                    control: CGPoint(x: middle + nearline, y: middle + nearline)
                )
                path.addQuadCurve(
                    to: CGPoint(x: nearline * 3, y: middle - nearline),
                    control: CGPoint(x: middle - nearline, y: middle + nearline)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middle - nearline - minLine, y: nearline * 2),
                    control: CGPoint(x: middle - nearline * 3, y: nearline * 3)
                )
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.white, .blue]),
                    center: .top,
                    startRadius: geometry.size.width * 0.04,
                    endRadius: geometry.size.width * 0.5
                )
            )
        }
        .frame(width: width, height: height)
    }
}

#Preview {
    CurveCloudView(width: 300, height: 300)
}

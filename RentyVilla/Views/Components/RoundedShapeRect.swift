//
//  RoundedShapeRect.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 11/10/23.
//

import Foundation
import SwiftUI

struct RoundedShapeRect: Shape {
    var cornerRadius: CGFloat

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let width = rect.size.width
        let height = rect.size.height

        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: width - cornerRadius, y: 0))
        path.addArc(center: CGPoint(x: width - cornerRadius, y: cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
        path.addLine(to: CGPoint(x: width, y: height - cornerRadius))
        path.addArc(center: CGPoint(x: width - cornerRadius, y: height - cornerRadius), radius: cornerRadius, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
        path.addLine(to: CGPoint(x: 0, y: height))
        path.closeSubpath()

        return path
    }
}

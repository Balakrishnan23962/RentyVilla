//
//  CustomFont.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import Foundation
import SwiftUI

extension Font {
    static func ralewayMedium(size: CGFloat) -> Font {
        return Font.custom("Raleway-Medium", size: size)
    }
    static func ralewayRegular(size: CGFloat) -> Font {
        return Font.custom("Raleway-Regular", size: size)
    }
    static func ralewaySemibold(size: CGFloat) -> Font {
        return Font.custom("Raleway-SemiBold", size: size)
    }
    static func ralewayBold(size: CGFloat) -> Font {
        return Font.custom("Raleway-Bold", size: size)
    }
}

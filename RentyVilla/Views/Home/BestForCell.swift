//
//  BestForCell.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import SwiftUI

struct BestForCell: View {
    var category: BestCategoryModel?
    var body: some View {
        HStack(alignment: .top, spacing: 25) {
            Image(category?.image ?? "house1")
                .resizable()
                .frame(width: 120, height: 110)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack(alignment: .leading, spacing: 15) {
                Text(category?.name ?? "Orchard House")
                    .font(.ralewayMedium(size: 20))
                    .fontWeight(.semibold)
                Text(category?.rent ?? "Rp.25000000 / Year")
                    .font(.ralewayRegular(size: 16))
                    .foregroundStyle(.blue)
                HStack(spacing: 20) {
                    HStack(spacing: 10) {
                        Image(systemName: "bed.double")
                        Text((category?.bedRooms ?? "4 ")+"Bedroom" )
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "toilet")
                        Text((category?.bathRooms ?? "4 ")+"Bathroom" )
                    }
                }
                .font(.ralewayRegular(size: 14))
                .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    BestForCell()
}

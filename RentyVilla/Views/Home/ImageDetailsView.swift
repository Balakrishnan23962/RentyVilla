//
//  ImageDetailsView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import SwiftUI

struct ImageDetailsView: View {
    var imageDetails: ImageDetailsModel?
    var body: some View {
        ZStack(alignment: .topTrailing, content: {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
                Image(imageDetails?.image ?? "house1")
                    .resizable()
                    .frame(width: 220, height: 290)
                    .clipShape(RoundedRectangle(cornerRadius: 23))
                VStack(alignment: .leading) {
                    Text(imageDetails?.houseName ?? "House1")
                        .foregroundStyle(.white)
                        .font(.ralewayMedium(size: 16))
                    Text(imageDetails?.streetName ?? "2/29, street")
                        .foregroundStyle(.white)
                        .font(.ralewayRegular(size: 14))
                }
                .padding()
            }
            HStack(alignment: .center, spacing: 10, content: {
                Image(systemName: "location")
                    .resizable()
                    .frame(width: 14, height: 14)
                    .foregroundStyle(.white)
                Text(imageDetails?.distance ?? "1.8 km")
                    .foregroundStyle(.white)
                    .font(.ralewayRegular(size: 15))
            })
            .padding([.all], 7)
            .background {
                Color.black
                    .opacity(0.34)
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding()
        })
    }
}

#Preview {
    ImageDetailsView()
}

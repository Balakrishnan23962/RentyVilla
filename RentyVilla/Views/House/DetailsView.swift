//
//  DetailsView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 17/10/23.
//

import Foundation
import SwiftUI

struct DetailsView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                ZStack(alignment: .topTrailing) {
                    ZStack(alignment: .topLeading) {
                        Image(.house2)
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width - 32, height: (UIScreen.main.bounds.height / 2.5))
                            .clipShape(RoundedRectangle(cornerRadius: 27))
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "chevron.left")
                                .resizable()
                                .foregroundStyle(.white)
                                .frame(width: 10, height: 15)
                                .padding()
                                .background {
                                    Circle()
                                        .foregroundStyle(.black).opacity(0.2)
                                }
                                .padding()
                        })
                    }
                    Image(systemName: "bookmark")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 10, height: 15)
                        .padding()
                        .background {
                            Circle()
                                .foregroundStyle(.black).opacity(0.2)
                        }
                        .padding()
                }
                VStack(alignment: .leading, spacing: 15) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("DreamsVille House")
                            .font(.ralewaySemibold(size: 20))
                            .foregroundStyle(.white)
                        Text("2/29, Kunnathur - 638103")
                            .foregroundStyle(Color(.white))
                            .font(.ralewayRegular(size: 16))
                    }
                    HStack(spacing: 20) {
                        HStack(spacing: 10) {
                            Image(systemName: "bed.double")
                            Text("4 Bedroom" )
                                .font(.ralewayRegular(size: 16))
                        }
                        HStack(spacing: 10) {
                            Image(systemName: "toilet")
                            Text("4 Bathroom" )
                                .font(.ralewayRegular(size: 16))
                        }
                    }
                    .foregroundStyle(.white)
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden()
        Spacer()
    }
}

#Preview {
    DetailsView()
}

//
//  NearView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import SwiftUI
struct ToggleStates {
    var oneIsOn: Bool = false
    var twoIsOn: Bool = true
}
struct NearView: View {
    @StateObject var viewModel = ImageDetailsViewModel()
    @State private var toggleStates = ToggleStates()
    @State private var topExpanded: Bool = true
    var body: some View {
        VStack {
            HStack {
                Text("Near from you")
                    .font(.ralewayMedium(size: 16))
                Spacer()
                Text("See more")
                    .font(.ralewayRegular(size: 12))
                    .foregroundStyle(.gray)
            }
            .padding()
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(viewModel.imageDetails, id: \.id) { image in
                        ImageDetailsView(imageDetails: image)
                    }
                }
                .scrollTargetLayout()
                .padding()
            }
            .scrollIndicators(.hidden)
            .scrollTargetBehavior(.viewAligned)
        }
        .onAppear {
            viewModel.getImage()
        }
    }
}

#Preview {
    NearView()
}

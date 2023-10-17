//
//  NearView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import SwiftUI
struct NearView: View {
    @StateObject var viewModel = ImageDetailsViewModel()
    @State var isTrue = false
    var body: some View {
        NavigationStack {
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
                    LazyHStack(spacing: 20) {
                        ForEach(viewModel.imageDetails) { image in
                            NavigationLink {
                                DetailsView()
                            } label: {
                                ImageDetailsView(imageDetails: image)
                            }

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
}

#Preview {
    NearView()
}

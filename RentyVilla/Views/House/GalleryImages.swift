//
//  GalleryImages.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 19/10/23.
//

import SwiftUI

struct GalleryImages: View {
    @State private var imagesAll: [String] = ["house1", "house2", "house1", "house1", "house2", "house1"]
    @State var isTapped = false
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Gallery")
                .font(.ralewayMedium(size: 18))
                .fontWeight(.semibold)
            ScrollView(.horizontal) {
                HStack(alignment: .center, spacing: 20, content: {
                    ForEach(0..<3, id: \.self) { index in
                        if index == 2 {
                            Image(imagesAll[index])
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay(
                                    Text("+\(imagesAll.count - 3)")
                                        .foregroundStyle(.white)
                                        .font(.ralewayMedium(size: 40))
                                    )
                                .onTapGesture {
                                   isTapped = true
                                }
                        } else {
                            Image(imagesAll[index])
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                    .scrollTargetLayout()
                })
            }
            .scrollIndicators(.hidden)
            .scrollTargetBehavior(.viewAligned)
        }
        .padding()
        .sheet(isPresented: $isTapped, content: {
            AdditionalImages(allImages: imagesAll)
                .presentationDetents([.fraction(0.2)])
        })
    }
}

#Preview {
    GalleryImages()
}

struct AdditionalImages: View {
    let allImages: [String]?
    var body: some View {
        ZStack {
            Color.gray.opacity(0.2)
                .ignoresSafeArea(edges: .all)
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(allImages ?? ["house1"], id: \.self) { image in
                        Image(image)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .scrollTargetLayout()
                }
                .padding()
            }
            .scrollIndicators(.hidden)
        .scrollTargetBehavior(.viewAligned)
        }
    }
}

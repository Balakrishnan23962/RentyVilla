//
//  DetailsView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 17/10/23.
//

import Foundation
import SwiftUI

struct DetailsView: View {
    @State private var expanded: Bool = false
    @State private var showViewButton: Bool = false
    @State var isSelected = false
    let text = """
        The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars. This modern house is perfect for a growing family. The modern design features state-of-the-art architecture and contemporary elements. The large pool is ideal for hot summer days, and the spacious four-car garage provides ample space for all your vehicles.
        """
    var body: some View {
        ScrollView {
            VStack {
                OwnerDetails(isSelected: $expanded)
                VStack(alignment: .leading, spacing: 20, content: {
                    Text("Description")
                        .font(.ralewayMedium(size: 16))
                        .fontWeight(.semibold)
                    Text(expanded ? text : text.prefix(100)+"...")
                       
                        .font(.ralewayRegular(size: 14))
                        .foregroundStyle(.gray)
                        .overlay {
                            GeometryReader(content: { proxy in
                                Color.clear.onAppear {
                                    let width = proxy.size.width
                                    print("Text width: \(width)")
                                }
                                Button(action: {
                                    withAnimation(.bouncy) {
                                        expanded.toggle()
                                    }
                                }, label: {
                                    Text(expanded ? "Show Less" : "Show More")
                                        .font(.ralewayRegular(size: 14))
                                })
                                .frame(width: proxy.size.width, height: proxy.size.height, alignment: .bottomTrailing)
                            })
                        }
                })
                .padding()
                PersonDetails()
                GalleryImages()
                ZStack(alignment: .bottom, content: {
                    LocationOfHouse()
                        .frame(height: 150)
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding()
                    HStack {
                        VStack(alignment: .leading, spacing: 10, content: {
                            Text("Price")
                            Text("2.50000000 / Year")
                        })
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Text("Rent Now")
                        })
                    }
                    .padding()
                    .background {
                        Color.white
                            .frame(maxWidth: .infinity)
                    }
                })
            }
            .navigationBarBackButtonHidden()
        }
        Spacer()
    }

}

#Preview {
   DetailsView()
}


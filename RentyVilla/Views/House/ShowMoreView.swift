//
//  ShowMoreView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 19/10/23.
//

import SwiftUI

struct ShowMoreView: View {
    
    @State private var expanded: Bool = false
    @State private var showViewButton: Bool = false
    let text = """
        The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars. This modern house is perfect for a growing family. The modern design features state-of-the-art architecture and contemporary elements. The large pool is ideal for hot summer days, and the spacious four-car garage provides ample space for all your vehicles.
        """
    private var moreLessText: String {
        if showViewButton {
            return expanded ? "View Less" : "View More"
            
        } else {
            return ""
            
        }
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            Text("Description")
                .font(.ralewayMedium(size: 16))
                .fontWeight(.semibold)
            VStack(alignment: .leading) {
                ZStack {
                    Text(text)
                        .font(.body)
                        .lineLimit(expanded ? nil : 1)
                    
                    ScrollView(.vertical) {
                        Text(text)
                            .font(.body)
                            .background(
                                GeometryReader { proxy in
                                    Color.clear
                                        .onAppear {
                                            showViewButton = proxy.size.height > CGFloat(22 * lineLimit)
                                        }
                                        .onChange(of: text) { _ in
                                            showViewButton = proxy.size.height > CGFloat(22 * lineLimit)
                                        }
                                }
                            )
                    }
                    .opacity(0.0)
                    .disabled(true)
                    .frame(height: 0.0)
                }
                
                Button(action: {
                    withAnimation {
                        expanded.toggle()
                    }
                }, label: {
                    Text(moreLessText)
                        .font(.body)
                        .foregroundColor(.orange)
                })
                .opacity(showViewButton ? 1.0 : 0.0)
                .disabled(!showViewButton)
                .frame(height: showViewButton ? nil : 0.0)
                
            }
        })
        .padding()
    }
}

#Preview {
    ShowMoreView()
}

//
//  CategoryView.swift
//  RentyVilla
//
//  Created by Logicfocus Techonology Solution on 13/10/23.
//

import SwiftUI

struct CategoryView: View {
    var category: CategoryModel = .house
    @State var search = ""
    @State var isSelectedCategory: CategoryModel = .house
    @State var isTouch: Bool = true
    var body: some View {
        VStack {
            HStack {
                if isTouch {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 22, height: 22)
                            .foregroundStyle(.gray)
                        TextField(text: $search) {
                            Text("Search address, or near you")
                                .font(.custom("Raleway-Regular", size: 15))
                        }
                        .autocorrectionDisabled()
                    }
                    .padding()
                    .background(Color(.systemGray6).opacity(0.4))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.leading)
                } else {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 22, height: 22)
                            .foregroundStyle(.gray)
                        Text("Search")
                            .font(.custom("Raleway-Regular", size: 15))
                    }
                    .padding()
                    .background {
                        Color(.systemGray6).opacity(0.4)
                            .frame(maxWidth: .infinity)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.leading)
                    .onTapGesture {
                        
                    }
                }
                if !search.isEmpty {
                    Button {
                        search = ""
                        hideKeyboard()
                    } label: {
                        Text("Cancel")
                            .padding(.trailing)
                            .foregroundStyle(.gray)
                    }
                } else {
                    Button {
                        
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundStyle(.white)
                            .padding()
                            .background {
                                Color(.backgroundButton)
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding(.trailing)
                    }
                }
            }
            ScrollView(.horizontal) {
                HStack {
                    ForEach(CategoryModel.allCases, id: \.self) { category in
                        Text(category.title)
                            .padding()
                            .padding([.leading, .trailing], 8)
                            .font(.custom("Raleway-Medium", size: 14))
                            .background {
                                Color(isSelectedCategory == category ? .backgroundButton : .lightGray)
                                    .opacity(isSelectedCategory != category ? 0.07 : 0.7)
                            }
                            .foregroundStyle(isSelectedCategory == category ? .white : .gray)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .onTapGesture {
                                isSelectedCategory = category
                            }
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

#Preview {
    CategoryView()
}

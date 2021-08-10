//
//  AfricaContentView.swift
//  AfricaContentView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AfricaContentView: View {
    
    //MARK:- Properties
    
    @State private var isGridViewActive:Bool = false
    @State private var gridLayout:[GridItem] = [GridItem(.flexible())]
    @State private var gridColumn:Int = 1
    @State private var toolbarIcon:String = "square.grid.2x2"
    
    let animals:[Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator()
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count%3 + 1)
        gridColumn = gridLayout.count
        
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    
    var body: some View {
        
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        AfricaCoverImageView()
                            .frame(height:300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals) { animal in
                            //테이블뷰 아이템 디드 셀렉트랑 비슷
                            NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                AnimalListItemView(animal: animal)
                            }//NavigationLink
                        }//ForEach
                    }
                }else {
                    ScrollView(.vertical,showsIndicators: false) {
                        LazyVGrid(columns:gridLayout,alignment:.center,spacing:10) {
                            ForEach(animals) { animal in
                                NavigationLink(destination: AnimalDetailView(animal: animal)) {
                                    AnimalGridItemView(animal: animal)
                                }//NavigationLink
                                .padding(10)
                                .animation(.easeIn)
                            }
                        }
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Africa",displayMode: .large)
            .toolbar {
                ToolbarItem(placement:.navigationBarTrailing) {
                    HStack(spacing:16) {
                        Button(action: {
                            isGridViewActive = false
                            haptics.impactOccurred()
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary:.accentColor)
                        }
                        
                        Button(action: {
                            isGridViewActive = true
                            haptics.impactOccurred()
                            gridSwitch()
                        }) {
                            Image(systemName:toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor:.primary)
                        }
                    }
                }
            }
            
        }//NavigationView
    }
}

struct AfricaContentView_Previews: PreviewProvider {
    static var previews: some View {
        AfricaContentView()
            .preferredColorScheme(.dark)
    }
}

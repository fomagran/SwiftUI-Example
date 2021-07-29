//
//  AfricaContentView.swift
//  AfricaContentView
//
//  Created by Fomagran on 2021/07/29.
//

import SwiftUI

struct AfricaContentView: View {
    
    //MARK:- Properties
    
    let animals:[Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        
        
        NavigationView {
            List {
            AfricaCoverImageView()
                    .frame(height:300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    //테이블뷰 아이템 디드 셀렉트랑 비슷
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }//NavigationLink

                }
            }//List
            .listStyle(PlainListStyle())
            .navigationBarTitle("Africa",displayMode: .large)
        }//NavigationView
    }
}

struct AfricaContentView_Previews: PreviewProvider {
    static var previews: some View {
        AfricaContentView()
            .preferredColorScheme(.dark)
    }
}

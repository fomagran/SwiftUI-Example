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
                    AnimalListItemView(animal: animal)
                }
            }//List
            .listStyle(PlainListStyle())
            .navigationBarTitle("Africal",displayMode: .large)
        }//NavigationView
    }
}

struct AfricaContentView_Previews: PreviewProvider {
    static var previews: some View {
        AfricaContentView()
            .preferredColorScheme(.dark)
    }
}

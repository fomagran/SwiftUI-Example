//
//  ContentView.swift
//  Notes WatchKit Extension
//
//  Created by Fomagran on 2021/08/30.
//

import SwiftUI


struct ContentView: View {
    
    
    //MARK:- Properties
    
    @State private var notes:[Note] = [Note]()
    @State private var text:String = ""
    
    //MARK:- Functions
    func save() {
        //TODO:dump가 뭐지?
        dump(notes)
    }


    //MARK:- Body
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 6) {
                TextField("Add New Note",text: $text)
                
                Button {
                    guard text.isEmpty == false else { return }
                    let note = Note(id: UUID(), text: text)
                    notes.append(note)
                    text = ""
                    save()
                    
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size:42,weight: .semibold))
                }
                .fixedSize()
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)
            }
            Spacer()
            
            Text("\(notes.count)")
        }
        .navigationTitle("Notes")
    }
}

//MARK:- Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

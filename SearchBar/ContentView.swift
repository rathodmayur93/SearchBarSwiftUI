//
//  ContentView.swift
//  SearchBar
//
//  Created by ds-mayur on 10/5/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let names = ["Raju", "Ghanshyam", "Baburao Ganpatrao Apte", "Anuradha", "Kabira", "Chaman Jhinga", "Devi Prasad", "Khadak Singh"]
    
    @State private var searchTerm : String = ""
    
    var body: some View {
        NavigationView{
            List {
                SearchBar(text: $searchTerm)
                
                ForEach(self.names.filter{
                    self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                }, id: \.self) { name in
                    Text(name)
                }
            }
            
            .navigationBarTitle(Text("Search Bar"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Home.swift
//  PagerTabs
//
//  Created by Ayhan on 15.05.2022.
//

import SwiftUI

struct Home: View {
    @State var currentSelection: Int = 0
    var body: some View {
        
        PagerTabView(tint: .gray, selection: $currentSelection){
            
            Text("Sabah")
                .font(.headline)
                .foregroundColor(.white)
                .pageLabel()
            Text("Akşam")
                .foregroundColor(.white)
                .font(.headline)
                .pageLabel()
           Text("Uyku")
                .foregroundColor(.white)
                .font(.headline)
                .pageLabel()
            
            
        }content: {
            
            Sabah()
                .padding(.top)
                .pageView(ignoreSafeArea: true, edges: .bottom)
            Aksam()
                .pageView(ignoreSafeArea: true, edges: .bottom)
            Gece()
                .pageView(ignoreSafeArea: true, edges: .bottom)
        
            
        }
        .padding(.top)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView ()
            .preferredColorScheme(.dark)
    }
}

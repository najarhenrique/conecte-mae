//
//  SwiftUIView.swift
//  CM
//
//  Created by Student21 on 27/04/23.
//

import SwiftUI

struct TabViewView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("tabBarColor"))
        }
    var body: some View {
        NavigationStack{
            TabView{
                TelaHome()
                    .tabItem {
                        Label("Home", systemImage: "house.circle.fill")
                    }
                
                FichaView()
                    .tabItem {
                        Label("Ficha", systemImage: "person.2.fill")
                    }
                
                AtendimentosView()
                    .tabItem {
                        Label("Atendimento", systemImage: "list.clipboard.fill")
                    }
                
                OpcoesView()
                    .tabItem {
                        Label("Opcoes", systemImage: "gearshape.circle.fill")
                    }
            }.accentColor(Color("rosinha"))
        }
        
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
    }
}

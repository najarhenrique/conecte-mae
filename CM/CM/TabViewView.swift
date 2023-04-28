//
//  SwiftUIView.swift
//  CM
//
//  Created by Student21 on 27/04/23.
//

import SwiftUI

struct TabViewView: View {
    var body: some View {
        NavigationStack{
            TabView{
                TelaHome()
                    .tabItem {
                        Label("Home", systemImage: "house.circle.fill")
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

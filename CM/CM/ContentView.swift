//
//  ContentView.swift
//  CM
//
//  Created by Lucas on 25/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var usuario: String = ""
    @State var senha: String = ""

    var body: some View {
        NavigationStack{
            VStack {
                Rectangle()
                    .fill(Color("rosinha"))
                    .frame(width: 400, height: 200)
                    .ignoresSafeArea()
                Spacer()
                TextField("Usuario...", text: $usuario)
                    .background(.white)
                    .cornerRadius(5)
                    .padding()
                    .multilineTextAlignment(.center)
                    .shadow(radius: 10)

                TextField("Senha...", text: $senha)
                    .background(.white)
                    .cornerRadius(5)
                    .padding()
                    .multilineTextAlignment(.center)
                    .shadow(radius: 10)

                Spacer()
                NavigationLink(destination: TabViewView()){
                    ZStack{
                        RoundedRectangle(cornerRadius:20)
                            .fill(Color("rosaClaro"))
                            .frame(width:300, height: 70)
                            .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.black, lineWidth: 2)
                                        )
                            
                        Text("Login")
                            .font(.title)
                            .foregroundColor(.pink)
                        
                    }
                }
                Spacer()
                VStack{
                    Text("Cadastre-se")
                    Text("Esqueceu a senha?")
                    Text("Termos e privacidade")
                }.foregroundColor(.blue)
                    .underline()
                    .padding(9)
                    .border(.gray)

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

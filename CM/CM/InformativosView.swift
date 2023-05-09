//
//  InformativosView.swift
//  CM
//
//  Created by Student03 on 28/04/23.
//

import SwiftUI

struct TestesNoticias: Identifiable {
    let id = UUID()
    let name: String
    let categoria: String
    let desc: String
    let imagem: String
}

struct NoticiasMockadas {
    static var noticias = [
        TestesNoticias(name: "Nome muito grandao pra um grande gigantesco nome",
                       categoria: "Um teste de categoria maior",
                       desc: "Teste de uma descricao muito gigantesca, da pra eu começar a botar um tanto de lorota aqui igual qualquer outra noticia hoje em dia, so fica falando um tanto de baboseira sem verificar nenhum tipo de informaçao verificada",
                      imagem: "https://picsum.photos/200"),
        TestesNoticias(name: "Teste de nome 1",
                       categoria: "Categoria 1",
                       desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                       imagem: "https://picsum.photos/200"),
        TestesNoticias(name: "Teste de nome 2",
                       categoria: "Categoria 2",
                       desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                       imagem: "https://picsum.photos/200"),
        TestesNoticias(name: "Teste de nome 3",
                       categoria: "Categoria 3",
                       desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                       imagem: "https://picsum.photos/200"),
        TestesNoticias(name: "Teste de nome 4",
                       categoria: "Categoria 4",
                       desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                       imagem: "https://picsum.photos/200"),
        TestesNoticias(name: "Teste de nome 5",
                       categoria: "Categoria 5",
                       desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                       imagem: "https://picsum.photos/200"),
    ]
}

struct InformativosView: View {
    
    let noticias: [TestesNoticias] = NoticiasMockadas.noticias
    
    @State var isSheetShowing = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Spacer(minLength: 100)
                    ForEach(noticias) { noticia in
                        VStack {
                            Text("\(noticia.name)")
                                .font(.title2)
                                .padding([.leading, .trailing, .top])
                                .bold()
                            AsyncImage(url: URL(string: noticia.imagem)) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 200,
                                   height: 200,
                                   alignment: .center)
                            
                            Text("\(noticia.desc)")
                                .padding()

                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(.black, lineWidth: 1)
                        )
                        .onTapGesture {
                            isSheetShowing.toggle()
                        }
                        .padding([.leading, .trailing], 15)
                        .sheet(isPresented: $isSheetShowing) {
                            ScrollView {
                                VStack {
                                    Text("\(noticia.name)")
                                        .font(.title2)
                                        .padding([.leading, .trailing, .top])
                                        .bold()
                                    AsyncImage(url: URL(string: noticia.imagem)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 200,
                                           height: 200,
                                           alignment: .center)
                                    
                                    Text("\(noticia.desc)")
                                        .padding()
                                }
                            }
                            .background(Color("rosaClaro"))
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("rosaClaro"))
            .ignoresSafeArea()
        }
        .navigationTitle("Notícias")
    }
}

struct InformativosView_Previews: PreviewProvider {
    static var previews: some View {
        InformativosView()
    }
}

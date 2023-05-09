//
//  ListaVacinasView.swift
//  CM
//
//  Created by Student03 on 08/05/23.
//

import SwiftUI

struct TesteVacinas: Identifiable {
    let id = UUID()
    let nomeDaVacina: String
    let fabricanteDaVacina: String
    let dataDaVacinacao: String
    let doseDaVacina: String
}

struct VacinasMockadas {
    static var vacinas = [
        TesteVacinas(nomeDaVacina: "Covid-19 Pfizer - ComirNaty",
                     fabricanteDaVacina: "Pfizer",
                     dataDaVacinacao: "99/99/9999",
                     doseDaVacina: "1 Dose"),
        TesteVacinas(nomeDaVacina: "Teste de nome 1",
                     fabricanteDaVacina: "Teste de fabricante 1",
                     dataDaVacinacao: "99/99/9998",
                     doseDaVacina: "Teste de 1 dose"),
        TesteVacinas(nomeDaVacina: "Teste de nome 2",
                     fabricanteDaVacina: "Teste de fabricante 2",
                     dataDaVacinacao: "99/99/9997",
                     doseDaVacina: "Teste de 2 dose"),
        TesteVacinas(nomeDaVacina: "Teste de nome 3",
                     fabricanteDaVacina: "Teste de fabricante 3",
                     dataDaVacinacao: "99/99/9996",
                     doseDaVacina: "Teste de 3 dose"),
        TesteVacinas(nomeDaVacina: "Teste de nome 4",
                     fabricanteDaVacina: "Teste de fabricante 4",
                     dataDaVacinacao: "99/99/9995",
                     doseDaVacina: "Teste de 4 dose"),
        TesteVacinas(nomeDaVacina: "Teste de nome 5",
                     fabricanteDaVacina: "Teste de fabricante 5",
                     dataDaVacinacao: "99/99/9994",
                     doseDaVacina: "Teste de 5 dose"),
    ]
}

struct ListaVacinasView: View {
    
    let vacinas: [TesteVacinas] = VacinasMockadas.vacinas
        
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Spacer(minLength: 100)
                    ForEach(vacinas) { vacina in
                        VStack {
                            HStack {
                                Text("\(vacina.doseDaVacina)")
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding(5)
                                    .background(.blue)
                                    .cornerRadius(10)
                                
                                Spacer()
                                    
                                Text("\(vacina.nomeDaVacina)")
                                    .bold()
                            }
                            .padding([.top, .leading, .trailing])
                            
                            Text("Fabricante: \(vacina.fabricanteDaVacina)")
                                .padding(1)
                                
                            Text("Data da Vacinação: \(vacina.dataDaVacinacao)")
                                .padding(.bottom, 5)
                                

                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(.black, lineWidth: 1)
                        )
                        .padding([.leading, .trailing,.vertical], 8)
                        
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("azulClaro"))
            .ignoresSafeArea()
        }
        .navigationTitle("Vacínas")
    }
}

struct ListaVacinasView_Previews: PreviewProvider {
    static var previews: some View {
        ListaVacinasView()
    }
}

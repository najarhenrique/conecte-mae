//
//  FichaView.swift
//  CM
//
//  Created by Student21 on 29/04/23.
//

import SwiftUI

struct FichaView: View {
    var body: some View {
        NavigationStack{
            
            
            ScrollView(.vertical){
                VStack{
                    ZStack{
                        Rectangle()
                            .fill(Color("rosaClaro"))
                            .frame(width: 300)
                            .border(.black, width: 2)
                        VStack(alignment: .leading){
                            Text("Nome")
                                .font(.largeTitle)
                            Text(". Idade")
                            Text(". Peso")
                            Text(". Tempo de Gravidez")
                            Text("Anotações do agente de saúde\nAnotações do agente de saúde\nAnotações do agente de saúde\nAnotações do agente de saúde\nAnotações do agente de saúde\nAnotações do agente de saúde\nAnotações do agente de saúde\nAnotações do agente de saúde\nAnotações do agente de saúde")
                                .padding(5)
                        }.padding(10)
                    }
                    
                    HStack{
                        Spacer()
                        
                        NavigationLink("Dados"){
                            AcaoView()
                        }
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(10)
                        .background(Color("rosaClaro"))
                        .border(.black, width: 2)
                        
                        Spacer()
                        
                        NavigationLink("Gestação"){
                            AcaoView()
                        }
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(10)
                        .background(Color("rosaClaro"))
                        .border(.black, width: 2)
                        
                        Spacer()
                        
                        NavigationLink("Exames"){
                            AcaoView()
                        }
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(10)
                        .background(Color("rosaClaro"))
                        .border(.black, width: 2)
                        
                        Spacer()
                        
                        NavigationLink("Medicação"){
                            AcaoView()
                        }
                        .font(.body)
                        .foregroundColor(.black)
                        .padding(10)
                        .background(Color("rosaClaro"))
                        .border(.black, width: 2)
                        
                        Spacer()
                    }
                    
                    ScrollView(.horizontal){
                        HStack{
                            Text("Exame")
                                .padding(60)
                                .background(Color("rosaClaro"))
                                .border(.black, width: 2)
                            
                            Text("Exame")
                                .padding(60)
                                .background(Color("rosaClaro"))
                                .border(.black, width: 2)
                            
                            Text("Exame")
                                .padding(60)
                                .background(Color("rosaClaro"))
                                .border(.black, width: 2)
                        }
                    }.padding(10)
                    
                    
                }
                
            }
        }
    }
}

struct FichaView_Previews: PreviewProvider {
    static var previews: some View {
        FichaView()
    }
}

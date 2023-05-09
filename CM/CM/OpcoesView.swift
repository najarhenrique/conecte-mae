//
//  OpcoesView.swift
//  CM
//
//  Created by Student21 on 29/04/23.
//

import SwiftUI

struct OpcoesView: View {
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .fill(Color("rosinha"))
                    .frame(width: 400, height: 200)
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius:10)
                    .fill(.white)
                    .frame(width: 85, height: 70)
                    .frame(maxWidth:.infinity, maxHeight: 230, alignment: .bottom)
                Image(systemName: "person.crop.rectangle.fill")
                    .frame(maxWidth:.infinity, maxHeight: 230, alignment: .bottom)
                    .font(.system(size: 70, weight: .light))
                    .foregroundColor(Color("rosinha"))
            }.ignoresSafeArea()
            .frame(maxHeight:150, alignment : .top)
            HStack{
                Image(systemName: "camera.shutter.button.fill")
                Text("Alterar avatar")
            }.foregroundColor(.pink)
            Spacer()
            Text("Nome do usuário")
            ScrollView{
                ZStack{
                    Rectangle()
                        .fill(Color("tabBarColor"))
                        .frame(width: 400, height: 50)
                    Text("Dados pessoais")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                }.padding(.vertical)
                VStack(alignment: .leading){
                    Text("CPF")
                        .foregroundColor(.gray)
                    Text("123.456.789-01")
                        .padding(.bottom)
                    Text("Cartão Nacional de Saúde")
                        .foregroundColor(.gray)
                    Text("897654829384736")
                        .padding(.bottom)
                    Text("Data de Nascimento")
                        .foregroundColor(.gray)
                    Text("05/05/2023")
                        .padding(.bottom)
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                ZStack{
                    RoundedRectangle(cornerRadius:40)
                        .stroke(lineWidth: 5)                   .frame(width: 260, height: 60)
                    
                    HStack{
                        Image(systemName: "greetingcard")
                        Text("Cartão Nacional de Saúde")
                    }
                }.foregroundColor(Color("rosinha"))
                    .padding(.vertical)
                ZStack{
                    Rectangle()
                        .fill(Color("tabBarColor"))
                        .frame(width: 400, height: 50)
                    Text("Configurações")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading)
                }.padding(.vertical)
                VStack(spacing:0){
                    HStack{
                        Image(systemName: "shared.with.you")
                            .foregroundColor(.gray)
                        Text("Gerenciar Conta")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("rosinha"))
                    }.frame(width: 375, height: 50)
                        .padding(.horizontal)
                        .border(Color("rosaBebe"), width: 1)
                    HStack{
                        Image(systemName: "stethoscope")
                            .foregroundColor(.gray)
                        Text("Minhas Unidades Básicas de Saúde")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("rosinha"))
                    }.frame(width: 375, height: 50)
                        .padding(.horizontal)
                        .border(Color("rosaBebe"), width: 1)
                    HStack{
                        Image(systemName: "questionmark.square.fill")
                            .foregroundColor(.gray)
                        Text("Dúvidas Frequentes")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("rosinha"))
                    }.frame(width: 375, height: 50)
                        .padding(.horizontal)
                        .border(Color("rosaBebe"), width: 1)
                    HStack{
                        Image(systemName: "door.left.hand.closed")
                            .foregroundColor(.red)
                        Text("Sair")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("rosinha"))
                    }.frame(width: 375, height: 50)
                        .padding(.horizontal)
                        .border(Color("rosaBebe"), width: 1)
                }
                
            }
        }
    }
}

struct OpcoesView_Previews: PreviewProvider {
    static var previews: some View {
        OpcoesView()
    }
}

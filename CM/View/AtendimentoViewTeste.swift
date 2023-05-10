//
//  AtendimentoViewTeste.swift
//  lucasPrototipo
//
//  Created by Student on 10/05/23.
//

import SwiftUI
var lista = [
    Atendimento(_id : "1h271bw", _rev: "rev", numeroAtendimento: 1, data: "01/01/2022", queixa: "Não", igDumUsg: "xxxxxx", pesoImc: "90.5", edema: "Normal", pressaoArterial: "130/85" , alturaUterina: "11", apresentacaoFetal: "Cefálica", bcf: "140", toque: "", exantema: "Não", observacao: "Nada a constatar.", userID: "8jas8ajd8asjdasca1asd")
]

struct AtendimentoViewTeste: View {
    @StateObject var atendimentoViewModel = AtendimentoViewModel()
    var body: some View {
        VStack{
            Spacer()
            Text("Teste")
            VStack(alignment: .leading) {
                
                ForEach(atendimentoViewModel.atendimentosUser) { atendimento in
                    HStack{
                        VStack{
                            Text("Atendimento \(atendimento.numeroAtendimento!)")
                            Text("Data \(atendimento.data!)")
                            Text("Peso \(atendimento.pesoImc!)")
                            Text("Pressao \(atendimento.pressaoArterial!)")
                            Text("Altura Ulterina \(atendimento.alturaUterina!)")
                            Text("BCF \(atendimento.bcf!)")
                        }
                        VStack{
                            Text("Queixa \(atendimento.queixa!)")
                            Text("DUM \(atendimento.igDumUsg!)")
                            Text("Edema \(atendimento.edema!)")
                            Text("Apresentacao Fetal \(atendimento.apresentacaoFetal!)")
                            Text("Toque \(atendimento.toque!)")
                            Text("Exantema \(atendimento.exantema!)")
                            Text("Observacao: \(atendimento.observacao!)")
                        }
                    }
                    Spacer()
                }
                
                
            }
            Spacer()
        }.onAppear(){
            atendimentoViewModel.fetch()
        }
    }
}
struct AtendimentoViewTeste_Previews: PreviewProvider {
    static var previews: some View {
        AtendimentoViewTeste()
    }
}

//
//  Atendimento.swift
//  lucasPrototipo
//
//  Created by Student on 10/05/23.
//

import Foundation
struct Atendimento : Codable, Identifiable{
    let _id : String?
    let _rev : String?
    let numeroAtendimento : Int?
    let data : String?
    let queixa : String?
    let igDumUsg : String?
    let pesoImc : String?
    let edema : String?
    let pressaoArterial : String?
    let alturaUterina : String?
    let apresentacaoFetal : String?
    let bcf : String?
    let toque : String?
    let exantema : String?
    let observacao : String?
    let userID : String?
    
    var id: Int {
            numeroAtendimento ?? 1
        }
}

struct AtendimentoBase : Codable{
    let _id : String?
    let _rev : String?
    let userID : String?
    let atendimentos : [Atendimento]?
}

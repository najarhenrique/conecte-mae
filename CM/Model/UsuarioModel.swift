//
//  UsuarioModel.swift
//  lucasPrototipo
//
//  Created by Student on 10/05/23.
//

import Foundation
struct Usuario : Codable, Identifiable{
    let _id : String?
    let _rev : String?
    let email : String?
    let senha : String?
    let numero_cartaoSUS : Int?
    let numero_sisprenatal : Int?
    let numero_nis : Int?
    let nome : String?
    let nome_escolhido : String?
    let nome_companheiro : String?
    let data_nascimento : String?
    let idade : String?
    let estado_civil : String?
    let raca : String?
    let trabalha_fora : String?
    let ocupacao : String?
    let endereco : String?
    let ponto_referencia: String?
    let cidade : String?
    let estado : String?
    let cep : String?
    let tel_fixo : String?
    let tel_celular : String?
    let nome_emergencia : String?
    let telefone_emergencia : String?
    let categoria_emergencia : String?
    
    var id : String{
        _id ?? ""
    }
}

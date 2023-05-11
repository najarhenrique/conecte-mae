//
//  UsuarioModel.swift
//  struct
//
//  Created by Student12 on 10/05/23.
//

import Foundation

struct Usuario: Identifiable, Codable{
    let _id: String?
    let _rev: String?
    let antecedentesFamiliares: AntecedentesFamiliares?
    let gestacoes: Gestacoes?
    let antecedentes_clinicos_obstetricos: AntecedentesClinicosObstetricos?
    let gestacao_atual: GestacaoAtual?
    var id: String{
        _id ?? ""
    }
}

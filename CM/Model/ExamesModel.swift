//
//  ExamesModel.swift
//  struct
//
//  Created by Student12 on 10/05/23.
//

import Foundation
struct Exames: Codable{
    let abo_rh: [Geral]?
    let glicemia_jejum: [Geral]?
    let to_tolerancia_glicose: [Geral]?
    let tr_sifilis: [Geral]?
    let vdrl: [Geral]?
    let hiv: [Geral]?
    let hepatite_b: [Geral]?
    let toxoplasmose: [Geral]?
    let hemoglobina_hematocrito: [Geral]?
    let urina_eas: [Geral]?
    let urina_cultura: [Geral]?
    let coombs_indireto: [Geral]?
}
struct Geral: Codable{
    let nome: String?
    let data: String?
    let resultado: String?
}


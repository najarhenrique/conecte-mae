//
//  GestacaoModel.swift
//  struct
//
//  Created by Student12 on 10/05/23.
//

import Foundation

struct Gestacoes: Codable{
        let gestas: Int?
        let gestas_ectopia: Bool?
        let abortos: Int?
        let abortos_3_mais: Bool?
        let parto_vaginal: Int?
        let nascidos_vivos: Int?
        let vivem: Int?
        let mortos_1_semana: Int?
        let mortos_depois_1_semana: Int?
        let nascidos_mortos: Int?
        let cesarea: Int?
        let duas_cesareas_previas: Bool?
        let parto: Int?
        let bebe_menos_2500g: Bool?
        let bebe_mais_4500g: Bool?
        let pre_eclampsia_eclampsia_gestacoes: Bool?
    }

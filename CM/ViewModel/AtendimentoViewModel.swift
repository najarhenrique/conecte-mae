//
//  Atendimento.swift
//  lucasPrototipo
//
//  Created by Student on 09/05/23.
//

import Foundation
class AtendimentoViewModel : ObservableObject {
    @Published var atendimentosBase : [AtendimentoBase] = []
    @Published var atendimentosUser : [Atendimento] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/atendimentoget") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([AtendimentoBase].self, from: data)
                
                DispatchQueue.main.async {
                    self?.atendimentosBase = parsed
                    self?.atendimentosUser = self!.atendimentosBase[0].atendimentos!
                }
            } catch{
                print(error)
            }
        }
        
        task.resume()
    }
}

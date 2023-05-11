//
//  UsuarioViewModel.swift
//  lucasPrototipo
//
//  Created by Student on 10/05/23.
//

import Foundation
class UsuarioViewModel : ObservableObject {
    @Published var usuario : [Usuario] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/cmusuarioget") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Usuario].self, from: data)
                
                DispatchQueue.main.async {
                    self?.usuario = parsed
                }
            } catch{
                print(error)
            }
        }
        
        task.resume()
    }
}

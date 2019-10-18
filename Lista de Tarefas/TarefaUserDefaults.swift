//
//  TarefaUserDefaults.swift
//  Lista de Tarefas
//
//  Created by Matheus Rodrigues Araujo on 18/10/19.
//  Copyright © 2019 Curso IOS. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func salvar (tarefa: String) {
        
        //Recuperar tarefas já salvas
        tarefas = listar()
                
        //Salvar Tarefa
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    func listar () -> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        } else {
            return []
        }
    }
    
    func remover (indice: Int) {
        
        tarefas = listar()
        tarefas.remove(at: indice)
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
}

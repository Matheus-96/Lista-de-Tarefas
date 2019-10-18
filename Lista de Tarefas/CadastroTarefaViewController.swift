//
//  CadastroTarefaViewController.swift
//  Lista de Tarefas
//
//  Created by Matheus Rodrigues Araujo on 18/10/19.
//  Copyright © 2019 Curso IOS. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController {

    
    @IBOutlet weak var tarefaCampo: UITextField!
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        
        if let textoDigitado = tarefaCampo.text {
            
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            tarefaCampo.text = ""
            
            let dados = tarefa.listar()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

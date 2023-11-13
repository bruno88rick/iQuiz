//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Bruno Oliveira on 25/10/23.
//

import UIKit

class QuestaoViewController: UIViewController {

    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        print(sender.tag)
    }
    
    @IBOutlet var botoesRespostas: [UIButton]!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func configurarLayout () {
        navigationItem.hidesBackButton = true
        for botao in botoesRespostas {
            botao.layer.cornerRadius = 12.0
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

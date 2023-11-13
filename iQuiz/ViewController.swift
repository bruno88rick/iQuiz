//
//  ViewController.swift
//  iQuiz
//
//  Created by Bruno Oliveira on 23/10/23.
//

import UIKit

// classe ViewController (tela) que herda a classe UIViewController
class ViewController: UIViewController {

    // cria a propriedade do botao "botaoIniciarQuiz" no código
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    // função de ação do botao "botaoIniciarQuiz
    @IBAction func botaoPressionado(_ sender: Any) {
        
        print("O botão foi pressionado! ;-)")
        
    }
    
    //função que roda sempre que a tela é exibida, como estamos na classe filha, damos um override nesta função
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
    }

    
    // método criado para configurar o layout de forma programática
    private func configurarLayout() {
        //altera a propriedade cornerRadius do botão, que faz ele ficar arredondado
        botaoIniciarQuiz.layer.cornerRadius = 12.0
        botaoIniciarQuiz.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1)
        
    /*Linha acima altera a cor de fundo do Botão. O elemento botaoIniciar possui uma propriedade chamada de backgroundColor, que é do tipo UIColor. Se você pressionar a tecla option e clicar logo acima de ‘backgroundColor’ conseguirá verificar o seu tipo.
     
     Infelizmente, nós não conseguimos colocar a cor em hexadecimal de forma programática. Hexadecimal seria o valor #7432FF, igual está no Figma. Conseguimos colocar a cor de diversas outras formas, e uma delas é através do sistema RGB (red, green, blue).

     Portanto, estamos inicializando uma classe UIColor que recebe 4 parâmetros diferentes: red, green, blue, alpha :

     Red é a quantidade de vermelho em uma cor;
     Green é a quantidade de verde;
     Blue é a quantidade de azul.
     No código, essas quantidades são representadas de 0 até 1, porém, se você observar no Figma, verá que a cor RGB está como (116, 50, 255), pois, nesse caso, o valor vai de 0 até 255. Por esse motivo, precisamos dividir os valores por 255 no código.*/
    }
}


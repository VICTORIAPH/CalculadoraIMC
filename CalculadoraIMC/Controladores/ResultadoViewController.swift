//
//  ResultadoViewController.swift
//  CalculadoraIMC
//
//  Created by Mac8 on 19/10/21.
//

import UIKit

class ResultadoViewController: UIViewController {
    

    @IBOutlet weak var imcLabel: UILabel!
    
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var mensajeLabel: UILabel!
    
    var valorIMC: String?
    var aviso: String?
    var color: UIColor?
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        mensajeLabel.text = aviso
        imcLabel.text = valorIMC
        image2.image = image
        view.backgroundColor = color
   

        
    }
    
}

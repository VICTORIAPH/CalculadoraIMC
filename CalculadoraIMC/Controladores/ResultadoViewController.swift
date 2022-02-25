//
//  ResultadoViewController.swift
//  CalculadoraIMC
//
//  Created by Mac8 on 19/10/21.
//

import UIKit

class ResultadoViewController: UIViewController {
    
    var valorIMC: String?
    var msj: String?
    var color: UIColor?

    @IBOutlet weak var valorIMCLabel: UILabel!
    @IBOutlet weak var mensajeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
         
        mensajeLabel.text = msj
        valorIMCLabel.text = valorIMC
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

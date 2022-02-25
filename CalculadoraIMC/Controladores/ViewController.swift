//
//  ViewController.swift
//  CalculadoraIMC
//
//  Created by Mac8 on 19/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var cerebroCalculadora = cerebroIMC()
    
    @IBOutlet weak var sliderAltura: UISlider!
    @IBOutlet weak var sliderPeso: UISlider!
    @IBOutlet weak var pesoLabel: UILabel!
    @IBOutlet weak var alturaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alturaLabel.text = "\(sliderAltura.value) Cm"
        pesoLabel.text = "\(sliderPeso.value) Kg"    }


    @IBAction func calcularBtn(_ sender: UIButton) {
        let peso = sliderPeso.value
        let altura = sliderAltura.value
        
        cerebroCalculadora.calcularIMC(peso: peso, altura: altura)
        
        
        performSegue(withIdentifier: "calcular", sender: nil)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calcular" {
            let destino = segue.destination as! ResultadoViewController
            destino.valorIMC = cerebroCalculadora.retornarValorIMC()
            destino.msj = cerebroCalculadora.retornarMSJ()
            destino.color = cerebroCalculadora.retornarColor()
        }
    }
    
    
    @IBAction func pesoSliderAccion(_ sender: UISlider) {
        
        pesoLabel.text = "\(String(format: "%.1f", sender.value))  Kg."
    }
    
    
    @IBAction func alturaSliderAccion(_ sender: UISlider) {
        
        alturaLabel.text = "\(String(format: "%.1f", sender.value))  Cms."
    }
    
    
}


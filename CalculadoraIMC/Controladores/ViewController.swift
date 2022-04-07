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
        alturaLabel.text = "\(sliderAltura.value) Mts"
        pesoLabel.text = "\(sliderPeso.value) Kg"    }


    @IBAction func calcularBtn(_ sender: UIButton) {
        //guardamos las variables para el calculo
        let peso = sliderPeso.value
        let altura = sliderAltura.value
       
        
        cerebroCalculadora.calcularIMC(peso: peso, altura: altura)       
        performSegue(withIdentifier: "calcular", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calcular" {
            let destino = segue.destination as! ResultadoViewController
            destino.valorIMC = cerebroCalculadora.retornaValorIMC()
            destino.color = cerebroCalculadora.retornarColor()
            destino.image = cerebroCalculadora.retornarColor()
            destino.aviso = cerebroCalculadora.darAviso()
        }
    }
    
    
    @IBAction func pesoSliderAccion(_ sender: UISlider) {
        //imprimimos lo que el usuario ponga en el slider
        print(sender.value)
        
        //imprimir dos decimales
        pesoLabel.text = "\(String(format: "%.2f", sender.value)) Kg"
       // peso = Float(sender.value)
        
        
        //el sender es para obtener el valor del slider
        //pesoLabel.text = "\(sender.value)"
    }
    
    
    @IBAction func alturaSliderAccion(_ sender: UISlider) {
       print(sender.value)
       // alturaLabel.text = "\(sender.value)"
        //imprimir dos decimales
        alturaLabel.text = "\(String(format: "%.2f", sender.value / 100)) mts"
        //altura = Float(sender.value) / 100
        
    }
    
    
}


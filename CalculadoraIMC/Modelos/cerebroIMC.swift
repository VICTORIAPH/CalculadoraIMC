//
//  cerebroIMC.swift
//  CalculadoraIMC
//
//  Created by Mac8 on 19/10/21.
//

import Foundation
import UIKit

struct cerebroIMC{
    
    /// IMC
    var imc: objetoIMC?
    
 
    mutating func calcularIMC(peso: Float, altura: Float) {
        let valorIMC = peso / (altura * altura)
        print(valorIMC)
        if valorIMC < 18.5 {
            
            imc = objetoIMC(valor: valorIMC, aviso: "Tu IMC esta abajo", color: UIColor.yellow, image: UIImage(named: "bajo"))
        }else if valorIMC < 24.9 {
            imc = objetoIMC(valor: valorIMC, aviso: "Estas en un rango normal", color: UIColor.green, image: UIImage(named: "normal"))
        }else if valorIMC < 29.9 {
            imc = objetoIMC(valor: valorIMC, aviso: "Tienes sobrepeso", color: UIColor.red, image: UIImage(named: "alto"))
        }else{
            imc = objetoIMC(valor: valorIMC, aviso: "Tienes sobrepeso extrema :(", color: UIColor.red, image: UIImage(named: "sobrepeso"))
        }
    }
    func retornaValorIMC() -> String {
        let imcCon1Decimal = String(format: "%.1f", imc?.valor ?? 0.0)
        return imcCon1Decimal
    }
    func darAviso() -> String {
        return imc?.aviso ?? "No hay mensaje!!!"
        
    }
    func retornarColor() -> UIColor {
        return imc?.color ?? UIColor.cyan
    }
   func retornarColor() -> UIImage {
    return imc?.image ?? UIImage(named: "normal") as! UIImage
    }
    
    
}

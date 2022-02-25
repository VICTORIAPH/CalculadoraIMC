//
//  cerebroIMC.swift
//  CalculadoraIMC
//
//  Created by Mac8 on 19/10/21.
//

import Foundation
import UIKit

struct cerebroIMC{
    
    var imc: objetoIMC?
    
    //metodos
    
    mutating func calcularIMC(peso: Float, altura: Float){
        let valorIMC = peso / (altura * altura)
        
        if valorIMC < 18.5 {
            imc = objetoIMC(valor: valorIMC, mensaje: "Estas muy flaco, come mas", color:#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), imagen: nil)
           
            }
      else if valorIMC < 24.9 {
            imc  = objetoIMC(valor: valorIMC, mensaje: "Tu IMC es normal, Felicidades", color:  #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: nil)
           
            
    }else if valorIMC < 29.9 {
            imc  = objetoIMC(valor: valorIMC, mensaje: "Tienes Sobrepeso cuidado", color: #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: nil)
            
            
        }else{
        imc  = objetoIMC(valor: valorIMC, mensaje: "Obesidad extrema visita un doctor", color: #colorLiteral(red: 0.764705896, green: 0.250980401, blue: 0.9490196347, alpha: 1), imagen: nil)
           
       }
    }
    
    func retornarValorIMC() -> String{
        let imcCon1Decimal = String(format: "%.1f", imc?.valor ?? 0.0)
                return imcCon1Decimal
        
    }
    
    func retornarColor() -> UIColor{
        return imc?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)    }
    
    func retornarMSJ() -> String{
        return imc?.mensaje ?? "Sin MSJ"
        
    }
    
   // func retornarImagen() -> UIImage{
        
   // }
}

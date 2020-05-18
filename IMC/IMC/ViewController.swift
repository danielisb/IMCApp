//
//  ViewController.swift
//  IMC
//
//  Created by Daniel Lisboa on 17/05/20.
//  Copyright © 2020 Daniel Lisboa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var viResult: UIView!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculate(_ sender: Any)
    {
        if let weight = Double(tfWeight.text!), let height = Double(tfHeight.text!)
        {
            imc = weight / (height*height) /* alternativa pow(height, 2) */
            showResult()
        }
    }
    func showResult()
    {
        var result: String = ""
        var image: String = ""
        
        switch imc
        {
            case 0..<16:
                result = "Magreza"
                image = "abaixo"
            case 16..<18.5:
                result = "Abaixo do Peso Ideal"
                image = "abaixo"
            case 18.5..<25:
                result = "Peso Ideal"
                image = "ideal"
            case 25..<30:
                result = "Sobrepeso"
                image = "sobre"
                break
            default:
                result = "Obesidade"
                image = "obesidade"
        }
        lbResult.text = result
        ivResult.image = UIImage(named: image)
        viResult.isHidden = false
    }
}


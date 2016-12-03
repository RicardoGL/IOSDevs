//
//  ViewController.swift
//  AppHelloWorld
//
//  Created by Grupo Neu on 02/12/16.
//  Copyright © 2016 Ricardo Garcia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var nameUser: UITextField!
    
    @IBOutlet var outputGreeting: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func pressedGreeting(_ sender: UIButton) {
        
        let nameU = nameUser.text
        
        let alert: UIAlertController = UIAlertController(title: "Notificación", message: "Hola tu nombre es: \(nameU)", preferredStyle:.alert)
        
        let closeAlert: UIAlertAction = UIAlertAction(title:"Cerrar", style: .default, handler: nil)
        
        alert.addAction(closeAlert)
        
        present(alert, animated: true, completion: nil)
        
        outputGreeting.text = "Hola tu nombre es \(nameU)"
        
    }

}


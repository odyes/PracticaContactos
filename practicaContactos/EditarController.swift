//
//  EditarController.swift
//  practicaContactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class EditarController : UIViewController{
    var contactos : Contactos?
    var callbackActualizar : (() -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtNumero: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func doTapActualizar(_ sender: Any) {
        contactos?.nombre = txtNombre.text!
        contactos?.numero = txtNumero.text!
        callbackActualizar()
    }
}

//
//  AgregarController.swift
//  practicaContactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class AgregarController : UIViewController{
    var contacto: Contactos?
    var callbackAgregar : ((Contactos) -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtNumero: UITextField!
    
    override func viewDidLoad() {
    }
    
    
    @IBAction func doTapAgregar(_ sender: Any) {
        if callbackAgregar != nil {
            contacto = Contactos(nombre: txtNombre.text ?? "nombre", numero: txtNumero.text ?? "nombre")
            callbackAgregar!(contacto!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}

//
//  EditarController.swift
//  practicaContactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class EditarController : UIViewController{
    var contacto : Contactos?
    var callbackActualizar : (() -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtNumero: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if contacto != nil{
            txtNombre.text = contacto!.nombre
            txtNumero.text = contacto!.numero
        }
    }
    
    
    @IBAction func doTapActualizar(_ sender: Any) {
        if callbackActualizar != nil{
            contacto?.nombre = txtNombre.text!
            contacto?.numero = txtNumero.text!
            callbackActualizar!()
            self.navigationController?.popViewController(animated: true)
        }
    }
}

//
//  ViewController.swift
//  practicaContactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class ContactosController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var contactos : [Contactos] = []
   
    @IBOutlet weak var tvContactos: UITableView!
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContactos") as? CeldaContactosController
        celda?.lblNombre.text = contactos[indexPath.row].nombre
        celda?.lblNumero.text = contactos[indexPath.row].numero
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToAgregar"{
            let destino = segue.destination as! AgregarController
            destino.callbackAgregar = agregarContacto
            
        } else if segue.identifier == "goToEditar" {
            let destino = segue.destination as! EditarController
            destino.callbackActualizar = actualizarContacto
            destino.contacto = contactos[tvContactos.indexPathForSelectedRow!.row]
        }
    }
    
    
    func agregarContacto(contacto: Contactos){
        contactos.append(contacto)
        tvContactos.reloadData()
    }
    
    func actualizarContacto(){
        tvContactos.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        contactos.append(Contactos(nombre: "Alejandra Esquer", numero: "6471179082"))
        contactos.append(Contactos(nombre: "José Martín", numero: "6471765879"))
        contactos.append(Contactos(nombre: "José Martín", numero: "6471765879"))
        contactos.append(Contactos(nombre: "José Martín", numero: "6471765879"))
        contactos.append(Contactos(nombre: "José Martín", numero: "6471765879"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
/////////////////

}


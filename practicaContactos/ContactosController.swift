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

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    //Construye cada celda
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
        }
    }
    
    func agregarContacto(contactos: Contactos){
        contactos.append(contactos)
        tvContactos.reloadData()
    }
    
    func actualizarContacto(){
        tvContactos.reloadData
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        contactos.append(Contactos(nombre: "José Martín", numero: "6471765879"))
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


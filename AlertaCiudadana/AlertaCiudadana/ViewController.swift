//
//  AppDelegate.swift
//  AlertaCiudadana
/* Octavio Cuellar Almazan 2874558 ICA
Desarrollo de aplicaciones en plataforma iOS - Miguel Pérez Maciel
Evidencia Final - Alerta Ciudadana - 20/05/2021
Versión 0.9
*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.bordered, target: self, action: Selector(("back:")))
        self.navigationItem.leftBarButtonItem = newBackButton // Aun si utilizo este metodo el boton de 'atras' no aparece en alguna pantalla
        
        // Do any additional setup after loading the view.
    }

    func back(sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }

}


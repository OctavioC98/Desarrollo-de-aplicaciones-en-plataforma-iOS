//
//  PlanesTormentas.swift
//  AlertaCiudadana
/* Octavio Cuellar Almazan 2874558 ICA
Desarrollo de aplicaciones en plataforma iOS - Miguel Pérez Maciel
Evidencia Final - Alerta Ciudadana - 20/05/2021
Versión 0.9
*/

import Foundation
import UIKit
import WebKit
class PlanesTormentas: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.gob.mx/cenapred/articulos/que-hacer-antes-y-durante-una-tormenta-electrica-215078") // Sitio oficial de sedena; apartado para acciones en caso de tormentas
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}

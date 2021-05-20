//
//  PlanesDNIII.swift
//  AlertaCiudadana
/* Octavio Cuellar Almazan 2874558 ICA
Desarrollo de aplicaciones en plataforma iOS - Miguel Pérez Maciel
Evidencia Final - Alerta Ciudadana - 20/05/2021
Versión 0.9
*/

import Foundation
import UIKit
import WebKit
class PlanesDNIII: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.gob.mx/sedena/acciones-y-programas/cambio-climatico-plan-dn-iii-e") // Sitio oficial de sedena; apartado del plan DNIII
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}

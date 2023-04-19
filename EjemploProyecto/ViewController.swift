import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView(frame: view.bounds)
        webView.navigationDelegate = self
        view.addSubview(webView)
        
        if let url = URL(string: "https://payments-psp-int.fpayapp.com/checkout-fpay-v2/cl/payment/643dadd1f5604655a5f68367") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            // Obtener el agente de usuario actual
            let userAgent = webView.value(forKey: "userAgent") as? String
            
            // Imprimir el agente de usuario para depuración
            print("User Agent: \(userAgent ?? "")")
   }
}

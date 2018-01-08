//
//  ViewController.swift
//  browser
//
//  Created by mac on 07.01.2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var searchBar: UITextField!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func searchPressed(_ sender: Any) {
        guard let text = searchBar.text else { return}
        let url = URL(fileURLWithPath: text)
        let request = URLRequest(url: url)
        while (webView.load(request) != nil) {
            progressBar.isHidden = false
            progressBar.setProgress(100, animated: true)
        }
        progressBar.isHidden = true
    }
    
    @IBAction func buttonPrevius(_ sender: Any) {
        webView.goBack()
    }
    @IBAction func buttonNext(_ sender: Any) {
        webView.goForward()
    }
}


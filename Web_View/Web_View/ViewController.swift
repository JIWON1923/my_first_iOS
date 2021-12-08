//
//  ViewController.swift
//  Web_View
//
//  Created by Lee Ji Won on 2021/12/08.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var WebViewMain: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1단계 : url string (주소) 찾기
        // 2단계 : url string을 url request로 바꾸기
        // 3단계 : url request를 webView에 load한다.
        
        
        let urlString = "https://www.google.com" // 1단계
        if let url = URL(string: urlString){ //unwrap
            let urlRequest = URLRequest(url: url) // 2단계
            WebViewMain.load(urlRequest)
        }
        
    }
    
}


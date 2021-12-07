//
//  ViewController.swift
//  HelloWorld
//
//  Created by Lee Ji Won on 2021/12/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Click_MoveBtn(_ sender: Any) {
        
        // 1단계 : 스토리보드에서 이동 할 컨트롤러 찾기 : id 이용, 옵셔널 바인딩
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "DetailController"){
            
            // 2단계: 찾은 컨트롤러를 네비게이션에 넣기
            self.navigationController?.pushViewController(controller, animated: true)
            
        }
    }
}


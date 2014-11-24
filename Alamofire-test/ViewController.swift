//
//  ViewController.swift
//  Alamofire-test
//
//  Created by teitei-tk on 2014/11/24.
//  Copyright (c) 2014年 teitei-tk. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let apiRequest:Request = Alamofire.request(.GET, "http://api.ihackernews.com/page")
        apiRequest.response(){
            request, response, data, error in
            println(data)
        }
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


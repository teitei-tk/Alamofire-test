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

        apiRequest.validate(statusCode: 200..<400).response(){
            request, response, data, error in
            if error == nil && data != nil {
                return self.fetchApiData(data!)
            }

            return self.errorStack(error!)
        }
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func errorStack(error:NSError) 
    {
        println("-----------------------------------")
        println("Code:\(error.code)")
        println("Description:\(error.localizedDescription)")
        println("-----------------------------------")
    }

    func fetchApiData(data:AnyObject) 
    {
        let jsonData:NSData = data as NSData
        let json = JSON(data: jsonData)
        println(json)
    }
}


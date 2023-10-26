//
//  ViewController.swift
//  ca3
//
//  Created by Student on 26/10/23.
//  Copyright © 2023 lpu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func Actseg(_ sender: Any) {
        let value = OutSeg.selectedSegmentIndex
        
        if value == 0{
            let myurl=URL(string: "https://www.youtube.com/watch?v=5V04DETPF0o")
            let request = URLRequest(url: myurl!)
            web.loadRequest(request)
            
        }
        else if value == 1{
            let myurl=URL(string: "https://www.youtube.com/watch?v=dG91B3hHyY4")
            let request = URLRequest(url: myurl!)
            web.loadRequest(request)
        }
        else if value == 2{
            let myurl=URL(string: "https://www.youtube.com/watch?v=uYPbbksJxIg")
            let request = URLRequest(url: myurl!)
            web.loadRequest(request)
        }
        
    }
    
    @IBOutlet weak var OutSeg: UISegmentedControl!
    
    @IBOutlet weak var web: UIWebView!
    
    
    @IBAction func Slider(_ sender: Any) {
        let value = SliOut.value
        if value == 0{
            Rating.text = "1"
        }
        else if value == 1{
            Rating.text = "2"
            
        }
        else if value == 2{
            Rating.text = "3"
            
        }
        else if value == 3{
            Rating.text = "4"
            
        }
        else if value == 4{
            Rating.text = "5"
            
        }
        
    }
    
    @IBOutlet weak var SliOut: UISlider!
    
    @IBOutlet weak var Rating: UILabel!
}


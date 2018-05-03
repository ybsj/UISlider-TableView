//
//  ViewController.swift
//  UISlider Table
//
//  Created by 김종현 on 2018. 5. 3..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var mySlider: UISlider!
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //mySlider.setValue(0.0, animated: true)
        myTableView.dataSource = self
        myTableView.delegate = self
    }

    @IBAction func sliderMoved(_ sender: Any) {
        
        print("slider vlaue = \(Int(mySlider.value * 100))")
        
        // tableView의 값을 reload
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        
//        cell.textLabel?.text = String(Int(mySlider.value))
        let tableValue = String(Int(mySlider.value * 100) + indexPath.row)
        cell.textLabel?.text = tableValue
        return  cell
    }
    
}


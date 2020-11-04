//
//  ViewController.swift
//  poster
//
//  Created by 김태훈 on 2020/11/03.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    @IBOutlet weak var bountyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        refresh()
    }
    
    @IBAction func showAlert(){
        let message: String = "현상금은 \(currentValue) 입니다"
        
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
        
        refresh()
    }
    
    func refresh() -> Void {
        currentValue = Int(arc4random_uniform(1000000) + 5000)
        bountyLabel.text = "$ \(currentValue)"
    }
}


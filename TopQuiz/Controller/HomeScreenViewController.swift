//
//  ViewController.swift
//  TopQuiz
//
//  Created by Taufeeq Ansari on 22/03/21.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    
    @IBOutlet weak var startButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      setupUI()
        
    }
    func setupUI () {
        
        
        self.startButton.layer.cornerRadius = self.startButton.frame.height/2
        
    
        
        
    }
    
     
    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        
    }
    
    
   

}



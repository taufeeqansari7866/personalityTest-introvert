

import UIKit


class ResultsViewController: UIViewController {
    
    var finalAnswer = ""
    @IBOutlet weak var finalScoreLabel: UILabel!
    @IBOutlet weak var restartPressed: UIButton!
    @IBOutlet weak var sharePressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        finalScoreLabel.text = "You are an \"\(finalAnswer)"
        
        setupUI()
        
        screenShotMethod()
        
        // Do any additional setup after loading the view.
    }
    
    func setupUI () {
        self.restartPressed.layer.cornerRadius = self.restartPressed.frame.height/2
        self.sharePressed.layer.cornerRadius = self.sharePressed.frame.height/2
        
    }
    
    func screenShotMethod() {
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
    
    @IBAction func restartQuizPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func Share(_ sender: UIButton){
        
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        let imageShare = [ image! ]
        let activityViewController = UIActivityViewController(activityItems: imageShare , applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)
    }
}




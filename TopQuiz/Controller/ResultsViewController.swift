

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
    

   
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
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
        
        
        
      
     /*   let text = "WOW I AM AN INTROVERT like Elon & Zukburg u too can check"

                // set up activity view controller
                let textToShare = [ text ]
                let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
                activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash

                // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]

                // present the view controller
                self.present(activityViewController, animated: true, completion: nil)*/

        
        
    /*    UIGraphicsBeginImageContext(view.frame.size)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        _ = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        var imagesToShare = [AnyObject]()
        imagesToShare.append(UIActivityViewController.self)

        let activityViewController = UIActivityViewController(activityItems: imagesToShare , applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        present(activityViewController, animated: true, completion: nil)
        
        
        */
    }
    
    
    
    
    
    
    /*{
        let bounds = UIScreen.main.bounds
           UIGraphicsBeginImageContextWithOptions(bounds.size, true, 0.0)
           self.view.drawHierarchy(in: bounds, afterScreenUpdates: false)
           let img = UIGraphicsGetImageFromCurrentImageContext()
           UIGraphicsEndImageContext()
           let activityViewController = UIActivityViewController(activityItems: [img!], applicationActivities: nil)
           activityViewController.popoverPresentationController?.sourceView = self.view
           self.present(activityViewController, animated: true, completion: nil)
       }*/
     
        
        
        
        
        
        /*let text = "This is some text that I want to share."

                // set up activity view controller
                let textToShare = [ text ]
                let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
                activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash

                // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]

                // present the view controller
                self.present(activityViewController, animated: true, completion: nil)

            }

            // share image
           @IBAction func shareImageButton(_ sender: UIButton) {

                // image to share
                let image = UIImage(named: "Image")

                // set up activity view controller
                let imageToShare = [ image! ]
                let activityViewController = UIActivityViewController(activityItems: imageToShare, applicationActivities: nil)
                activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash

                // exclude some activity types from the list (optional)
        activityViewController.excludedActivityTypes = [ UIActivity.ActivityType.airDrop, UIActivity.ActivityType.postToFacebook ]

                // present the view controller
                self.present(activityViewController, animated: true, completion: nil)
           }
        */
    
    
    
    
    

    
    
    
    
    
    }

 
    



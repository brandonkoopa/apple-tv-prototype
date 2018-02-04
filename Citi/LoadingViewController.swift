import UIKit

class LoadingViewController: UIViewController {
    
    var timer       = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        timer = NSTimer(timeInterval: 2.0, target: self, selector: "loadTermsAndService", userInfo: nil, repeats: false)
        NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
    }
    
    func loadTermsAndService() {
        let vc = self.storyboard!.instantiateViewControllerWithIdentifier("termsAndService") as! ViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    
}


import UIKit
import MessageUI


class TwilioaChat: UIViewController,
MFMessageComposeViewControllerDelegate {
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func displayMessageInterface() {
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        
//        composeVC.recipients = ["3142026521"]
          composeVC.recipients = ["3234494226"]
        composeVC.body = "Message delivered"
        
        if MFMessageComposeViewController.canSendText() {
            self.present(composeVC, animated: true, completion: nil)
        } else {
            print("Can't send messages.")
        }
    }
    
    @IBAction func getName(_ sender: Any) {
    }
    
    
    @IBAction func sendMessageButtonAction(_ sender: Any) {
        displayMessageInterface()
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [UIColor.cyan.cgColor, UIColor.green.cgColor]
        layer.startPoint = CGPoint(x: 0, y: 0)
        layer.endPoint = CGPoint(x:1, y:1)
        self.view.layer.addSublayer(layer)
    }
}

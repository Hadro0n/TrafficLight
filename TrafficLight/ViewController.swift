import UIKit

final class ViewController: UIViewController {
    
    let currentAlpha: CGFloat = 0.3
    
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.alpha = currentAlpha
        yellowColor.alpha = currentAlpha
        greenColor.alpha = currentAlpha
        
        redColor.layer.cornerRadius = redColor.frame.width / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.width / 2
        greenColor.layer.cornerRadius = greenColor.frame.width / 2
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        startButton.setTitle("NEXT", for: .normal)
        
        if redColor.alpha == yellowColor.alpha {
            redColor.alpha = CGFloat(1.0)
            greenColor.alpha = currentAlpha
        }
        else if redColor.alpha > currentAlpha && yellowColor.alpha == greenColor.alpha {
            yellowColor.alpha = CGFloat(1.0)
            redColor.alpha = currentAlpha
        }
        else if yellowColor.alpha > currentAlpha && greenColor.alpha == redColor.alpha {
            greenColor.alpha = CGFloat(1.0)
            yellowColor.alpha = currentAlpha
        }
    }
}

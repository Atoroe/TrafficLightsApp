import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    @IBAction func startButtonPressed() {
        switch counter {
        case 0:
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            
            counter += 1
        case 1:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            greenLightView.alpha = 0.3
            
            counter += 1
            
            startButton.setTitle("NEXT", for: .normal)
        case 2:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            
            counter = 0
        default:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            
            counter = 0
            
            startButton.setTitle("START", for: .normal)
        }
    }
    
    private func setupViews() {
        redLightView.layer.cornerRadius = redLightView.frame.size.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.size.width / 2
        
        startButton.layer.cornerRadius = 10
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
}


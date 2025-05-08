import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var myView11: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

    }
    
    func setupUI() {

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor(hex: "#4169e1").cgColor,
            UIColor(hex: "#0000CD").cgColor,
            UIColor(hex: "#000080").cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.frame = myView11.bounds
        myView11.layer.insertSublayer(gradientLayer, at: 0)
    }

    
    @IBAction func startGameButtonTapped(_ sender: UIButton) {
        // Oyun ekranını (ViewController) başlatıyoruz.
        if let viewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
            // Oyun ekranını navigasyonla başlatıyoruz
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

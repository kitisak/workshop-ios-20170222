import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLB: UILabel!
    @IBOutlet weak var numberTF: UITextField!

    @IBAction func sayTab(_ sender: UIButton) {
        let controller = FizzBuzzController()
        controller.setProtocol(fbProtocol: self)
        controller.xxx(number: Int(numberTF.text!)!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ViewController: FizzBuzzProtocol {
    func onSucceess(result: String) {
        resultLB.text  = result
    }
}

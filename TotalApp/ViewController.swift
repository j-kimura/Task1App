//
//  ViewController.swift
//  TotalApp
//
//  Created by Jui Kimura on 2021/02/15.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textField4: UITextField!
    @IBOutlet private weak var textField5: UITextField!

    @IBOutlet private weak var totalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
        textField3.keyboardType = .numberPad
        textField4.keyboardType = .numberPad
        textField5.keyboardType = .numberPad
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // キーボードを閉じる
        view.endEditing(true)
    }

    @IBAction private func pressButton(_ sender: Any) {
        let text1 = Int(textField1.text!) ?? 0
        let text2 = Int(textField2.text!) ?? 0
        let text3 = Int(textField3.text!) ?? 0
        let text4 = Int(textField4.text!) ?? 0
        let text5 = Int(textField5.text!) ?? 0
        let total = text1 + text2 + text3 + text4 + text5
        totalLabel.text = String(total)
    }
}

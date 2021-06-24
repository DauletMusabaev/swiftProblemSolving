//
//  ViewController.swift
//  training
//
//  Created by Daulet Mussabayev on 23.06.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var boxView: UIView = {
        let box = UIView()
        box.backgroundColor = .blue
        return box
    }()
    
    private lazy var falseButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.systemBlue.cgColor
        return button
    }()
    
    private lazy var trueButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.systemBlue.cgColor
        return button
    }()
    
    private lazy var questionText: UITextField = {
        let textField = UITextField()
        textField.text = "HELLO"
        return textField
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.markup()
    }
    
    private func markup() {
//        var words: String = "most trees are blue"
//        var newWords: String = words.capitalized
//        print(newWords)
//        equals to
//        func toJadenCase() -> String {
//              return components(
//                                separatedBy: CharacterSet.whitespacesAndNewlines)
//                                .map { $0.capitalized }
//                                .joined(separator: " ")
//        }
        
//        private func evenOrOdd(number: Int) -> String {
//            return number % 2 == 0 ? "Even" : "Odd"
//        }
        
        [boxView, trueButton, falseButton, questionText].forEach {
            view.addSubview($0)
        }
        
        boxView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        falseButton.snp.makeConstraints{
            $0.bottom.equalTo(self.view.snp.bottom).inset(50)
            $0.right.equalTo(self.view.snp.right).inset(30)
            $0.top.equalTo(self.view.snp.bottom).inset(110)
            $0.left.equalTo(self.view.snp.left).offset(30)
        }
        
        trueButton.snp.makeConstraints {
            $0.top.equalTo(trueButton.snp.bottom).inset(60)
            $0.left.equalTo(falseButton.snp.left)
            $0.bottom.equalTo(falseButton.snp.bottom).inset(80)
            $0.right.equalTo(falseButton.snp.right)
        }
        
        questionText.snp.makeConstraints {
            $0.top.equalTo(self.view.snp.top).offset(300)
            $0.bottom.equalTo(questionText.snp.top).offset(120)
            $0.right.equalTo(self.view.snp.right).inset(30)
            $0.left.equalTo(self.view.snp.left).offset(30)
        }
        
    }
    
    

}


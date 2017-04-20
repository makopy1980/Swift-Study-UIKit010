//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private & Internal Methods
    
    /// Viewの設定
    private func setupView() {
        
        // Viewの背景色を設定
        self.view.backgroundColor = UIColor.cyan
        
        // ボタンの設定
        self.setupButton()
    }
    
    /// ボタンの設定
    private func setupButton() {
        let buttonSize = CGSize(width: 200.0,
                                height: 40.0)
        let buttonPoint = CGPoint(x: (self.view.bounds.width - buttonSize.width) / 2,
                                  y: 200.0)
        let buttonRect = CGRect(origin: buttonPoint,
                                size: buttonSize)
        
        let button = UIButton(frame: buttonRect)
        
        button.backgroundColor = UIColor.red
        button.setTitle("UIAlertを発動",
                        for: .normal)
        button.setTitleColor(UIColor.white,
                             for: .normal)
        
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 20.0
        
        button.addTarget(self,
                         action: #selector(onButtonTapped(sender:)),
                         for: .touchDown)
        
        self.view.addSubview(button)
    }
    
    /// Alertの表示
    private func showAlert() {
        let alert = UIAlertController(title: "タイトル",
                                      message: "メッセージ",
                                      preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { (action) in
                                        debugPrint("Alert OK!")
                                     }
        
        alert.addAction(okAction)
        
        present(alert,
                animated: true,
                completion: nil)
    }
    
    /// ボタンタップイベント
    internal func onButtonTapped(sender: UIButton) {
        // Alertを表示
        self.showAlert()
    }
}


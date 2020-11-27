//
//  ViewController.swift
//  Gonki
//
//  Created by LianaKryu on 09.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    // переменная, которая хранит имя пользователя
    var playerName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // выход из приложения
    @IBAction func closeAppAction(_ sender: Any) {
        exit(0)
    }
    
    // вызов Alert Controller в котором игроку предлагается ввести свой ник
    @IBAction func settingAction(_ sender: Any) {
        let alert = UIAlertController(title: "Settings name", message: "Enter player nickname. \n NickName is now: \(String(describing: playerName))", preferredStyle: .alert)
        
        // добавление поля для ввода имени
        alert.addTextField { (textField) in
            textField.placeholder = "Player name"
           }
        
        // создание кнопки отмены действия
        let cancelAction = UIAlertAction(title: "Close", style: .cancel, handler: nil)
        
        
        
        // создание кнопки сохранения изменений
        let addAction = UIAlertAction(title: "Confirm", style: .default) { (action) in
            let name = alert.textFields![0].text
            self.playerName = name
        }
        
        // добавление созданных кнопок на Alert Controller
        alert.addAction(cancelAction)
        alert.addAction(addAction)
            
        // отображение Alert Controller
        self.present(alert, animated: true, completion: nil)
    }
}


//
//  ViewController.swift
//  Task 2.1 (Controller's Life)
//
//  Created by Павел on 10/05/2019.
//  Copyright © 2019 Павел. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!{
        didSet {
            label.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addFuncView()
        ShowFuncs()
    }
    override func viewWillAppear(_ animated: Bool) {
        addFuncView()
        ShowFuncs()
    }
    override func viewDidAppear(_ animated: Bool) {
        addFuncView()
        ShowFuncs()
    }
    override func viewWillDisappear(_ animated: Bool) {
        addFuncView()
        ShowFuncs()
    }
    override func viewDidDisappear(_ animated: Bool) {
        addFuncView()
        ShowFuncs()
    }
}

//MARK: - To add function
extension ViewController {
    func addFuncView (level: String = #function) {
        arrayOfStructOfView.append (StructOfView(strFunc: "\(title ?? "nil"): \(level)",color: "\(title ?? "nil")"))
    }
}

//MARK: - To show in label
extension ViewController {
    func ShowFuncs () {
        var str: String?
        for elem in arrayOfStructOfView {
            str = (str ?? "") + "root-$> " + elem.strFunc + "\n"
        }
        guard let strProve = str else {return}
        label.text = strProve
        
        
    }
}

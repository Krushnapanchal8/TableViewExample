//
//  ViewController.swift
//  TableViewExample
//
//  Created by Mac on 19/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var nameArray: [String] = ["Ajay","Vijay","Mahesh","Prashant","Navnath","Krushna","Rishabh","Suraj","Somnath"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = nameArray[indexPath.row]
        return cell!
    }
    
    
}


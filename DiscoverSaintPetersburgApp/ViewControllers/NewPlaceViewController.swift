//
//  NewPlaceViewController.swift
//  DiscoverSaintPetersburgApp
//
//  Created by MikhaiL on 27.04.2023.
//

import UIKit

class NewPlaceViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad() 
    }
}

// MARK: - UITableViewDelegate
extension NewPlaceViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else {
            view.endEditing(true)
        }
    }
}

// MARK: - UITextFieldDelegate
extension NewPlaceViewController: UITextFieldDelegate {
    
    // Hiding keyboard by pressing Done button
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

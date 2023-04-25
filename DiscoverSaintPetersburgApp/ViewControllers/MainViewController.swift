//
//  MainViewController.swift
//  DiscoverSaintPetersburgApp
//
//  Created by MikhaiL on 24.04.2023.
//

import UIKit

final class MainViewController: UITableViewController {

    let location = Location()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - UITableViewDataSource
extension MainViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        location.places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.locationImage.image = UIImage(systemName: "mappin.square")
        cell.nameLabel.text = location.places[indexPath.row]
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension MainViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        85
    }
}

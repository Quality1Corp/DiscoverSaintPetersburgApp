//
//  MainViewController.swift
//  DiscoverSaintPetersburgApp
//
//  Created by MikhaiL on 24.04.2023.
//

import UIKit

final class MainViewController: UITableViewController {
    
    let places = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelButton(_ seque: UIStoryboardSegue) {}
}

// MARK: - UITableViewDataSource
extension MainViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Place.places.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = places[indexPath.row].name
        cell.locationLabel.text = places[indexPath.row].location
        cell.typeLabel.text = places[indexPath.row].type
        cell.locationImage.image = UIImage(named: places[indexPath.row].name)
        
        return cell
    }
}

// MARK: - UITableViewDelegate
extension MainViewController {
    
}

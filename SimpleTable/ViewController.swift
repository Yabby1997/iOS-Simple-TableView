//
//  ViewController.swift
//  SimpleTable
//
//  Created by Seunghun Yang on 2021/03/10.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    let cellIdentifier: String = "cell"
    let korean: [String] = ["가", "나", "다", "라", "마", "바", "사", "아", "자", "차", "카", "타", "파", "하"]
    let english: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var dates: [Date] = []
    
    let dateFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }()
    
    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    // MARK: - TableView DataSource Methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return korean.count
        case 1:
            return english.count
        case 2:
            return dates.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
        
        let text: String = indexPath.section == 0 ? korean[indexPath.row] : indexPath.section == 1 ? english[indexPath.row] : self.dateFormatter.string(from: dates[indexPath.row])
        
        cell.textLabel?.text = text
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "한글"
        case 1:
            return "영어"
        case 2:
            return "시간"
        default:
            return "?"
        }
    }
    
    // MARK: - IBAction
    @IBAction func touchUpAddButton(_ sender: Any) {
        dates.append(Date())
//        self.tableView.reloadData()
        self.tableView.reloadSections(IndexSet(2...2), with: UITableView.RowAnimation.automatic)
    }
}


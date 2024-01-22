//
//  LoginViewController.swift
//  hw_3_4
//
//  Created by Erma on 22/1/24.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController{
    
    var contacts:[Contact] = []
    
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private lazy var myContactsLabel = MakeView.shared.makerLabel(text: "My Contacts", textColor: UIColor.init(hex: "#000000"), textSize: 16)
    
    private lazy var backBtn = MakeView.shared.makerButton(buttonImage: UIImage(systemName: "arrow.left"),buttonTintColor: UIColor.init(hex: "#8246AF"),buttonBackgroundColor: UIColor.init(hex: "#F6F6F6"), buttonSelector: #selector(backBtnTapped(sender: )), buttonSelf: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        setupData()
    }
    private func setupData(){
        contacts = [
            Contact(image: "janeAva", name: "Jane Cooper", phoneNumber: "(239) 555-0108"),
            Contact(image: "devonAva", name: "Walter Bahr", phoneNumber: "(308) 555-0121"),
            Contact(image: "darrellAva", name: "Carlos Bocantr", phoneNumber: "(684) 555-0102"),
            Contact(image: "devonAvaSecond", name: "Paul Caligiuri", phoneNumber: "(406) 555-0120"),
            Contact(image: "courtneyAva", name: "Henry Balboa", phoneNumber: "(505) 555-0125"),
            Contact(image: "wadeAva", name: "DaMarcus Beasley", phoneNumber: "(225) 555-0118"),
            Contact(image: "bessieAva", name: "Samia Adam", phoneNumber: "(704) 555-0127"),
            Contact(image: "robertAva", name: "Michael Bradley", phoneNumber: "(480) 555-0103"),
            Contact(image: "jacobAva", name: "Marisa Abegg", phoneNumber: "(702) 555-0122"),
            Contact(image: "jennyAva", name: "Christine Abizaid", phoneNumber: "(270) 555-0117")
                   ]
    }

    private func setupUI(){
        view.backgroundColor = UIColor.init(hex: "#F6F6F6")
        
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

       
        
        view.addSubview(myContactsLabel)
        view.addSubview(backBtn)
        view.addSubview(tableView)
        
        
        
        myContactsLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(1)
            make.centerX.equalToSuperview()
        }
        backBtn.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(0)
            make.leading.equalToSuperview().offset(15)
            make.height.width.equalTo(24)
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(myContactsLabel.snp.bottom).offset(12)
            make.horizontalEdges.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
    }
    
    @objc func backBtnTapped(sender:UIButton){
        navigationController?.popViewController(animated: true)
    }

}













extension LoginViewController: UITableViewDataSource {
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
       
               cell.textLabel?.text = contacts[indexPath.row].name
               cell.textLabel?.textColor = UIColor.init(hex: "#000000")
               cell.textLabel?.font = .systemFont(ofSize: 17)
               cell.imageView?.image = UIImage(named: contacts[indexPath.row].image)
               cell.detailTextLabel?.text = contacts[indexPath.row].phoneNumber
               cell.detailTextLabel?.textColor = UIColor.init(hex: "#8A8A8D")
               cell.detailTextLabel?.font = .systemFont(ofSize: 14)
       
               return cell
               
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
}

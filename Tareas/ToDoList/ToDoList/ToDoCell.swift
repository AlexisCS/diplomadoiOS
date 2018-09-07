//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Alexis Celestino Solís on 03/09/18.
//  Copyright © 2018 Alexis Celestino Solís. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {
    var delegate: ToDoCellDelegate?
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
}

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

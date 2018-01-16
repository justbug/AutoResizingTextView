//
//  TextViewCell.swift
//  AutoResizingTextView
//
//  Created by  SNT on 2018/1/16.
//  Copyright © 2018年 justbug. All rights reserved.
//

import UIKit

class TextViewCell: UITableViewCell {

    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "輸入"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var textView: UITextView = {
        var textView = UITextView()
        textView.isScrollEnabled = false
        textView.backgroundColor = .darkGray
        textView.textColor = .white
        textView.font = UIFont.systemFont(ofSize: 17.0)
        textView.keyboardAppearance = .dark
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(titleLabel)
        self.contentView.addSubview(textView)
        
        textView.becomeFirstResponder()
        
        setReasonLabelLayout()
        setReasonTextViewLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setReasonLabelLayout() {
        titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 21).isActive = true
        
    }
    
    private func setReasonTextViewLayout() {
        textView.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 8).isActive = true
        textView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        textView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
        textView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16).isActive = true
    }
    
}

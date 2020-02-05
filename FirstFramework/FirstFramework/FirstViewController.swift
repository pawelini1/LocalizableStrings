//
//  FirstViewController.swift
//  FirstFramework
//
//  Created by Pawel Szymanski on 04/02/2020.
//  Copyright © 2020 William Hill. All rights reserved.
//

import UIKit

public class FirstViewController: UIViewController {
    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 30)
        label.textColor = .red
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            descriptionLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30.0)
        ])
        
        titleLabel.text = "FirstViewController.title.text".localized()
        descriptionLabel.text = "FirstViewController.description.text".localized()
    }
}

extension String {
    func localized(with comment: String = "") -> String {
        let mainBundleKey = "FirstFramework.\(self)"
        let mainBundleLocalization = NSLocalizedString(mainBundleKey, tableName: nil, bundle: Bundle.main, value: mainBundleKey, comment: comment)
        guard mainBundleLocalization == mainBundleKey else { return mainBundleLocalization }
        
        let frameworkBundle = Bundle(for: FirstViewController.self)
        return NSLocalizedString(self, tableName: nil, bundle: frameworkBundle, value: self, comment: comment)
    }
}

//
//  SecondaryButton.swift
//  WorkoutApp
//
//  Created by Самат Танкеев on 18.06.2023.
//

import UIKit

class SecondaryButton: UIButton {
    
    private let label: UILabel = {
        let label = UILabel()
        label.textColor = Resources.Colors.active
        label.textAlignment = .center
        label.font = Resources.Fonts.helveticaRegular(with: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let downArray: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Resources.Images.Common.downArrow
        imageView.tintColor = Resources.Colors.active
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(_ title: String) {
        label.text = title
    }
    

}
private extension SecondaryButton {
    func addViews() {
        addSubview(label)
        addSubview(downArray)
    }
    
    func layoutViews() {
        let labelConstrains = [
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: downArray.leadingAnchor)
        ]
        
        let downArrayConstrains = [
            downArray.centerYAnchor.constraint(equalTo: centerYAnchor),
            downArray.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            downArray.heightAnchor.constraint(equalToConstant: 5),
            downArray.widthAnchor.constraint(equalToConstant: 10)
        ]
        
        NSLayoutConstraint.activate(labelConstrains)
        NSLayoutConstraint.activate(downArrayConstrains)
    }
    
    func configure() {
        backgroundColor = Resources.Colors.secondary
        layer.cornerRadius = 14
        makeSystem(self)
    }
}

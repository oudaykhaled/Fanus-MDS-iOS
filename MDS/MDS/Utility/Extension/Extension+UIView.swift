//
//  File.swift
//  MDS
//
//  Created by guest1 on 5/8/21.
//

import UIKit

extension UIView {
    @discardableResult
    func fromNib<T: UIView>(named name: String? = nil) -> T? {
        let unwrappedName = name ?? String(describing: type(of: self))
        guard let contentView = Bundle(for: type(of: self))
            .loadNibNamed(unwrappedName, owner: self, options: nil)?.first as? T else {
                return nil
        }
        
        self.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.layoutAttach(to: self)
        return contentView
    }
    
    public func layoutAttach(to parentView: UIView, height: CGFloat? = nil, inset: CGFloat = 0) {
        self.translatesAutoresizingMaskIntoConstraints = false
        parentView.topAnchor.constraint(equalTo: self.topAnchor, constant: inset).isActive = true
        parentView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: inset).isActive = true
        parentView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -inset).isActive = true
        parentView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -inset).isActive = true
        
        guard let height = height else { return }
        let heightConstraint = heightAnchor.constraint(greaterThanOrEqualToConstant: height)
        heightConstraint.priority = UILayoutPriority(rawValue: 900)
        heightConstraint.isActive = true
    }
}

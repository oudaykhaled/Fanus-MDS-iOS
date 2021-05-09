//
//  MDSTextField.swift
//  MDS
//
//  Created by guest1 on 5/8/21.
//

import UIKit

public class MDSTextField: UITextField {
    
    public var style: MDSTextFieldStyle? { didSet { styleChanged() }}
    
    let padding = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    // MARK: Initializers and configuration
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        layer.cornerRadius = 10
        let defaultStyle = MDSTextFieldStyles.inputLabelStyle
        self.textColor = defaultStyle.textColor
        self.font = UIFont(name: defaultStyle.font, size: defaultStyle.textSize)
    }
    
    private func styleChanged() {
        guard let style = style else { return }
        self.textColor = style.textColor
        self.font = UIFont(name: style.font, size: style.textSize)
    }
    
    func setPlaceholder(_ text: String) {
        let style = self.style ?? MDSTextFieldStyles.inputLabelStyle
        self.attributedPlaceholder =  NSAttributedString(string: text,
                                                         attributes: [NSAttributedString.Key.foregroundColor: style.placeholderColor])
    }
    
    func setBorderColor(_ color: UIColor) {
        self.layer.borderWidth = 1
        self.layer.borderColor = color.cgColor
    }
}

//
//  InputTextField.swift
//  MDS
//
//  Created by guest1 on 5/8/21.
//
import Resolver
import UIKit

public class InputLabelTextField: UIView {
    
    public var style: InputTextFieldStyle? { didSet { styleChanged() }}
    public var textfieldChanged: ((String?) -> ())?
    
    @IBOutlet weak var textfield: MDSTextField!
    @IBOutlet weak var errorContainerView: UIView!
    @IBOutlet weak var errorMessageLabel: MDSLabel!
    @IBOutlet weak var errorMessageSecondaryLabel: MDSLabel!
    @IBOutlet weak var button: UIButton!
    
    private var colorResolver = Resolver.resolve() as ColorPaletteProtocol
    private var isValidTextfield = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        fromNib()
        errorContainerView.isHidden = true
        setStyle(InputTextFieldStyles.inputLabelStyle)
        textfield.setBorderColor(colorResolver.seperator)
        textfield.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
        textfield.addTarget(self, action: #selector(editingDidBegin), for: .editingDidBegin)
        textfield.addTarget(self, action: #selector(editingDidEnd), for: .editingDidEnd)
        
        let image = UIImage.from(local: "textfield/remove")?.withRenderingMode(.alwaysOriginal)
        button.setImage(image, for: .normal)
        button.isHidden = true
    }
    
    private func styleChanged() {
        guard let style = style else { return }
        setStyle(style)
    }
    
    @objc private func editingChanged() {
        textfieldChanged?(textfield.text)
        button.isHidden = textfield.text == nil || textfield.text?.isEmpty ?? true
    }
    
    @objc private func editingDidBegin() {
        guard isValidTextfield else { return }
        textfield.setBorderColor(colorResolver.primary)
    }
    
    @objc private func editingDidEnd() {
        guard isValidTextfield else { return }
        textfield.setBorderColor(colorResolver.seperator)
    }
    
    private func setStyle(_ style: InputTextFieldStyle) {
        textfield.style = style.textfieldStyle
        errorMessageLabel.style = style.errorStyle
        errorMessageSecondaryLabel.style = style.errorStyle
//        errorMessageLabel.textColor = colorResolver.danger
//        errorMessageSecondaryLabel.textColor = colorResolver.danger
    }
    
    @IBAction func didPressButton(_ sender: UIButton) {
        textfield.text = ""
        button.isHidden = true
        removeErrors()
    }
    
    public func setPlaceholder(_ text: String) {
        textfield.setPlaceholder(text)
    }
    
    public func setErros(errorMessage: String, errorMessageSecondary: String? = nil) {
        isValidTextfield = false
        errorContainerView.isHidden = false
        errorMessageLabel.text = errorMessage
        errorMessageSecondaryLabel.text = errorMessageSecondary
        textfield.setBorderColor(colorResolver.danger)
    }
    
    public func removeErrors() {
        isValidTextfield = true
        errorContainerView.isHidden = true
        textfield.setBorderColor(colorResolver.primary)
    }
}

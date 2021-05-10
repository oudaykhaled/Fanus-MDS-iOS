//
//  InputPasswordTextfield.swift
//  MDS
//
//  Created by guest1 on 5/8/21.
//
import Resolver
import UIKit

public class InputPasswordTextfield: UIView {
    
    public var style: InputTextFieldStyle? { didSet { styleChanged() }}
    public var textfieldChanged: ((String?) -> ())?

    @IBOutlet weak var textfield: MDSTextField!
    @IBOutlet weak var errorContainerView: UIView!
    @IBOutlet weak var errorMessageLabel: MDSLabel!
    @IBOutlet weak var errorMessageSecondaryLabel: MDSLabel!
    @IBOutlet weak var button: UIButton!
    
    private var colorResolver = Resolver.resolve() as ColorPaletteProtocol
    private var isSecureTextEntry = true { didSet { secureChanged() }}
    
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
        let image = UIImage.from(local: "textfield/eye")?.withRenderingMode(.alwaysOriginal)
        button.setImage(image, for: .normal)
        textfield.setBorderColor(colorResolver.seperator)
        button.alpha = 0.5
        textfield.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
        textfield.addTarget(self, action: #selector(editingDidBegin), for: .editingDidBegin)
        textfield.addTarget(self, action: #selector(editingDidEnd), for: .editingDidEnd)
        isSecureTextEntry = true
    }
    
    private func styleChanged() {
        guard let style = style else { return }
        setStyle(style)
    }
    
    private func secureChanged() {
        textfield.isSecureTextEntry = isSecureTextEntry
        let image = UIImage.from(local: isSecureTextEntry ? "textfield/visible" : "textfield/invisible")?.withRenderingMode(.alwaysOriginal)
        button.setImage(image, for: .normal)
    }
    
    @objc private func editingChanged() {
        textfieldChanged?(textfield.text)
    }
    
    @objc private func editingDidBegin() {
        button.alpha = 1
    }
    
    @objc private func editingDidEnd() {
        button.alpha = 0.5
    }
    
    private func setStyle(_ style: InputTextFieldStyle) {
        textfield.style = style.textfieldStyle
        errorMessageLabel.style = style.errorStyle
        errorMessageSecondaryLabel.style = style.errorStyle
        errorMessageLabel.textColor = colorResolver.danger
        errorMessageSecondaryLabel.textColor = colorResolver.danger
    }
    
    @IBAction func didPressButton(_ sender: UIButton) {
        isSecureTextEntry.toggle()
    }
    
    public func setPlaceholder(_ text: String) {
        textfield.setPlaceholder(text)
    }
    
    public func setErros(errorMessage: String, errorMessageSecondary: String? = nil) {
        errorContainerView.isHidden = false
        errorMessageLabel.text = errorMessage
        errorMessageSecondaryLabel.text = errorMessageSecondary
        textfield.setBorderColor(colorResolver.danger)
    }
    
    public func removeErrors() {
        errorContainerView.isHidden = true
        textfield.setBorderColor(colorResolver.surfaceDisabled)
    }
}







protocol HasApply { }

extension HasApply {
    func apply(closure:(Self) -> ()) -> Self {
        closure(self)
        return self
    }
}

extension NSObject: HasApply { }

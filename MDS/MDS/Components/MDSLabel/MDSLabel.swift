//
//  MDSLabel.swift
//  MDS
//
//  Created by guest1 on 5/6/21.
//

import UIKit

open class MDSLabel: UILabel {
    
    public var style: MDSLabelStyle? { didSet { styleChanged() }}
    
    // MARK: - Initialization
    public init() {
        super.init(frame: .zero)
        self.commonInit()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    
    private func commonInit() {
        let defaultStyle = MDSLabelStyles.textAppearanceBody1
        textColor = defaultStyle.textColor
        font = UIFont(name: defaultStyle.font, size: defaultStyle.size)
    }
    
    private func styleChanged() {
        guard let style = style else { return }
        textColor = style.textColor
        font = UIFont(name: style.font, size: style.size)
    }
}

//
//  TagStackRepresentable.swift
//  task01
//
//  Created by Andrey on 3/8/23.
//

import SwiftUI
import UIKit

struct TagStackRepresentable: UIViewRepresentable {
    func makeUIView(context: Context) -> TagStackView {
        TagStackView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        uiView.fill(by: ["it's", "some", "thing", "awesome"]);
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

class TagStackView: UIStackView {
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        spacing = Constants.spacing
    }
    
    // MARK: - Public
    func fill(by tags: [String]) {
        clear()
        
        tags.forEach { tag in
            addArrangedSubview(addTagView(with: tag))
        }
        
        addArrangedSubview(UIView())
    }
    
    func clear() {
//        removeAllArrangedSubviews()
    }
    
    // MARK: - Private
    func addTagView(with text: String) -> UIView {
        return LabelWithBackground(with: text.uppercased(),
                                   textColor: Constants.tagLabelTextColor,
                                   backgroundColor: Constants.tagBackgroundColor,
//                                   font: Constants.tagLabelFont,
                                   verticalSpacing: Constants.tagLabelTopBottom,
                                   horizontalSpacing: Constants.tagLabelLeadingTrailing)
    }
}

extension TagStackView {
    struct Constants {
        static let spacing: CGFloat = 7
        
//        static let tagLabelFont: UIFont = .rubik(fontSize: .verySmall, fontWeight: .medium)
        static let tagLabelTextColor: UIColor = .white
        static let tagBackgroundColor: UIColor = .purple
        static let tagLabelTopBottom: CGFloat = 3
        static let tagLabelLeadingTrailing: CGFloat = 8
    }
}

class LabelWithBackground: UIView {
    // MARK: - Properties
    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.font = .rubik()
        label.textColor = .black
        label.numberOfLines = 1
        return label
    }()
    
    // MARK: - Initializers
    init(with text: String = "", textColor: UIColor = .black, backgroundColor: UIColor = .lightGray, verticalSpacing: CGFloat = 3, horizontalSpacing: CGFloat = 10) {
        super.init(frame: .zero)
        
        setupLabel(text: text, color: textColor)
        setupView(backgroundColor: backgroundColor)
        setupConstraints(verticalSpacing: verticalSpacing, horizontalSpacing: horizontalSpacing)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if layer.cornerRadius != bounds.height / 2 {
            layer.cornerRadius = bounds.height / 2
        }
    }
    
    // MARK: - Layout
    private func setupLabel(text: String, color: UIColor) {
        label.text = text
        label.textColor = color
//        label.font = font
    }
    
    private func setupView(backgroundColor: UIColor) {
        translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = backgroundColor
        layer.masksToBounds = true

        addSubview(label)
    }
    
    private func setupConstraints(verticalSpacing: CGFloat, horizontalSpacing: CGFloat) {
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalSpacing),
            label.topAnchor.constraint(equalTo: topAnchor, constant: verticalSpacing),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalSpacing),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -verticalSpacing)
        ])
    }
}

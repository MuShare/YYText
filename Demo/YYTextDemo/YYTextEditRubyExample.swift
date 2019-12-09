//
//  YYTextEditRubyExample.swift
//  YYTextDemo
//
//  Created by yin.yan on 2019/12/09.
//  Copyright © 2019 ibireme. All rights reserved.
//

import UIKit

@objc(YYTextEditRubyExample)
@objcMembers
class YYTextEditRubyExample: UIViewController {
    private lazy var textView: YYTextView = {
        let textView = YYTextView(frame: view.bounds)
        view.addSubview(textView)
        return textView
    }()

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        let text = NSMutableAttributedString(string: "抗生物質などの薬を使いすぎると")
        // こうせいぶっしつ
        var annotation = YYTextRubyAnnotation()
        annotation.textBefore = "こう"
        text.yy_setTextRubyAnnotation(annotation, range: NSRange(location: 0, length: 1))

        annotation = YYTextRubyAnnotation()
        annotation.textBefore = "せい"
        text.yy_setTextRubyAnnotation(annotation, range: NSRange(location: 1, length: 1))

        annotation = YYTextRubyAnnotation()
        annotation.textBefore = "ぶっ"
        text.yy_setTextRubyAnnotation(annotation, range: NSRange(location: 2, length: 1))

        annotation = YYTextRubyAnnotation()
        annotation.textBefore = "しつ"
        text.yy_setTextRubyAnnotation(annotation, range: NSRange(location: 3, length: 1))
        // くすり
        annotation = YYTextRubyAnnotation()
        annotation.textBefore = "くすり"
        text.yy_setTextRubyAnnotation(annotation, range: NSRange(location: 7, length: 1))
        // つか
        annotation = YYTextRubyAnnotation()
        annotation.textBefore = "くすり"
        text.yy_setTextRubyAnnotation(annotation, range: NSRange(location: 9, length: 1))

        textView.attributedText = text
    }
}

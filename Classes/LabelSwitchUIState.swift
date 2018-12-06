//
//  LabelSwitchUIState.swift
//  CPLabelSwitch
//
//  Created by Cristian Petra on 06/12/2018.
//

import Foundation
import UIKit

struct LabelSwitchPartState {
    var backMaskFrame: CGRect = .zero
}

struct LabelSwitchUIState {
    var backgroundColor: UIColor = .clear
    var circleFrame:CGRect = .zero
    var leftPartState  = LabelSwitchPartState()
    var rightPartState = LabelSwitchPartState()
}


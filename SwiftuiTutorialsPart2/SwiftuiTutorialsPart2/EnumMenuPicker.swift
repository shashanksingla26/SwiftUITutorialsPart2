//
//  EnumMenuPicker.swift
//  SwiftuiTutorialsPart2
//
//  Created by Shashank on 1/16/23.
//

import SwiftUI
import AVFoundation

struct EnumMenuPicker<T: Hashable & CaseIterable, V: View>: View {
    @Binding var selected: T
    var title: String? = nil
    let mapping: (T) -> V
    
    var body: some View {
        VStack {
            if let title = title {
                Text(title)
                    .foregroundColor(.primary)
            }
            menu
        }
    }
    
    var menu: some View {
        Menu(content: {
            ForEach(Array(T.allCases), id: \.self) { item in
                Button(action: {
                    selected = item
                }, label: {
                    view(for: item)
                })
            }
        }, label: {
            mapping(selected)
        })
    }
    
    @ViewBuilder func view(for item: T) -> some View {
        if selected == item {
            HStack {
                Image(systemName: "checkmark")
                self.mapping(item)
            }
        } else {
            self.mapping(item)
        }
    }
}

struct EnumMenuPicker_Previews: PreviewProvider {
    static var previews: some View {
        EnumMenuPicker(selected: .constant(VideoQuality.noChange), title: "") { item in
            Text(item.name)
        }
    }
}

enum VideoQuality: CaseIterable {
    case noChange
    case low
    case medium
    case high
    
    var name: String {
        switch self {
        case .noChange:
            return "Same as source"
        case .low:
            return "Low"
        case .high:
            return "High"
        case .medium:
            return "Medium"
        }
    }
    
    var value: String {
        switch self {
        case .noChange:
            return AVAssetExportPresetPassthrough
        case .low:
            return AVAssetExportPresetLowQuality
        case .high:
            return AVAssetExportPresetHighestQuality
        case .medium:
            return AVAssetExportPresetMediumQuality
        }
    }
}

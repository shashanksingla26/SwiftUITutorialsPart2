//
//  GaugeTutorial.swift
//  SwiftuiTutorialsPart2
//
//  Created by Shashank on 1/2/23.
//

import SwiftUI

struct GaugeTutorial: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                // Gauge with current value and the title label
                Gauge(value: 0.5) {
                    Image(systemName: "gauge.medium")
                           .font(.system(size: 30.0))
                } currentValueLabel: {
                    HStack {
                        Image(systemName: "gauge.high")
                        Text(0.7.formatted(.percent))
                    }
                }
                
                // Gauge with current value, title label, minValue, maxValue and custom range
                Gauge(value: 50, in: 0...100) {
                    Image(systemName: "gauge.medium")
                           .font(.system(size: 30.0))
                } currentValueLabel: {
                    Image(systemName: "gauge.high")
                    Text(50.formatted(.percent))
                } minimumValueLabel: {
                    Text(0.formatted(.percent))
                } maximumValueLabel: {
                    Text(100.formatted(.percent))
                }
                
                // Gauge with current value, title label, minValue, maxValue and custom range and custom color

                Gauge(value: 50, in: 0...100) {
                    Image(systemName: "gauge.medium")
                           .font(.system(size: 30.0))
                } currentValueLabel: {
                    Image(systemName: "gauge.high")
                    Text(50.formatted(.percent))
                } minimumValueLabel: {
                    Text(0.formatted(.percent))
                } maximumValueLabel: {
                    Text(100.formatted(.percent))
                }
                .tint(.red)
                
                // Gauge with current value, title label, minValue, maxValue, accessoryLinearc style and custom range

                Gauge(value: 50, in: 0...100) {
                    Text("")
                } currentValueLabel: {
                    Text(50.formatted(.percent))
                } minimumValueLabel: {
                    Text(0.formatted(.percent))
                } maximumValueLabel: {
                    Text(100.formatted(.percent))
                }
                .gaugeStyle(.accessoryLinear)
                .tint(.red)
                
                // Gauge with current value, title label, minValue, maxValue, accessoryLinearCapacity style and custom range

                
                Gauge(value: 90, in: 0...100) {
                    Image(systemName: "gauge.medium")
                           .font(.system(size: 20.0))
                } currentValueLabel: {
                    Text(50.formatted(.percent))
                } minimumValueLabel: {
                    Text(0.formatted(.percent))
                } maximumValueLabel: {
                    Text(100.formatted(.percent))
                }
                .gaugeStyle(.accessoryLinearCapacity)

                
                // Gauge with current value, title label, minValue, maxValue, accessoryCircular and custom range
                
                Gauge(value: 50, in: 0...100) {
                    Text("")
                } currentValueLabel: {
                    Text(50.formatted(.percent))
                } minimumValueLabel: {
                    Text(0.formatted(.percent))
                } maximumValueLabel: {
                    Text(100.formatted(.percent))
                }
                .gaugeStyle(.accessoryCircular)
                .tint(Gradient(colors: [.green, .yellow, .orange, .red, .pink]))
                .scaleEffect(1.5)
                
                // Gauge with current value, title label, minValue, maxValue, style accessoryCircularCapacity and custom range
                
                Gauge(value: 90, in: 0...100) {
                    Text("")
                } currentValueLabel: {
                    Text(50.formatted(.percent))
                }
                .gaugeStyle(.accessoryCircularCapacity)
                .tint(.red)
                .scaleEffect(2)
                .frame(width: 100, height: 100)
                
                //Replicating Activity Progress Ring
                
                ZStack {
                    Gauge(value: 75, in: 0...100) {
                        Text("")
                    }
                    .scaleEffect(2)
                    .gaugeStyle(.accessoryCircularCapacity)
                    .tint(.red)
                    
                    Gauge(value: 50, in: 0...100) {
                        Text("")
                    }
                    .scaleEffect(1.5)
                    .gaugeStyle(.accessoryCircularCapacity)
                    .tint(.green)
                    
                    Gauge(value: 45, in: 0...100) {
                        Text("")
                    }
                    .scaleEffect(1)
                    .gaugeStyle(.accessoryCircularCapacity)
                    .tint(.blue)
                }
                .frame(height: 110)

            }
            .padding(10)
        }
    }
}

struct GaugeTutorial_Previews: PreviewProvider {
    static var previews: some View {
        GaugeTutorial()
    }
}

//import UIKit

class SmartDevice {
    var deviceName: String
    var isOn: Bool

    init(deviceName: String, isOn: Bool) {
        self.deviceName = deviceName
        self.isOn = isOn
    }

    func togglePower() {
        isOn.toggle()
        print("\(deviceName) is now \(isOn ? "ON" : "OFF")")
    }

    func deviceInfo() {
        print("Device: \(deviceName) | Power: \(isOn)")
    }
}

class SmartLight: SmartDevice {
    var brightness: Int

    init(deviceName: String, isOn: Bool, brightness: Int) {
        self.brightness = brightness
        super.init(deviceName: deviceName, isOn: isOn)
    }

    override func deviceInfo() {
        print("Device: \(deviceName) | Power: \(isOn) | Brightness: \(brightness)%")
    }
}

class SmartSpeaker: SmartDevice {
    var volume: Int

    init(deviceName: String, isOn: Bool, volume: Int) {
        self.volume = volume
        super.init(deviceName: deviceName, isOn: isOn)
    }

    override func deviceInfo() {
        print("Device: \(deviceName) | Power: \(isOn) | Volume: \(volume)%")
    }
}

protocol Adjustable {
    func increaseLevel()
    func decreaseLevel()
}

extension Adjustable {
    func increaseLevel() {
        print("Level adjusted")
    }

    func decreaseLevel() {
        print("Level adjusted")
    }
}

extension SmartDevice {
    var statusMessage: String {
        return "Status → \(deviceName) is \(isOn ? "ON" : "OFF")"
    }
}

let light = SmartLight(deviceName: "Living Room Light", isOn: false, brightness: 70)
let speaker = SmartSpeaker(deviceName: "Kitchen Speaker", isOn: true, volume: 40)

extension SmartLight: Adjustable {}
extension SmartSpeaker: Adjustable {}

light.togglePower()
light.deviceInfo()
light.increaseLevel()
print(light.statusMessage)

speaker.deviceInfo()
speaker.increaseLevel()
print(speaker.statusMessage)

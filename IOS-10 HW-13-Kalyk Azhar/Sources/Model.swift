import Foundation
import UIKit

struct Model {
    var image: UIImage
    var iconColor: UIColor?
    var title: String
    var optionType: OptionType
    var backgroundColor: UIColor?
}

enum OptionType {
    case general
    case switched
    case described(state: State)
    case notificated
}

enum State {
    case notConnected
    case on
    case none
}
extension Model {
    static var allModels: [[Model]] {
        return [
            [
                Model(image: UIImage(systemName: "airplane") ?? UIImage(), iconColor: .white, title: "Авиарежим", optionType: .switched, backgroundColor: .systemOrange),
                Model(image: UIImage(systemName: "wifi") ?? UIImage(), iconColor: .white, title: "Wi-Fi", optionType: .described(state: .notConnected), backgroundColor: .systemBlue),
                Model(image: UIImage(named: "bluetooth")?.withTintColor(.white) ?? UIImage(), iconColor: .white, title: "Bluetooth", optionType: . described(state: .on), backgroundColor: .systemBlue),
                Model(image: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(), iconColor: .white, title: "Сотовая связь", optionType: .general, backgroundColor: .systemGreen),
                Model(image: UIImage(systemName: "personalhotspot") ?? UIImage(), iconColor: .white, title: "Режим модема", optionType: .described(state: .none), backgroundColor: .systemGreen),
                Model(image: UIImage(named: "vpn")?.withTintColor(.white) ?? UIImage(), iconColor: .white, title: "VPN", optionType: .switched, backgroundColor: .systemBlue)
            ],
            [
                Model(image: UIImage(systemName: "bell") ?? UIImage(), iconColor: .white, title: "Уведомления", optionType: .general, backgroundColor: .systemRed),
                Model(image: UIImage(systemName: "speaker.wave.3") ?? UIImage(), iconColor: .white,title: "Звуки, тактильные сигналы", optionType: .general, backgroundColor: .systemPink),
                Model(image: UIImage(systemName: "moon.fill") ?? UIImage(), iconColor: .white,title: "Не беспокоить", optionType: .general, backgroundColor: .systemIndigo),
                Model(image: UIImage(systemName: "hourglass") ?? UIImage(), iconColor: .white,title: "Экранное время", optionType: .general, backgroundColor: .systemIndigo)
            ],
            [
                Model(image: UIImage(systemName: "gearshape") ?? UIImage(), iconColor: .white,title: "Основное", optionType: .notificated, backgroundColor: .systemGray2),
                Model(image: UIImage(systemName: "switch.2") ?? UIImage(), iconColor: .white,title: "Пункт управления", optionType: .general, backgroundColor: .systemGray2),
                Model(image: UIImage(systemName: "textformat.size") ?? UIImage(), iconColor: .white,title: "Экран и яркость", optionType: .general, backgroundColor: .systemBlue),
                Model(image: UIImage(systemName: "house.fill") ?? UIImage(), iconColor: .white,title: "Экран Домой", optionType: .general, backgroundColor: .systemBlue),
                Model(image: UIImage(systemName: "figure.wave") ?? UIImage(), iconColor: .white,title: "Универсальный доступ", optionType: .general, backgroundColor: .systemBlue),
                Model(image: UIImage(named: "wallpaper")?.withTintColor(.white) ?? UIImage(), iconColor: .white,title: "Обои", optionType: .general, backgroundColor: .systemCyan),
                Model(image: UIImage(named: "siri") ?? UIImage(), title: "Siri и Поиск", optionType: .general, backgroundColor: nil),
                Model(image: UIImage(systemName: "faceid") ?? UIImage(), iconColor: .white,title: "Face ID и код-пароль", optionType: .general, backgroundColor: .systemGreen),
                Model(image: UIImage(systemName: "sos") ?? UIImage(), iconColor: .white,title: "Экстренный вызов SOS", optionType: .general, backgroundColor: .systemRed),
                Model(image: UIImage(named: "virus")?.withTintColor(.white) ?? UIImage(), iconColor: .white,title: "Уведомления о контакте", optionType: .general, backgroundColor: .red),
                Model(image: UIImage(systemName: "battery.100") ?? UIImage(), iconColor: .white,title: "Аккумулятор", optionType: .general, backgroundColor: .systemGreen),
                Model(image: UIImage(systemName: "hand.raised.fill") ?? UIImage(), iconColor: .white,title: "Конфиденциальность и безопасность", optionType: .general, backgroundColor: .systemBlue)
            ]
        ]
    }
}

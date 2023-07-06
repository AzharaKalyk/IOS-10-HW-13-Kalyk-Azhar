import Foundation
import UIKit

struct Model {
    var image: UIImage
    var iconColor: UIColor
    var title: String
    var optionType: OptionType
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
                Model(image: UIImage(systemName: "airplane") ?? UIImage(), iconColor: .systemOrange, title: "Авиарежим", optionType: .switched),
                Model(image: UIImage(systemName: "wifi") ?? UIImage(), iconColor: .systemOrange, title: "Wi-Fi", optionType: .described(state: .notConnected)),
                Model(image: UIImage(named: "bluetooth") ?? UIImage(), iconColor: .systemOrange, title: "Bluetooth", optionType: . described(state: .on)),
                Model(image: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(), iconColor: .systemOrange, title: "Сотовая связь", optionType: .general),
                Model(image: UIImage(systemName: "personalhotspot") ?? UIImage(), iconColor: .systemOrange, title: "Режим модема", optionType: .described(state: .none)),
                Model(image: UIImage(named: "vpn") ?? UIImage(), iconColor: .systemOrange, title: "VPN", optionType: .switched)
            ],
            [
                Model(image: UIImage(systemName: "bell") ?? UIImage(), iconColor: .systemOrange, title: "Уведомления", optionType: .general),
                Model(image: UIImage(systemName: "speaker.wave.3") ?? UIImage(), iconColor: .systemOrange,title: "Звуки, тактильные сигналы", optionType: .general),
                Model(image: UIImage(systemName: "moon.fill") ?? UIImage(), iconColor: .systemOrange,title: "Не беспокоить", optionType: .general),
                Model(image: UIImage(systemName: "hourglass") ?? UIImage(), iconColor: .systemOrange,title: "Экранное время", optionType: .general)
            ],
            [
                Model(image: UIImage(systemName: "gearshape") ?? UIImage(), iconColor: .systemOrange,title: "Основное", optionType: .notificated),
                Model(image: UIImage(systemName: "switch.2") ?? UIImage(), iconColor: .systemOrange,title: "Пункт управления", optionType: .general),
                Model(image: UIImage(systemName: "textformat.size") ?? UIImage(), iconColor: .systemOrange,title: "Экран и яркость", optionType: .general),
                Model(image: UIImage(systemName: "house.fill") ?? UIImage(), iconColor: .systemOrange,title: "Экран Домой", optionType: .general),
                Model(image: UIImage(systemName: "figure.wave") ?? UIImage(), iconColor: .systemOrange,title: "Универсальный доступ", optionType: .general),
                Model(image: UIImage(named: "wallpaper") ?? UIImage(), iconColor: .systemOrange,title: "Обои", optionType: .general),
                Model(image: UIImage(named: "siri") ?? UIImage(), iconColor: .systemOrange,title: "Siri и Поиск", optionType: .general),
                Model(image: UIImage(systemName: "faceid") ?? UIImage(), iconColor: .systemOrange,title: "Face ID и код-пароль", optionType: .general),
                Model(image: UIImage(systemName: "sos") ?? UIImage(), iconColor: .systemOrange,title: "Экстренный вызов SOS", optionType: .general),
                Model(image: UIImage(named: "virus") ?? UIImage(), iconColor: .systemOrange,title: "Уведомления о контакте", optionType: .general),
                Model(image: UIImage(systemName: "battery.100") ?? UIImage(), iconColor: .systemOrange,title: "Аккумулятор", optionType: .general),
                Model(image: UIImage(systemName: "hand.raised.app.fill") ?? UIImage(), iconColor: .systemOrange,title: "Конфиденциальность и безопасность", optionType: .general)
            ]
        ]
    }
}

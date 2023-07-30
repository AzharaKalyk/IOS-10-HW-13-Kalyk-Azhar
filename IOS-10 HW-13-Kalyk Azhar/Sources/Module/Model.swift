import Foundation
import UIKit

struct Model {
    var image: UIImage
    var iconColor: UIColor?
    var title: String
    var backgroundColor: UIColor?
    var cellType: CellType
}

enum CellType {
    case switchCell
    case detailCell
}

extension Model {
    static var allModels: [[Model]] {
        return [
            [
                Model(image: UIImage(systemName: "airplane") ?? UIImage(), iconColor: .white, title: "Авиарежим",  backgroundColor: .systemOrange, cellType: .switchCell),
                Model(image: UIImage(systemName: "wifi") ?? UIImage(), iconColor: .white, title: "Wi-Fi", backgroundColor: .systemBlue, cellType: .detailCell),
                Model(image: UIImage(named: "bluetooth")?.withTintColor(.white) ?? UIImage(), iconColor: .white, title: "Bluetooth",  backgroundColor: .systemBlue, cellType: .detailCell),
                Model(image: UIImage(systemName: "antenna.radiowaves.left.and.right") ?? UIImage(), iconColor: .white, title: "Сотовая связь", backgroundColor: .systemGreen, cellType: .detailCell),
                Model(image: UIImage(systemName: "personalhotspot") ?? UIImage(), iconColor: .white, title: "Режим модема", backgroundColor: .systemGreen, cellType: .detailCell),
                Model(image: UIImage(named: "vpn")?.withTintColor(.white) ?? UIImage(), iconColor: .white, title: "VPN", backgroundColor: .systemBlue, cellType: .switchCell)
            ],
            [
                Model(image: UIImage(systemName: "bell") ?? UIImage(), iconColor: .white, title: "Уведомления", backgroundColor: .systemRed, cellType: .detailCell),
                Model(image: UIImage(systemName: "speaker.wave.3") ?? UIImage(), iconColor: .white,title: "Звуки, тактильные сигналы",  backgroundColor: .systemPink, cellType: .detailCell),
                Model(image: UIImage(systemName: "moon.fill") ?? UIImage(), iconColor: .white,title: "Не беспокоить", backgroundColor: .systemIndigo, cellType: .detailCell),
                Model(image: UIImage(systemName: "hourglass") ?? UIImage(), iconColor: .white,title: "Экранное время", backgroundColor: .systemIndigo, cellType: .detailCell)
            ],
            [
                Model(image: UIImage(systemName: "gearshape") ?? UIImage(), iconColor: .white,title: "Основное", backgroundColor: .systemGray2, cellType: .detailCell),
                Model(image: UIImage(systemName: "switch.2") ?? UIImage(), iconColor: .white,title: "Пункт управления", backgroundColor: .systemGray2, cellType: .detailCell),
                Model(image: UIImage(systemName: "textformat.size") ?? UIImage(), iconColor: .white,title: "Экран и яркость", backgroundColor: .systemBlue, cellType: .detailCell),
                Model(image: UIImage(systemName: "house.fill") ?? UIImage(), iconColor: .white,title: "Экран Домой", backgroundColor: .systemBlue, cellType: .detailCell),
                Model(image: UIImage(systemName: "figure.wave") ?? UIImage(), iconColor: .white,title: "Универсальный доступ",  backgroundColor: .systemBlue, cellType: .detailCell),
                Model(image: UIImage(named: "wallpaper")?.withTintColor(.white) ?? UIImage(), iconColor: .white,title: "Обои",  backgroundColor: .systemCyan, cellType: .detailCell),
                Model(image: UIImage(named: "siri") ?? UIImage(), title: "Siri и Поиск", backgroundColor: nil, cellType: .detailCell),
                Model(image: UIImage(systemName: "faceid") ?? UIImage(), iconColor: .white,title: "Face ID и код-пароль",  backgroundColor: .systemGreen, cellType: .detailCell),
                Model(image: UIImage(systemName: "sos") ?? UIImage(), iconColor: .white,title: "Экстренный вызов SOS", backgroundColor: .systemRed, cellType: .detailCell),
                Model(image: UIImage(named: "virus")?.withTintColor(.white) ?? UIImage(), iconColor: .white,title: "Уведомления о контакте",  backgroundColor: .red, cellType: .detailCell),
                Model(image: UIImage(systemName: "battery.100") ?? UIImage(), iconColor: .white,title: "Аккумулятор", backgroundColor: .systemGreen, cellType: .detailCell),
                Model(image: UIImage(systemName: "hand.raised.fill") ?? UIImage(), iconColor: .white,title: "Конфиденциальность и безопасность",  backgroundColor: .systemBlue, cellType: .detailCell)
            ]
        ]
    }
}

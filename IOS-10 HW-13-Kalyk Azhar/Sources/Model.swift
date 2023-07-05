//
//  Model.swift
//  IOS-10 HW-13-Kalyk Azhar
//
//  Created by Azhar Kalyk on 05.07.2023.
//

import Foundation

struct Model {
    var title: String
}

extension Model {
    static var allModels: [[Model]] {
        return [
            [
                Model(title: "Авиарежим"),
                Model(title: "Wi-Fi"),
                Model(title: "Bluetooth"),
                Model(title: "Сотовая связь"),
                Model(title: "Режим модема"),
                Model(title: "VPN")
            ],
            
            [
                Model(title: "Уведомления"),
                Model(title: "Звуки, тактильные сигналы"),
                Model(title: "Не беспокоить"),
                Model(title: "Экранное время")
            ],
            
            [
                Model(title: "Основное"),
                Model(title: "Пункт управления"),
                Model(title: "Экран и яркость"),
                Model(title: "Экран Домой"),
                Model(title: "Универсальный доступ"),
                Model(title: "Обои"),
                Model(title: "Siri и Поиск"),
                Model(title: "Face ID и код-пароль"),
                Model(title: "Экстренный вызов SOS"),
                Model(title: "Уведомления о контакте"),
                Model(title: "Аккумулятор"),
                Model(title: "Конфидециальность и безопасность")]
        ]
    }
}

//
//  Extension.swift
//  ThNews
//
//  Created by Eser Kucuker on 13.08.2022.
//

import Foundation

public extension Encodable {
  var dictionary: [String: String] {
    guard let data = try? JSONEncoder().encode(self) else { return [:] }
    return (try? JSONSerialization.jsonObject(with: data,
                                              options: .allowFragments)).flatMap { $0 as? [String: String] } ?? [:]
  }
}

extension String {

    func fromUTCToLocalDateTime() -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
            dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
            var formattedString = self.replacingOccurrences(of: "Z", with: "")
            if let lowerBound = formattedString.range(of: ".")?.lowerBound {
                formattedString = "\(formattedString[..<lowerBound])"
            }

            guard let date = dateFormatter.date(from: formattedString) else {
                return self
            }

            dateFormatter.dateFormat = "EEE, dd MMM yyyy"
            dateFormatter.timeZone = TimeZone.current
            return dateFormatter.string(from: date)
        }
}

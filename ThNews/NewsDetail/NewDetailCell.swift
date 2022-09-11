//
//  NewDetailCell.swift
//  ThNews
//
//  Created by Eser Kucuker on 23.08.2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct NewDetailCell: View {
    let item: NewsDetail.Fetch.ViewModel
    
    var body: some View {
        VStack{ WebImage(url: URL(string:item.image ?? ""))
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
            .padding()
        VStack{
            Text(item.title ?? "")
                .font(.title)
                .multilineTextAlignment(.leading)
                .lineLimit(3)
                .padding(.bottom)
            Text(item.description ?? "")
                .multilineTextAlignment(.leading)
                .padding([.top, .leading])
        }
            Spacer()
        }
        .padding()
    }
}

struct NewDetailCell_Previews: PreviewProvider {
    static var previews: some View {
        NewDetailCell(item: NewsDetail.Fetch.ViewModel( image: "https://www.technopat.net/wp-content/uploads/2022/08/Gigabyte-12.5-GBsn-Hiza-Ulasan-PCIe-5.0-SSDlerini-Tanitti-Aorus-Gen5-10000.jpg", title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"))
    }
}

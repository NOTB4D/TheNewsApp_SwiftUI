//
//  NewsCell.swift
//  ThNews
//
//  Created by Eser Kucuker on 21.08.2022.
//

import SwiftUI
import SDWebImageSwiftUI


struct NewsCell: View {
    let item: News.Fetch.ViewModel.New
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0){
            WebImage(url: URL(string:item.image ?? ""))
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300.0 , height: 200.0)
                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
            Text(item.title ?? "")
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment:.leading)
            Text(item.date ?? "")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
        }
        .padding(.all, 20.0)
        .frame(height: 350.0)
        .background()
        .cornerRadius(30)
        .shadow(color: .gray, radius: 10, x: 0, y: 10)
        
    }
}

struct NewsCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell(item: News.Fetch.ViewModel.New(date: "22:10:2022", title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry", image: "https://www.technopat.net/wp-content/uploads/2022/08/Gigabyte-12.5-GBsn-Hiza-Ulasan-PCIe-5.0-SSDlerini-Tanitti-Aorus-Gen5-10000.jpg"))
    }
}

//
//  Sabah.swift
//  PagerTabs
//
//  Created by Ayhan on 17.05.2022.
//

import SwiftUI

struct Sabah: View {
    @State var _albums: [Album] = Morning
    var body: some View {
        ScrollView {
            ForEach($_albums){$album in
                HStack(alignment: .center) {
                    VStack(alignment: .leading){
                        Text(album.surahName)
                            .foregroundColor(.white)
                            .font(.callout)
                            .padding()
                        HStack(spacing: 12){
                                Button {
                                    album.isLiked.toggle()
                                }label: {
                                    Image(systemName: album.isLiked ? "star" : "star.fill")
                                        .font(.title3)
                                        .foregroundColor(album.isLiked ? Color.gray : .yellow)
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text(album.riciterImage)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                       }
                        .padding()
                    }
                }
                .background(Color(red: 32/255, green: 36/255, blue: 38/255))
                .mask(RoundedRectangle(cornerRadius: 20))
                .padding()
            }
        }
    }
}
struct Sabah_Previews: PreviewProvider {
    static var previews: some View {
        Sabah()
            .preferredColorScheme(.dark)
    }
}
//
//  HomeView.swift
//  DoctorsAppointment
//
//  Created by Agakerim Hemidzade on 05.08.26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Upcoming Appointments")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                }

                .foregroundStyle(.white)
                .font(.system(size: 16))
                .padding(.horizontal, 16)

                HStack(spacing: 16) {
                    VStack(alignment: .leading) {
                        Image(systemName: "calendar")
                            .font(.system(size: 24))

                        Text("Mon, 11 June 2024")
                            .bold()
                            .font(.system(size: 14))
                            .padding(.top, 12)

                        Text("Appointments Date")
                            .font(.system(size: 10))

                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)

                    .background(Color.white.opacity(0.09))
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                    VStack(alignment: .leading) {
                        Image(systemName: "timer")
                            .font(.system(size: 24))

                        Text("08:00 - 12:00")
                            .bold()
                            .font(.system(size: 14))
                            .padding(.top, 12)
                        Text("Appointments Time")
                            .font(.system(size: 10))

                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(Color.white.opacity(0.09))
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                }
                .padding(.top, 6)
                .padding(.horizontal, 16)
                .foregroundStyle(.white)
                HStack {
                    Image(.doctorStrange)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 42, height: 42)
                    VStack(alignment: .leading) {
                        Text("Dr. Strange Walker")
                            .bold()
                            .font(.system(size: 18))
                        Text("Internist Specialist Doctor")
                            .font(.system(size: 12))
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                    Image(systemName: "ellipsis.message")

                }
                .padding(12)
                
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal, 16)

            }

        }
        .padding(.vertical, 16)

        .background(Color(uiColor: .cardBackround))

        .clipShape(RoundedRectangle(cornerRadius: 24))
        .padding(.horizontal, 40)

    }
}

#Preview {
    HomeView()
}

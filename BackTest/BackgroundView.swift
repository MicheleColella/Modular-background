import SwiftUI

struct BackgroundView: View {
    var isExpanded: Bool

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: geometry.size.width * 2, height: geometry.size.height)
                    .background(
                        EllipticalGradient(stops: [
                            .init(color: Color(red: 0.65, green: 0.01, blue: 0.29), location: 0),
                            .init(color: Color(red: 0.65, green: 0.01, blue: 0.29).opacity(0), location: 1)
                        ], center: .center)
                    )
                    .cornerRadius(geometry.size.height/2)
                    .position(
                        x: geometry.size.width / 2,
                        y: geometry.size.height * 0.96 + 150
                    )
                    .opacity(isExpanded ? 0 : 1)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: geometry.size.width * 6, height: geometry.size.height * 3)
                    .background(
                        EllipticalGradient(stops: [
                            .init(color: Color(red: 0.65, green: 0.01, blue: 0.29), location: 0),
                            .init(color: Color(red: 0.65, green: 0.01, blue: 0.29).opacity(0), location: 1)
                        ], center: .center)
                    )
                    .cornerRadius(geometry.size.height / 2)
                    .position(
                        x: geometry.size.width,
                        y: geometry.size.height / 1.5
                    )
                    .opacity(isExpanded ? 1 : 0)
                    .edgesIgnoringSafeArea(.all)
            }
            .animation(.easeInOut(duration: 1.0), value: isExpanded)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    BackgroundView(isExpanded: false)
}

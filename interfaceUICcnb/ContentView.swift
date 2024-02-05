import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.orange)
                .ignoresSafeArea(.all)
            VStack{
                EnteteHaut()
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        CalendrierDate(number: "10", days: "LUN", backColor: .white, textColor: UIColor(.black))
                        CalendrierDate(number: "11", days: "MAR", backColor: .white, textColor: UIColor(.black))
                        CalendrierDate(number: "12", days: "MER", backColor: .blue, textColor: UIColor(.black))
                        CalendrierDate(number: "13", days: "VEN", backColor: .white, textColor: UIColor(.black))
                        CalendrierDate(number: "15", days: "SAM", backColor: .white, textColor: UIColor(.black))
                        CalendrierDate(number: "16", days: "DIM", backColor: .white, textColor: UIColor(.black))
                    }
                }
                
                Spacer()
                // liste de cours
                VStack {
                    Text("Cours d'aujourd'hui")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                // cours
                    ScrollView(.vertical, showsIndicators: false) {
                        //liste de cours
                        VStack  {
                            
                            CoursCcnbView(hour: "8h35", codeCourse: "SYST1037", nameCourse: "Analyse des Systemes d'Information")
                            CoursCcnbView(hour: "9h35", codeCourse: "DATA1054", nameCourse: "Systeme de gestion base de donnees")
                            CoursCcnbView(hour: "10h35", codeCourse: "PR0G1300", nameCourse: "Programmation Web cote Serveur")
                            CoursCcnbView(hour: "11h35", codeCourse: "PROG1294", nameCourse: "Programmation Java et  Android")
                            CoursCcnbView(hour: "12h35", codeCourse: "PROG1250", nameCourse: "Programmation ADO .NET et ASP .NET")
                            CoursCcnbView(hour: "13h35", codeCourse: "PROG1250", nameCourse: "Programmation orientee objet en C++")
                            CoursCcnbView(hour: "14h35", codeCourse: "PROG1475", nameCourse: "Programmation en Flutter sous Adnroid")
                            CoursCcnbView(hour: "15h35", codeCourse: "PROG1147", nameCourse: "Programmation multi-couches")
                            CoursCcnbView(hour: "16h35", codeCourse: "PROG1296", nameCourse: "Programmation iOS Apple")
                        }
                    }
                        .padding(25)
                        .background(Color(.white))
                        .cornerRadius(15)
                        .edgesIgnoringSafeArea(.bottom)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct EnteteHaut: View {
    var body: some View {
        HStack(alignment: .top) {
            Text("Vos cours au CCNB")
                .font(.system(size: 34, weight: .bold, design: .default))
                .frame(width: 250)
                .foregroundColor(.white)
            Spacer()
            
            ZStack{
                Image(systemName: "bell.fill")
                    .resizable()
                    .frame(width: 25, height: 28)
                    .padding(.top)
                    .foregroundColor(.white)
                Circle()
                    .fill(Color.red)
                    .frame(width: 12, height: 12)
                    .padding(.leading, 10)
                
            }
        }
        .padding(.horizontal)
        .padding([.top, .bottom])
    }
}

struct CalendrierDate: View {
    
    // Declaration des variables
    var number: String
    var days: String
    var backColor: UIColor
    var textColor: UIColor
    
    // vue secondaire de ma petite vue
    var body: some View {
        VStack{
            Text(self.number)
                .font(.system(size: 28, weight: .bold, design: .rounded))
                .foregroundStyle(Color(self.textColor))
            Text(self.days)
                .font(.headline)
                .foregroundStyle(Color(self.textColor))
        }
        .padding([.top, .bottom], 20)
        .padding([.leading, .trailing], 10)
        .background(Color(.white))
        .cornerRadius(15)
    }
}

// subview pour mes cours
struct CoursCcnbView: View {
    
    // declaration des variables
    var hour: String
    var codeCourse: String
    var nameCourse: String
    
    var body: some View {
        HStack {
            Text(self.hour)
                .font((.system(size: 14, weight: .heavy, design: .rounded)))
                .frame(width: 46, height: nil, alignment: .leading)
                .padding(.trailing, 5)
            
            VStack(alignment: .leading) {
                Text(self.codeCourse)
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                Text(self.nameCourse)
                    .font(.system(size: 14,
                                  weight: .light, design: .default))
                    .padding(.trailing, 15)
                
            }
            .frame(width: 150, height: nil, alignment: .leading)
            .padding(.trailing, 15)
            Image(systemName: "list.dash")
                .resizable()
                .frame(width: 15, height: 18)
        }
        .padding(.bottom, 15)
    }
}

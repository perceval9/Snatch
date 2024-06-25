import SwiftUI

struct ListView: View {
    
    @State var exercises: [Exercise] = []
    var exerciseService = ExerciseService()
    
    @State private var selectedExercise: Exercise?
    @State private var isNavigating = false
    
    var e = ExerciseList()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                }
                
                List(exercises) { item in
                    HStack {
                        Image(item.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 50)
                            .cornerRadius(10)
                        
                        Text(item.name)
                            .bold()
                        
                        Spacer()
                        
                        Button("More") {
                            selectedExercise = item
                            isNavigating = true
                        }
                        .buttonStyle(.bordered)
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                .onAppear {
                    exercises = exerciseService.getExercises()
                }
                
                // Hidden NavigationLink to trigger navigation
                NavigationLink(
                    destination: ExerciseInfo(
                        name: selectedExercise?.name ?? "",
                        type: selectedExercise?.type ?? "",
                        imageName: selectedExercise?.imageName ?? "",
                        starred: selectedExercise?.starred ?? false,
                        description: selectedExercise?.description ?? "",
                        exerciseList: e
                    ),
                    isActive: $isNavigating,
                    label: {
                        EmptyView()
                    }
                )
            }
            .navigationTitle("Lifts")
        }
        Button("Check Out") {
            print(e.getList())
        }
    }
}

#Preview {
    ListView()
}

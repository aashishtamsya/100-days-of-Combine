import Foundation
import Combine

struct School {
    let name: String
    let noOfStudents: CurrentValueSubject<Int, Never>

    init(name: String, noOfStudents: Int) {
        self.name = name
        self.noOfStudents = CurrentValueSubject(noOfStudents)
    }
}

let citySchool = School(name: "City High School", noOfStudents: 100)

let schoolSubject = CurrentValueSubject<School, Never>(citySchool)

//schoolSubject
//    .sink {
//        print($0)
//    }

// MARK: - Flatmap
schoolSubject
    .flatMap { $0.noOfStudents }
    .sink {
        print($0)
    }

let townSchool = School(name: "Town High School", noOfStudents: 320)

citySchool.noOfStudents.value += 4

schoolSubject.value = townSchool

townSchool.noOfStudents.value += 10

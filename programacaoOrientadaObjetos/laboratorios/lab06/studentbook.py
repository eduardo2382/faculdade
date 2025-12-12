class StudentBook():
    def __init__(self):
        self.__students = list()

    def storeStudent(self, student):
        self.__students.append(student)

    def numberOfStudents(self):
        return len(self.__students)
    
    def showStudent(self, studentNumber):

        if studentNumber < 0:
            return False
        
        elif studentNumber < self.numberOfStudents():
            return self.__students[studentNumber]
        
        else:
            return False
    
    def removeStudent(self, student):
        if student in self.__students:
            self.__students.remove(student)
            return True
        else:
            return False
        
    def listStudents(self):
        index = 0
        while index < self.numberOfStudents():
            print(self.__students[index].getNome())
            index += 1

    def listStudentsFor(self):
        for student in self.__students:
            print(student.getNome())

    def hasStudents(self):
        if self.numberOfStudents() > 0:
            return True
        else:
            return False
        
    def compareStudent(self, student):
        for studentInBook in self.__students:
            if studentInBook.getMatricula() == student.getMatricula():
                return True
            
        return False



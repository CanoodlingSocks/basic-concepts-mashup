// 'this' is a keyword that refers to the current instance of a class. You can use 'this' to refer to instance variables and methods within the current class.

Person person = new Person("Lela");
person.Greeting();
class Person {
    private string Name;

    public Person(string name) {
        this.Name = name;
    }

    public void Greeting() {
        Console.WriteLine("Hello " + this.Name);
    }
}

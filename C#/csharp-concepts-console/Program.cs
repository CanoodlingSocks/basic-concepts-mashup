//Top-level statements here:

Console.WriteLine("\n----------- 'this' Keyword -----------");
Console.WriteLine("\nExample 1\nResult: "); 
Person person = new Person("Lela");
person.Greeting();

Console.WriteLine("\nExample 2\nResult: ");
MyClass myObj = new MyClass();
        myObj.MyInt = -1;
        myObj.MyMethod(-1);

// ----------------------------------

// 'this' is a keyword that refers to the current instance of a class. You can use 'this' to refer to instance variables and methods within the current class.

class Person 
{
    private string Name;

    public Person(string name) {
        this.Name = name;
    }

    public void Greeting() {
        Console.WriteLine("Hello " + this.Name + "!\n");
    }
}

// Using the keyword 'this' in property setters
// 'this' could also be used within property setters to refer to the
// current instance of the class. This can be useful for performing
// additional validation or other operations on the property value.
class MyClass
{
    private int myInt;

    public int MyInt
    {
        get
        {
            Console.WriteLine("\nGetting the value of MyInt");
            return myInt;
        }
        set
        {
            myInt = value;
            Console.WriteLine("\nSetting the value of MyInt to " + value + "\n");
        }
    }

    public void MyMethod(int input)
    {
        if (MyInt == input)
        {
            Console.WriteLine("\nInput parameter matches instance field");
        }
        else if (MyInt == -1)
        {
            Console.WriteLine("\nInstance field is -1");
        }
        else
        {
            Console.WriteLine("\nNo match");
        }
    }
}
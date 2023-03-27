## Test Questions
* What is the difference between a struct and a class in C#? <br>
A struct is a value type, while a class is a reference type. 
Inside the memory areas of a computer, there is something called the 'stack' and the 'heap'. <br> When you create a variable of a value type, the value is stored on the stack, which is a small but fast area of memory that is used for __temporary storage__. <br> When you create a variable of a reference type, the variable itself is stored on the stack, but the object it refers to is stored on the heap, which is a larger, slower area of memory that is used for __long-term storage__. <br>
<br> So, in short, a struct is a value type that stores its value directly in the variable on the stack, while a class is a reference type that stores a reference to the object on the heap in the variable of the stack. <br>
What's more, structs are typically used for simple, lightweight objects that can be easily created and destroyed, while classes are used for more complex objects that require more memory and processing power.

* What is LINQ and how is it used in C#? <br>
LINQ stands for Language Integrated Query, and it's a way to query data from different sources using a syntax similar to SQL. You can use LINQ to query data from databases, XML files, and more. In C#, you first create a data source object, and then you use LINQ syntax to query the data. <br>
For example, if you have a list of numbers, you can use LINQ to select only the even numbers:

```
List<int> numbers = new List<int> { 1, 2, 3, 4, 5 };
var evenNumbers = from n in numbers
where n % 2 == 0
select n;
```

* How do you handle exceptions in C#? <br>
To handle exceptions in C#, you use a try-catch block. The try block contains the code that might throw an exception, and the catch block contains the code that handles the exception if it occurs. <br>
For example, to catch a divide by zero exception:

```
int x = 10;
int y = 0;
try
{
    int z = x / y;
}
catch (DivideByZeroException ex)
{
    Console.WriteLine("Error: " + ex.Message);
}
```

* What is multithreading and how is it used in C#? <br>
Multithreading is a technique that allows a program to perform multiple tasks concurrently by dividing the tasks into smaller units of work called threads. Each thread is an independent sequence of instructions that can be executed concurrently with other threads within the same process. <br> In C#, you can create multiple threads by creating instances of the Thread class. Each thread can then execute its own code independently of the other threads. For example, you might have a program that needs to download multiple files from the internet. You could create a separate thread for each file download, so that the downloads can happen concurrently.
For example, create and start a new thread: 

```
Thread thread = new Thread();
thread.Start();
```
Multithreading can be very useful for improving the performance of a program by allowing it to take advantage of the multiple processing cores available on modern computers. However, it can also introduce some new challenges, such as the need to synchronize access to shared resources to prevent race conditions and other concurrency issues.
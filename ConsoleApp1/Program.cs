using System;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            B obj = new D();
            //obj.M();
        }
        
    }

    public class B
    {
        public Random rnd; //second initialized
        public B()
        {
            M();           //third  initialized
        }
        public virtual void  M()
        {
            Console.WriteLine("A {0}");
        }

    }
    public class D : B
    {
        public Random rnd; // first initialized
        public D()
        {
            rnd = new Random(); //fouth initialized
                                //this is the main problem  of  it mistake.
                                //last initialization
        }
        public override void  M()
        {
            //Console.WriteLine("B {0}", rnd.Next());
            Console.WriteLine("B {0}");
        }

    }
}

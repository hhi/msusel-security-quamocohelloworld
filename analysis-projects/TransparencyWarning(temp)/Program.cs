﻿using System;
using System.Security;

namespace TransparencyWarning
{
    /// <summary>
    /// Demo program to trigger FxCop CA2134: "Methods must keep consistent transparency
    /// when overriding base methods"
    /// See https://msdn.microsoft.com/en-us/library/dd997447.aspx for more information
    /// </summary>
    public interface IInterface
    {
        void TransparentInterfaceMethod();

        [SecurityCritical]
        void CriticalInterfaceMethod();
    }

    public class Base
    {
        public virtual void TransparentVirtual() { }

        [SecurityCritical]
        public virtual void CriticalVirtual() { }
    }

    public class Derived : Base, IInterface
    {
        // CA2134 violation - implementing a transparent method with a critical one.  This can be fixed by any of:
        //   1. Making IInterface.TransparentInterfaceMethod security critical
        //   2. Making Derived.TransparentInterfaceMethod transparent
        //   3. Making Derived.TransparentInterfaceMethod safe critical
        [SecurityCritical]
        public void TransparentInterfaceMethod() 
        { 
            Console.WriteLine("Running TransparentInterfaceMethod...");
        }

        // CA2134 violation - implementing a critical method with a transparent one.  This can be fixed by any of:
        //   1. Making IInterface.CriticalInterfaceMethod transparent
        //   2. Making IInterface.CriticalInterfaceMethod safe critical
        //   3. Making Derived.TransparentInterfaceMethod critical
        public void CriticalInterfaceMethod()
        { 
            Console.WriteLine("Running CriticalInterfaceMethod...");
        }

        // CA2134 violation - overriding a transparent method with a critical one.  This can be fixed by any of:
        //   1. Making Base.TrasnparentVirtual critical
        //   2. Making Derived.TransparentVirtual transparent
        //   3. Making Derived.TransparentVirtual safe critical
        [SecurityCritical]
        public override void TransparentVirtual()
        { 
            Console.WriteLine("Running TransparentVirtual...");
        }

        // CA2134 violation - overriding a critical method with a transparent one.  This can be fixed by any of:
        //   1. Making Base.CriticalVirtual transparent
        //   2. Making Base.CriticalVirtual safe critical
        //   3. Making Derived.CriticalVirtual critical
        public override void CriticalVirtual()
        { 
            Console.WriteLine("Running CriticalVirtual...");
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Instantiating Derived Class...");
            Derived derived = new Derived();
            derived.TransparentInterfaceMethod();
            derived.CriticalInterfaceMethod();
            derived.TransparentVirtual();
            derived.CriticalVirtual();
        }
    }
}

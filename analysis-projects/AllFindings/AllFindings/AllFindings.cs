using System;
using System.Security;
using System.Runtime.InteropServices;

[assembly: AllowPartiallyTrustedCallers]

namespace AllFindings
{
    public class ClassRequiringFullTrust
    {
        public static void DoWork()
        {
            Console.WriteLine("ClassRequiringFullTrust.DoWork was called.");
        }
    }

    public class AccessAClassRequiringFullTrust
    {
        public static void Access()
        {
            // This security check fails if the caller 
            // does not have full trust. 
            NamedPermissionSet pset = new NamedPermissionSet("FullTrust");

            // This try-catch block shows the caller's permissions.
            // Correct code would either not catch the exception,
            // or would rethrow it.
            try
            {
                pset.Demand();
            }
            catch (SecurityException e)
            {
                Console.WriteLine("Demand for full trust:{0}", e.Message);
            }
            // Call the type that requires full trust.
            // Violates rule AptcaMethodsShouldOnlyCallAptcaMethods.
            ClassRequiringFullTrust.DoWork();
        }
    }

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
        public void TransparentInterfaceMethod() { }

        // CA2134 violation - implementing a critical method with a transparent one.  This can be fixed by any of:
        //   1. Making IInterface.CriticalInterfaceMethod transparent
        //   2. Making IInterface.CriticalInterfaceMethod safe critical
        //   3. Making Derived.TransparentInterfaceMethod critical
        public void CriticalInterfaceMethod() { }

        // CA2134 violation - overriding a transparent method with a critical one.  This can be fixed by any of:
        //   1. Making Base.TrasnparentVirtual critical
        //   2. Making Derived.TransparentVirtual transparent
        //   3. Making Derived.TransparentVirtual safe critical
        [SecurityCritical]
        public override void TransparentVirtual() { }

        // CA2134 violation - overriding a critical method with a transparent one.  This can be fixed by any of:
        //   1. Making Base.CriticalVirtual transparent
        //   2. Making Base.CriticalVirtual safe critical
        //   3. Making Derived.CriticalVirtual critical
        public override void CriticalVirtual() { }
    }

    public class MyBadMemberClass
    {
        [SuppressUnmanagedCodeSecurityAttribute()]
        public void DoWork()
        {
            FormatHardDisk();
        }

        void FormatHardDisk()
        {
            // Code that calls unmanaged code.
        }
    }

    [SuppressUnmanagedCodeSecurityAttribute()]
    public class MyBadTypeClass
    {
        public void DoWork()
        {
            FormatHardDisk();
        }

        void FormatHardDisk()
        {
            // Code that calls unmanaged code.
        }
    }

    public class SuppressIsOnPlatformInvoke
    {
        // The DoWork method is public and provides unsecured access
        // to the platform invoke method FormatHardDisk.
        [SuppressUnmanagedCodeSecurityAttribute()]
        [DllImport("native.dll")]

        private static extern void FormatHardDisk();
        public void DoWork()
        {
            FormatHardDisk();
        }
    }

    // Having the attribute on the type also violates the rule.
    [SuppressUnmanagedCodeSecurityAttribute()]
    public class SuppressIsOnType
    {
        [DllImport("native.dll")]

        private static extern void FormatHardDisk();
        public void DoWork()
        {
            FormatHardDisk();
        }
    }

    public class AllFindings
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Beginning AllFindings calls...");

            ClassRequiringFullTrust.DoWork();
            AccessAClassRequiringFullTrust.Access();

            //Derived derived = new Derived();
            //derived.TransparentInterfaceMethod();
            //derived.CriticalInterfaceMethod();
            //derived.CriticalVirtual();

            MyBadMemberClass badMemberClass = new MyBadMemberClass();
            badMemberClass.DoWork();
            MyBadTypeClass myBadTypeClass = new MyBadTypeClass();
            myBadTypeClass.DoWork();
        }
    }
}

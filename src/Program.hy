public class Program {
    public static int Main(string[] args) {
        int api = System.Australis.SystemInfo.Query(0);
        if (api < 2) {
            System.Console.WriteLine("mem-info: system information API 2 is required");
            return 2;
        }
        System.Console.WriteLine("Australis Memory Information");
        System.Console.WriteLine("Page size in bytes:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(32));
        System.Console.WriteLine("Fresh physical pages available:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(33));
        System.Console.WriteLine("Recycled physical pages available:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(34));
        System.Console.WriteLine("Total physical pages available:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(35));
        System.Console.WriteLine("Kernel heap pages committed:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(36));
        System.Console.WriteLine("Kernel heap bytes used:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(37));
        System.Console.WriteLine("Memory runtime status:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(38));
        System.Console.WriteLine("Page table audit status:");
        System.Console.WriteLine(System.Australis.SystemInfo.Query(39));
        return 0;
    }
}

using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;

namespace WSClient
{
    internal class Program
    {
        static void Main(string[] args)
        {
            IPAddress ip = IPAddress.Parse("127.0.0.1");
            int port = 5000;
            TcpClient client = new TcpClient();
            client.Connect(ip, port);
            Console.WriteLine("Client Connected");
            NetworkStream ns = client.GetStream();
            Thread T = new Thread(o => DataReceive((TcpClient)o));

            T.Start(client);
            string s;
            while (!string.IsNullOrEmpty((s = Console.ReadLine())))
            {
                byte[] buffer = Encoding.ASCII.GetBytes(s);
                ns.Write(buffer, 0, buffer.Length);
            }
            client.Client.Shutdown(SocketShutdown.Send);
            T.Join();
            ns.Close();
            client.Close();
            Console.WriteLine("Disconnect from server");
            Console.ReadKey();
        }

        static void DataReceive(TcpClient client)
        {
            NetworkStream ns = client.GetStream();
            byte[] receivedBytes = new byte[1024];
            int byte_count;
            string fString = "";

            while ((byte_count = ns.Read(receivedBytes, 0, receivedBytes.Length)) > 0)
            {
                fString = Encoding.ASCII.GetString(receivedBytes, 0, byte_count);
                Console.WriteLine("Output: " + fString);
                ChoosenPlanet(fString);
            }
        }

        public static void ChoosenPlanet(string data)
        {
            Console.WriteLine("Test");
            switch (data)
            {
                case "Mercury":
                    Console.WriteLine("this is Mercury");
                    break;
                case "Venus":
                    Console.WriteLine("this is Venus");
                    break ;
                case "Earth":
                    Console.WriteLine("this is Earth");
                    break;
                case "Mars":
                    Console.WriteLine("this is Mars");
                    break;
                case "Jupiter":
                    Console.WriteLine("this is Jupiter");
                    break;
                case "Saturn":
                    Console.WriteLine("this is Saturn");
                    break;
                case "Uranus":
                    Console.WriteLine("this is Uranus");
                    break;
                case "Neptune":
                    Console.WriteLine("this is Neptune");
                    break;
                default:
                    break;
            }
        }
    }
}

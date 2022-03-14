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
            IPAddress ip = IPAddress.Parse("10.108.233.59");
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
                try
                {
                    ns.Write(buffer, 0, buffer.Length);
                }
                catch (Exception)
                {
                    break;
                }
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
            try
            {
                while ((byte_count = ns.Read(receivedBytes, 0, receivedBytes.Length)) > 0)
                {
                    fString = Encoding.ASCII.GetString(receivedBytes, 0, byte_count);
                    Console.WriteLine("Output: " + fString);
                    ChoosenPlanet(fString);
                }

            }
            catch (Exception)
            {
               return;
            }
        }

        public static void ChoosenPlanet(string data)
        {
            Console.WriteLine("Test");
            switch (data)
            {
                case "mercury":
                    Console.WriteLine("this is Mercury");
                    break;
                case "venus":
                    Console.WriteLine("this is Venus");
                    break ;
                case "earth":
                    Console.WriteLine("this is Earth");
                    break;
                case "mars":
                    Console.WriteLine("this is Mars");
                    break;
                case "jupiter":
                    Console.WriteLine("this is Jupiter");
                    break;
                case "saturn":
                    Console.WriteLine("this is Saturn");
                    break;
                case "uranus":
                    Console.WriteLine("this is Uranus");
                    break;
                case "neptune":
                    Console.WriteLine("this is Neptune");
                    break;
                default:
                    break;
            }
        }
    }
}

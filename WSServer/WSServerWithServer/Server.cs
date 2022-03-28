using System.Net.Sockets;
using System.Text;

namespace WSServerWithServer
{
    public static class Server
    {
        

        static readonly Dictionary<int, TcpClient> list_clients = new Dictionary<int, TcpClient>();
        static readonly object _lock = new object();
        public void StartServer()
        {
            int count = 1;
            TcpListener serverSocket = new TcpListener(System.Net.IPAddress.Any, 5000);
            serverSocket.Start();

            while (true)
            {
                TcpClient client = serverSocket.AcceptTcpClient();
                lock (_lock) list_clients.Add(count, client);
                Console.WriteLine("Someone Connected");
                Thread t = new Thread(handleClients);
                t.Start(count);
                count++;
            }
        }

        public static void handleClients(object o)
        {
            int id = (int)o;
            TcpClient client;

            lock (_lock) client = list_clients[id];

            while (true)
            {
                NetworkStream stream = client.GetStream();
                byte[] buffer = new byte[1024];
                int byte_count;
                try
                {
                    byte_count = stream.Read(buffer, 0, buffer.Length);
                }
                catch
                {

                    break;

                }
                string data = Encoding.ASCII.GetString(buffer, 0, byte_count);
                Broadcast(data);
                Console.WriteLine(data);
            }
            lock (_lock) list_clients.Remove(id);
            client.Client.Shutdown(SocketShutdown.Both);
            client.Close();
        }

        public static void Broadcast(string data)
        {
            byte[] buffer = Encoding.ASCII.GetBytes(data);

            lock (_lock)
            {
                foreach (TcpClient c in list_clients.Values)
                {
                    NetworkStream stream = c.GetStream();
                    stream.Write(buffer, 0, buffer.Length);
                }
            }
        }
    }
}

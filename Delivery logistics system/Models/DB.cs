using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;

namespace Delivery_logistics_system.Models
{
	public class DB
	{
		public SqlConnection Connection { get; set; }
		public DB() {

			string conStr = "Data Source=Mohamed-Khaled;Initial Catalog=\"Delivery logistics system\";Integrated Security=True";
			Connection = new SqlConnection(conStr);
		}

		public DataTable SelectAllTable(string TableName)
		{
			DataTable dt = new DataTable();
			string Q1 = $"select * from {TableName}";

			Connection.Open();

			SqlCommand cmd = new SqlCommand(Q1, Connection);
			dt.Load(cmd.ExecuteReader());

			Connection.Close();
			return dt;

		}
      
        public int Admin_Home_DriveActivity(string Availabiltiy)
		{
            int Availabiltiy_num = 0;
            string Q1 = $"SELECT COUNT(*) FROM Driver WHERE Availability = '{Availabiltiy}';";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q1, Connection);
            Availabiltiy_num = (int)cmd.ExecuteScalar();

            Connection.Close();




            return Availabiltiy_num;

        }
        public int Admin_Home_Nums(string TableName)
        {
            int num = 0;
            string Q1 = $"SELECT COUNT(*) FROM {TableName}";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q1, Connection);
            num = (int)cmd.ExecuteScalar();

            Connection.Close();




            return num;

        }
        public DataTable Admin_SelectOrders()
        {
            DataTable dt = new DataTable();
            string Q1 = "SELECT o.ID AS OrderID, s.Name AS SenderName, d.Name AS DriverName, o.Date, o.Shipment_method, o.Status AS OrderStatus, o.Workflow FROM [Order] o JOIN Sender s ON o.SenderID = s.ID JOIN Driver d ON o.DriverID = d.ID;";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q1, Connection);
            dt.Load(cmd.ExecuteReader());

            Connection.Close();
            return dt;
            
        }
		public DataTable Admin_SelectCustomers()
		{
			DataTable dt = new DataTable();
			string Q1 = "SELECT s.ID AS SenderID, s.Name AS SenderName, s.Email AS SenderEmail, s.Address AS SenderAddress, COUNT(o.ID) AS NumOfOrders FROM Sender s LEFT JOIN [Order] o ON s.ID = o.SenderID GROUP BY s.ID, s.Name, s.Email, s.Address;";

			Connection.Open();

			SqlCommand cmd = new SqlCommand(Q1, Connection);
			dt.Load(cmd.ExecuteReader());

			Connection.Close();
			return dt;

		}
		public DataTable Admin_SelectDrivers()
		{
			DataTable dt = new DataTable();
			string Q1 = "SELECT d.ID AS DriverID, d.Name AS DriverName, v.Plate_No, d.Shift_start, d.Shift_end, d.Availability FROM Driver d LEFT JOIN Vehicle v ON d.ID = v.Driver_ID;";

			Connection.Open();

			SqlCommand cmd = new SqlCommand(Q1, Connection);
			dt.Load(cmd.ExecuteReader());

			Connection.Close();
			return dt;

		}
		public DataTable Admin_SelectVehicles()
		{
			DataTable dt = new DataTable();
			string Q1 = "select Type, Plate_No, Cost, Year, Model from Vehicle";

			Connection.Open();

			SqlCommand cmd = new SqlCommand(Q1, Connection);
			dt.Load(cmd.ExecuteReader());

			Connection.Close();
			return dt;

		}
        public DataTable Admin_SelectProfile(int Admin_ID)
        {
            DataTable dt = new DataTable();
            string Q1 = $"select ID, Name, Age, Shift_start, Shift_end from Admin where ID = {Admin_ID}";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q1, Connection);
            dt.Load(cmd.ExecuteReader());

            Connection.Close();
            return dt;

        }
        public void UpdateAdminPass(string NewPass,int id)
        {
            string Q1 = $"UPDATE Admin SET Password = '{NewPass}' WHERE ID = {id}";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q1, Connection);
            cmd.ExecuteNonQuery();
            Connection.Close();

        }
        public DataTable ReadTable(string ColumnNames, string DataTableName, string Condition)
        {
            DataTable dt = new DataTable();

            string Q = $"SELECT {ColumnNames} FROM {DataTableName} WHERE {Condition}";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q, Connection);

            dt.Load(cmd.ExecuteReader());

            Connection.Close();

            return dt;
        }

        public DataRow ReadRow(string ColumnNames, string DataTableName, string Condition)
        {
            DataTable dt = new DataTable();

            string Q = $"SELECT {ColumnNames} FROM {DataTableName} WHERE {Condition}";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q, Connection);

            dt.Load(cmd.ExecuteReader());

            Connection.Close();

            return dt.Rows[0];
        }

		public bool ValidateLoginCredentials(string TableName,string email, string password)
		{
			string sql = $"SELECT COUNT(*) FROM {TableName} WHERE Email = '{email}' AND Password = '{password}'";

			int count = 0;



				Connection.Open();

				SqlCommand cmd = new SqlCommand(sql, Connection);
				count = (int)cmd.ExecuteScalar();

				Connection.Close();




				return count > 0? true:false;
		}
        public void UpdateDriverOrders(int OrderID, int DriverID)
        {
            string Q1 = $"UPDATE [Order] SET DriverID = {DriverID} WHERE ID = {OrderID}";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q1, Connection);
            cmd.ExecuteNonQuery();
            Connection.Close();

        }
        public void UpdateDriverDelivery(int OrderID)
        {
            string Q1 = $"UPDATE [Order] SET Status = 'Delivered' WHERE ID = {OrderID}";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q1, Connection);
            cmd.ExecuteNonQuery();
            Connection.Close();

        }
        public DataTable AddOrder(Order order)
        {
            DataTable dt = new DataTable();

            string Q = $"Insert INTO [Order] (Date , Status , Workflow , Requirements ,Shipment_method, Payment_method , SenderID ,ReceiverID , WarehouseID , DriverID) Values ( '2024-02-03 13:00:00.000', 'Pending' , 'Standard' , '{order.Requirements}' , '{order.ShipmentMethod}' , '{order.PaymentMethod}' , '17' , '18' ,'1')";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q, Connection);

            cmd.ExecuteNonQuery();

            Connection.Close();

            return dt;
        }



        public DataTable AddOrderResiver(Order order)
        {
            DataTable dt = new DataTable();

            string Q = $"INSERT INTO [Receiver] (Name, Phone, Email, Address, Zone) VALUES ('{order.ReceiverName}', '{order.ReceiverPhone}', '{order.ReceiverEmail}', '{order.ReceiverAddress}', '{order.ReceiverZone}')";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q, Connection);

            cmd.ExecuteNonQuery();

            Connection.Close();

            return dt;
        }

        public void AddSender(string FullName, Sender sender)
        {
            string Q2 = $"INSERT INTO Sender ( Name, Phone, Email, Address, Password, Zone) VALUES ( '{FullName}', '{sender.phone}', '{sender.Email}','{sender.Address}', '{sender.Password}', '{sender.Zone}');";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q2, Connection);
            cmd.ExecuteNonQuery();
            Connection.Close();

        }
        public void addCom(ComplainAndFeedback comp)
        {
            string Q3 = $"INSERT INTO ComplainAndFeedback ( Email, Type,Form) VALUES ( '{comp.Email}', '{comp.type}', '{comp.Form}');";

            Connection.Open();

            SqlCommand cmd = new SqlCommand(Q3, Connection);
            cmd.ExecuteNonQuery();
            Connection.Close();

        }

    }
}

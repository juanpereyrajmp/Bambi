using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Bambi.Data
{
    public class DataAccess
    {

        private SqlConnection Connection;
        public SqlCommand Command;
        private SqlDataReader Reader;

        public SqlDataReader DataReader
        {
            get { return Reader; }
        }

        public DataAccess()
        {
            Connection = new SqlConnection("server=.\\SQLEXPRESS; database = Bambi; integrated security = true");
            Command = new SqlCommand();
        }

        public void SetQuery(string query)
        {
            Command.CommandType = System.Data.CommandType.Text;
            Command.CommandText = query;
        }

        public void SetProcedure(string procedure)
        {
            Command.CommandType = System.Data.CommandType.StoredProcedure;
            Command.CommandText = procedure;
        }

        public void ExecuteRead ()
        {
            Command.Connection = Connection;
            try
            {
                Connection.Open();
                Reader = Command.ExecuteReader();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void SetParameter(string name, object value)
        {
            Command.Parameters.AddWithValue(name, value);
        }

        public void ExecuteAction()
        {
            Command.Connection = Connection;
            try
            {
                Connection.Open();
                Command.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public int ExecuteScalarAction()
        {
            Command.Connection = Connection;
            try
            {
                Connection.Open();
                return int.Parse(Command.ExecuteScalar().ToString());
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        public void CloseConnection()
        {
            if(Reader != null)
            {
                Reader.Close();
                Connection.Close();
            }
        }

    }
}
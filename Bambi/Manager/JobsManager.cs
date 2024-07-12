using Bambi.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Bambi.Domain;
using System.Data.Common;
using Bambi.WebForms;
using System.Data.SqlClient;


namespace Bambi.Manager
{
    public class JobsManager
    {

        DataAccess data = new DataAccess();

        public List<Job> ListJobs(int jobID = -1, int statusID = -1)
        {
            List<Job> jobs = new List<Job>();

            try
            {
                data.Command.Parameters.Clear();
                data.SetProcedure("SP_JobsList");
                data.SetParameter("JobID", jobID);
                data.SetParameter("StatusID", statusID);
                data.ExecuteRead();

                while (data.DataReader.Read())
                {
                    Job job = new Job
                    {
                        jobID = (int)data.DataReader["JobID"],
                        clientName = GetValueOrDefault<string>(data.DataReader, "ClientName"),
                        jobDate = GetValueOrDefault<DateTime>(data.DataReader, "JobDate"),
                        startTime = GetValueOrDefault<TimeSpan>(data.DataReader, "StartTime"),
                        endTime = GetValueOrDefault<TimeSpan>(data.DataReader, "EndTime"),
                        status = GetValueOrDefault<string>(data.DataReader, "Status"),
                        address = new Address
                        {
                            street = GetValueOrDefault<string>(data.DataReader, "Street"),
                            number = GetValueOrDefault<string>(data.DataReader, "Number"),
                            floor = GetValueOrDefault<string>(data.DataReader, "Floor"),
                            apartment = GetValueOrDefault<string>(data.DataReader, "Apartment"),
                            city = GetValueOrDefault<string>(data.DataReader, "City"),
                            state = GetValueOrDefault<string>(data.DataReader, "State")
                        },
                        price = GetValueOrDefault<float>(data.DataReader, "Price"),
                        pricePaid = GetValueOrDefault<bool>(data.DataReader, "PricePaid"),
                        deposit = GetValueOrDefault<float>(data.DataReader, "Deposit"),
                        depositPaid = GetValueOrDefault<bool>(data.DataReader, "DepositPaid"),
                        services = new List<Service>()
                    };

                    jobs.Add(job);
                }

                if (data.DataReader.NextResult())
                {
                    while (data.DataReader.Read())
                    {
                        Service service = new Service
                        {
                            serviceID = GetValueOrDefault<int>(data.DataReader, "ServiceID"),
                            description = GetValueOrDefault<string>(data.DataReader, "ServiceName"),
                            price = GetValueOrDefault<float>(data.DataReader, "ServicePrice"),
                            duration = GetValueOrDefault<TimeSpan>(data.DataReader, "ServiceDuration")
                        };

                        int jobId = (int)data.DataReader["JobID"];
                        jobs.Find(j => j.jobID == jobId)?.services.Add(service);
                    }
                }

                return jobs;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                data.CloseConnection();
            }
        }

        private T GetValueOrDefault<T>(SqlDataReader reader, string columnName)
        {

            if (reader[columnName] == DBNull.Value)
                return default(T);

            Type type = typeof(T);

            if (type == typeof(string))
                return (T)(object)reader.GetString(reader.GetOrdinal(columnName));

            if (type == typeof(int))
                return (T)(object)reader.GetInt32(reader.GetOrdinal(columnName));

            if (type == typeof(bool))
                return (T)(object)reader.GetBoolean(reader.GetOrdinal(columnName));

            if (type == typeof(DateTime))
                return (T)(object)reader.GetDateTime(reader.GetOrdinal(columnName));

            if (type == typeof(float))
                return (T)(object)Convert.ToSingle(reader[columnName]);

            if (type == typeof(TimeSpan))
                return (T)(object)reader.GetTimeSpan(reader.GetOrdinal(columnName));

            // Para otros tipos, intenta una conversión directa
            return (T)reader[columnName];

        }

    }
}
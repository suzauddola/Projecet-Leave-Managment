using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using LMS1.DL;
using LMS1.CL;

namespace LMS1.BL
{
    public class RecommendationBL
    {

        /**
         * <summary> Get the list of employee the user need to recommend </summary>
         * 
         * <param name="superiorId"> Containing the id of the user </param>
         *
         **/
        public DataSet getRecommendationListBL(int superiorId)
        {
            RecommendationDL objDL = new RecommendationDL();
            DataSet ds = new DataSet();

            ds = objDL.getRecommendationList1(superiorId);

            return ds;
        }

        /**
         * <summary> Sending information to Data Layer to recommend the particular leave</summary>
         * 
         * <param name="leaveIndex"> </param>
         * 
         **/

        public void recommendLeaveBL(int leaveIndex)
        {
            RecommendationDL objDL = new RecommendationDL();

            objDL.recommendLeaveDL(leaveIndex);

        }


        /**
         * <summary> Sending information to Data Layer to deny the particular leaave</summary>
         * 
         * <param name="leaveIndex"> </param>
         * 
         * 
         **/ 
        public void denyLeaveBL(int leaveIndex)
        {
            RecommendationDL objDL = new RecommendationDL();
            objDL.denyLeaveDL(leaveIndex);
        }
    }
}
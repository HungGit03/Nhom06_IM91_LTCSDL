using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLL.DAL;
using QLL.DTO;

namespace QLL.BLL
{
    public class TKBCTBLL
    {
        private TKBCTDAL dal;
        public TKBCTBLL()
        {
            dal = new TKBCTDAL();
        }
        public IList<TKBCTDTO> GetAll()
        {
            return dal.GetAll();
        }
        public bool Update(TKBCTDTO tkb)
        {
            return dal.Update(tkb);
        }
        public bool Delete(int maTKB, int thu, int tiet)
        {
            return dal.Delete(maTKB, thu, tiet);
        }
        public TKBCTDTO Add(TKBCTDTO tkb)
        {
            return dal.Add(tkb);
        }
    }
}

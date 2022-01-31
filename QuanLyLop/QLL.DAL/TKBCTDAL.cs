using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLL.DAL.Models;
using QLL.DTO;

namespace QLL.DAL
{
    public class TKBCTDAL
    {
        private QuanLyLopContext db;
        public TKBCTDAL()
        {
            db = new QuanLyLopContext();
        }
        public IList<TKBCTDTO> GetAll()
        {
            List<TKBCTDTO> res = new List<TKBCTDTO>();
            try
            {
                var ls = db.Tkbctdbs.ToList();
                foreach (var tkb in ls)
                {
                    TKBCTDTO dto = new TKBCTDTO();
                    dto.MaTkb = tkb.MaTkb;
                    dto.Thu = tkb.Thu;
                    dto.Tiet = tkb.Tiet;
                    dto.Malop = tkb.Malop;
                    dto.MaGv = tkb.MaGv;
                    dto.MaMh = tkb.MaMh;
                    res.Add(dto);
                }
            }
            catch (Exception ex)
            {
                res = null;
            }
            return res;

        }
        public bool Update(TKBCTDTO tkb)
        {
            bool res = false;
            var c = db.Tkbctdbs.FirstOrDefault(x => x.Malop == tkb.Malop && x.Thu == tkb.Thu && x.Tiet == tkb.Tiet);
            if (c.MaTkb != tkb.MaTkb)
                c.MaTkb = tkb.MaTkb;
            if (c.MaMh != tkb.MaMh)
                c.MaMh = tkb.MaMh;
            if (c.MaGv != tkb.MaGv)
                c.MaGv = tkb.MaGv;
            try
            {
                db.Tkbctdbs.Update(c);
                db.SaveChanges();
                res = true;
            }
            catch (Exception ex)
            {
                res = false;
            }
            return res;
        }
        public bool Delete(int maLop, int thu, int tiet)
        {
            bool res = false;
            var tkb = db.Tkbctdbs.FirstOrDefault(x => x.Malop == maLop && x.Thu == thu && x.Tiet == tiet);
            try
            {
                db.Tkbctdbs.Remove(tkb);
                db.SaveChanges();
                res = true;
            }
            catch (Exception ex)
            {
                res = false;
            }
            return res;
        }
        public TKBCTDTO Add(TKBCTDTO tkb)
        {
            TKBCTDTO res = new TKBCTDTO();
            var c = new Tkbctdb();
            c.MaTkb = tkb.MaTkb;
            c.Thu = tkb.Thu;
            c.Tiet = tkb.Tiet;
            c.MaMh = tkb.MaMh;
            c.Malop = tkb.Malop;
            c.MaGv = tkb.MaGv;
            try
            {
                db.Tkbctdbs.Add(c);
                db.SaveChanges();
                res.MaTkb = c.MaTkb;
                res.Thu = c.Thu;
                res.Tiet = c.Tiet;
                res.MaMh = c.MaMh;
                res.Malop = c.Malop;
                res.MaGv = c.MaGv;
            }
            catch (Exception ex)
            {
                res = null;
            }
            return res;
        }
    }
}

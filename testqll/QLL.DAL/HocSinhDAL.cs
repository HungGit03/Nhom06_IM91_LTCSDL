using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLL.DAL.Models;
using QLL.DTO;

namespace QLL.DAL
{
    public class HocSinhDAL
    {
        private QuanLyLopContext db;
        public HocSinhDAL()
        {
            db = new QuanLyLopContext();
        }
        public IList<HocSinhDTO> GetAll()
        {

            List<HocSinhDTO> res = new List<HocSinhDTO>();
            try
            {
                var ls = db.HocSinhDbs.ToList();
                foreach (var hs in ls)
                {
                    HocSinhDTO dto = new HocSinhDTO();
                    dto.MaHs = hs.MaHs;
                    dto.TenHs = hs.TenHs;
                    dto.GioiTinh = hs.GioiTinh;
                    dto.NgaySinh = hs.NgaySinh;
                    dto.DiaChi = hs.DiaChi;
                    dto.Sdt = hs.Sdt;
                    dto.Email = hs.Email;
                    dto.MaLop = hs.MaLop;
                    res.Add(dto);
                }
            }
            catch (Exception ex)
            {
                res = null;
            }
            return res;
        }
        public object GetHSByPage(int page, int size)
        {

            List<HocSinhDTO> data = new List<HocSinhDTO>(); 
            var res = new
            {
                Data = data, 
                TotalRecord = 0,
                TotalPage=0,
                Page=page,
                Size = size
            };
            try
            {
                var ls = db.HocSinhDbs.ToList();
                var offset = (page - 1) * size;
                var totalRecord = ls.Count();
                var tottalPage = (totalRecord % size) == 0 ? (int)(totalRecord / size) : (int)(totalRecord / size + 1);
                var lst = ls.Skip(offset).Take(size);
                foreach (var hs in lst)
                {
                    HocSinhDTO dto = new HocSinhDTO();
                    dto.MaHs = hs.MaHs;
                    dto.TenHs = hs.TenHs;
                    dto.GioiTinh = hs.GioiTinh;
                    dto.NgaySinh = hs.NgaySinh;
                    dto.DiaChi = hs.DiaChi;
                    dto.Sdt = hs.Sdt;
                    dto.Email = hs.Email;
                    dto.MaLop = hs.MaLop;
                    data.Add(dto);
                }
                res = new
                {
                    Data = data,
                    TotalRecord = totalRecord,
                    TotalPage = tottalPage,
                    Page = page,
                    Size = size
                };
            }
            catch (Exception ex)
            {
                res = null;
            }
            return res;
        }
        public IList<HocSinhDTO> GetHSByID(int maLop)
        {

            List<HocSinhDTO> res = new List<HocSinhDTO>();
            try
            {
                var ls = db.HocSinhDbs.ToList();
                foreach (var hs in ls)
                {
                    if (maLop == hs.MaLop)
                    {
                        HocSinhDTO dto = new HocSinhDTO();
                        dto.MaHs = hs.MaHs;
                        dto.TenHs = hs.TenHs;
                        dto.GioiTinh = hs.GioiTinh;
                        dto.NgaySinh = hs.NgaySinh;
                        dto.DiaChi = hs.DiaChi;
                        dto.Sdt = hs.Sdt;
                        dto.Email = hs.Email;
                        dto.MaLop = hs.MaLop;
                        res.Add(dto);
                    }    
                    
                }
            }
            catch (Exception ex)
            {
                res = null;
            }
            return res;
        }

        public bool Update(HocSinhDTO hs)
        {
            bool res = false;
            var c = db.HocSinhDbs.FirstOrDefault(x=>x.MaHs == hs.MaHs);
            if(c.TenHs !=hs.TenHs)
                c.TenHs=hs.TenHs;
            if (c.GioiTinh != hs.GioiTinh)
                c.GioiTinh = hs.GioiTinh;
            if (c.NgaySinh != hs.NgaySinh)
                c.NgaySinh = hs.NgaySinh;
            if (c.DiaChi != hs.DiaChi)
                c.DiaChi = hs.DiaChi;
            if (c.Sdt != hs.Sdt)
                c.Sdt = hs.Sdt;
            if (c.Email != hs.Email)
                c.Email = hs.Email;
            if (c.MaLop != hs.MaLop)
                c.MaLop = hs.MaLop;
            try
            {
                db.HocSinhDbs.Update(c);
                db.SaveChanges();
                res = true;
            }
            catch (Exception ex)
            {
                res = false;
            }
            return res;
        }
        public bool Delete(string maHS)
        {
            bool res = false;
            var hs = db.HocSinhDbs.FirstOrDefault(x => x.MaHs == maHS);
            try
            {
                db.HocSinhDbs.Remove(hs);
                db.SaveChanges();
                res = true;
            }
            catch (Exception ex)
            {
                res = false;
            }
            return res;
        }
        public HocSinhDTO Add(HocSinhDTO hs)
        {
            if (db.HocSinhDbs.FirstOrDefault(x=>x.MaHs == hs.MaHs) == null)
            {
                HocSinhDTO res = new HocSinhDTO();
                var c = new HocSinhDb();
                c.MaHs = hs.MaHs;
                c.TenHs = hs.TenHs;
                c.GioiTinh = hs.GioiTinh;
                c.NgaySinh = hs.NgaySinh;
                c.Sdt = hs.Sdt;
                c.DiaChi = hs.DiaChi;
                c.Email = hs.Email;
                c.MaLop = hs.MaLop;
                try
                {
                    db.HocSinhDbs.Add(c);
                    db.SaveChanges();
                    res.MaHs = c.MaHs;
                    res.TenHs = c.TenHs;
                    res.GioiTinh = c.GioiTinh;
                    res.NgaySinh = c.NgaySinh;
                    res.Sdt = c.Sdt;
                    res.DiaChi = c.DiaChi;
                    res.Email = c.Email;
                    res.MaLop = c.MaLop;
                }
                catch (Exception ex)
                {
                    res = null;
                }
                return res;
            }
            return null;
        }
    }
}

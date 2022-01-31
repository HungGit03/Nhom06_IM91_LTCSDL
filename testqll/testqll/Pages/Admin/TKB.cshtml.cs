using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Text.Json;
using QLL.BLL;
using QLL.DTO;
using System.Collections.Generic;
using System.Linq;
using System;

namespace QuanLyLop2_ASP.NETCore.Pages
{
    public class TKBModel : PageModel
    {
        private TKBBLL busTKB;
        private KhoaHocBLL busKH;
        private List<KhoaHocDTO> lstKH;
        public List<TKBDTO> lstTKB;

        public List<KhoaHocDTO> LstKH { get => lstKH; set => lstKH = value; }

        public TKBModel()
        {
            busKH = new KhoaHocBLL();
            busTKB = new TKBBLL();
        }
        public void OnGet()
        {
            LstKH = busKH.GetAll().ToList();
            lstTKB = busTKB.GetAll().ToList();
        }
        public IActionResult OnPostUpdate(String tkb)
        {
            var obj = JsonSerializer.Deserialize<TKBDTO>(tkb);
            var res = busTKB.Update(obj);
            if (res)
                return new ObjectResult(new { success = true, tkb = obj }) { StatusCode = 200 };
            else
                return new ObjectResult(new { success = false }) { StatusCode = 500 };
        }
        public IActionResult OnPostDelete(String maTKB)
        {
            var id = int.Parse(maTKB);
            var res = busTKB.Delete(id);
            if (res)
                return new ObjectResult(new { success = true }) { StatusCode = 200 };
            else
                return new ObjectResult(new { success = false }) { StatusCode = 500 };
        }
        public IActionResult OnPostAdd(String tkb)
        {
            var obj = JsonSerializer.Deserialize<TKBDTO>(tkb);
            var res = busTKB.Add(obj);
            if (res != null)
                return new ObjectResult(new { success = true, tkb = res }) { StatusCode = 200 };
            else
                return new ObjectResult(new { success = false }) { StatusCode = 500 };
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Text.Json;
using QLL.BLL;
using QLL.DTO;

namespace QuanLyLop.Pages
{
    public class ChiTietTKBModel : PageModel
    {
        private TKBCTBLL bus;
        public List<TKBCTDTO> lst;
        public ChiTietTKBModel()
        {
            bus = new TKBCTBLL();
        }
        public void OnGet()
        {
            lst = bus.GetAll().ToList();
        }
        public IActionResult OnPostUpdate(String tkbct)
        {
            var obj = JsonSerializer.Deserialize<TKBCTDTO>(tkbct);
            var res = bus.Update(obj);
            if (res)
                return new ObjectResult(new { success = true, tkbct = obj }) { StatusCode = 200 };
            else
                return new ObjectResult(new { success = false }) { StatusCode = 500 };
        }
        public IActionResult OnPostDelete(String maLop, string thu, string tiet)
        {
            var idLop = int.Parse(maLop);
            var prThu = int.Parse(thu);
            var prTiet = int.Parse(tiet);
            var res = bus.Delete(idLop, prThu, prTiet);
            if (res)
                return new ObjectResult(new { success = true }) { StatusCode = 200 };
            else
                return new ObjectResult(new { success = false }) { StatusCode = 500 };
        }
        public IActionResult OnPostAdd(String tkbct)
        {
            var obj = JsonSerializer.Deserialize<TKBCTDTO>(tkbct);
            var res = bus.Add(obj);
            if (res != null)
                return new ObjectResult(new { success = true, tkbct = res }) { StatusCode = 200 };
            else
                return new ObjectResult(new { success = false }) { StatusCode = 500 };
        }
    }
}

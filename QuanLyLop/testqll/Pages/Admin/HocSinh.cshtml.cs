using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Text.Json;
using QLL.BLL;
using QLL.DTO;
using System.Linq;
using System.Collections.Generic;
using System;

namespace QuanLyLop2_ASP.NETCore.Pages
{
    public class HocSinhModel : PageModel
    {
        private HocSinhBLL busHS;
        private LopBLL busLop;
        public List<HocSinhDTO> lstHS;
        public List<LopDTO> lstLop;
        public int TotalPage;
        public HocSinhModel()
        {
           busHS = new HocSinhBLL();
           busLop = new LopBLL(); 
        }
        public void OnGet()
        {
            int size = 5;
            lstHS = busHS.GetAll().Take(size).ToList();
            lstLop = busLop.GetAll().ToList();
            var totalRecord = busHS.GetAll()    .Count();
            var tottalPage = (totalRecord % size) == 0 ? (int)(totalRecord / size) : (int)(totalRecord / size + 1);
        }
        public IActionResult OnPostList(string filter)
        {
            var obj = JsonSerializer.Deserialize<Filter>(filter);
            var Data = busHS.GetHSByPage(obj.Page, obj.Size);
            return new ObjectResult(new { success = true, data = Data }) { StatusCode = 200 };
        }
        public IActionResult OnPostUpdate(String hs)
        {
            var obj = JsonSerializer.Deserialize<HocSinhDTO>(hs);
            var res = busHS.Update(obj);
            if (res)
                return new ObjectResult(new { success = true, hs = obj }) { StatusCode = 200 };
            else
                return new ObjectResult(new { success = false }) { StatusCode = 500 };
        }
        public IActionResult OnPostDelete(String maHS)
        {
            var id = maHS;
            var res = busHS.Delete(id);
            if (res)
                return new ObjectResult(new { success = true }) { StatusCode = 200 };
            else
                return new ObjectResult(new { success = false }) { StatusCode = 500 };
        }
        public IActionResult OnPostAdd(String hs)
        {
            var obj = JsonSerializer.Deserialize<HocSinhDTO>(hs);
            var res = busHS.Add(obj);
            if (res != null)
                return new ObjectResult(new { success = true, hs = res }) { StatusCode = 200 };
            else
                return new ObjectResult(new { success = false, }) { StatusCode = 500 };
        }
    }
}

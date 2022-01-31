using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using QLL.BLL;
using QLL.DTO;

namespace QuanLyLop.Pages
{
    public class InFo_LopModel : PageModel
    {
        private LopBLL busLop;
        private HocSinhBLL busHS;
        public List<HocSinhDTO> lstHS;
        public LopDTO lop;

        [BindProperty(SupportsGet = true)]
        public string maLop { get; set; }

        [BindProperty]
        [DisplayName("Mã học sinh")]
        public string maHS { get; set; }

        [BindProperty]
        [DisplayName("Họ tên")]
        public string tenHS { get; set; }
        public InFo_LopModel()
        {
            busLop = new LopBLL();
            busHS = new HocSinhBLL();
        }
        public void OnGet()
        {
            if(maLop != null)
            {
                int id = int.Parse(maLop);
                lop = busLop.GetLopById(id);
                lstHS = busHS.GetHSByID(id).ToList();
            }           
        }
        
        public void OnPost()
        {
            int id = int.Parse(maLop);
            lop = busLop.GetLopById(id);
            lstHS = busHS.GetHSByID(id).ToList();
            var temp1 = new List<HocSinhDTO>();
            if (tenHS != null && tenHS != "")
            {
                temp1 = (from hs in lstHS
                         where hs.TenHs.ToLower().Contains(tenHS.ToLower())
                         select hs).ToList();
                lstHS = temp1;
            }
            if (maHS != null && maHS != "")
            {
                temp1 = (from hs in lstHS
                         where hs.MaHs == maHS
                         select hs).ToList();
                lstHS = temp1;
            }
        }
    }
}

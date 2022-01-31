using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using QLL.BLL;
using QLL.DTO;
using testqll.Pages;

namespace QuanLyLop.Pages
{
    public class HomeAdminModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;

        private TaiKhoanAdminBLL busTKA;
        private TaiKhoanGVBLL busTKGV;
        private TaiKhoanHSBLL busTKHS;
        private GiaoVienBLL busGV;
        private HocSinhBLL busHS;
        private LopBLL busLop;
        public List<LopDTO> lstLop;
        public int totalL, totalHS, totalGV, totalTK;

        public HomeAdminModel(ILogger<IndexModel> logger)
        {
            _logger = logger;
            busTKA = new TaiKhoanAdminBLL();
            busTKGV = new TaiKhoanGVBLL();
            busTKHS = new TaiKhoanHSBLL();
            busLop = new LopBLL();
            busGV = new GiaoVienBLL();
            busHS = new HocSinhBLL();
        }

        public void OnGet()
        {
            lstLop = busLop.GetAll().ToList();
            totalGV = busGV.GetAll().Count;
            totalHS = busHS.GetAll().Count;
            totalL = busLop.GetAll().Count;
            totalTK = busTKA.GetAll().Count + busTKGV.GetAll().Count + busTKHS.GetAll().Count;
        }
    }
}

#pragma checksum "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "148fa695bda936260ecd027c6ef2d4bd41d692a9"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(testqll.Pages.Admin.Pages_Admin_TaiKhoanGV), @"mvc.1.0.razor-page", @"/Pages/Admin/TaiKhoanGV.cshtml")]
namespace testqll.Pages.Admin
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\_ViewImports.cshtml"
using testqll;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
using QLL.DTO;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
using System.Text.Json;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
using Microsoft.AspNetCore.Antiforgery;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"148fa695bda936260ecd027c6ef2d4bd41d692a9", @"/Pages/Admin/TaiKhoanGV.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"9f603635730e0b9d9481a2739a97b83f9b692d31", @"/Pages/_ViewImports.cshtml")]
    public class Pages_Admin_TaiKhoanGV : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 4 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
Write(Html.AntiForgeryToken());

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
#nullable restore
#line 8 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
  
   var token = antiforgery.GetAndStoreTokens(HttpContext).RequestToken;

#line default
#line hidden
#nullable disable
            WriteLiteral("<script type=\"text/javascript\">\r\n    var dataTKGV = ");
#nullable restore
#line 12 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
              Write(Html.Raw(JsonSerializer.Serialize(Model.lstTKGV)));

#line default
#line hidden
#nullable disable
            WriteLiteral(@";
</script>
<div class=""text-center"">
    <h1 class=""display-4"">Lớp</h1>
    <p>Danh tài khoản Giáo viên.</p>
    <button type=""button"" onclick=""openModalTKGV(null);"" class=""btn btn-outline-primary btn-sm"">Thêm Tài khoản giáo viên</button>
    <table id=""tableTKGV""class=""table table-striped"">
        <tr>
            <th>Mã tài khoản</th>
            <th>Tên đăng nhập</th>
            <th>Mật khẩu</th>
            <th>Mã giáo viên</th>
            <th>Action</th>
        </tr>
");
#nullable restore
#line 26 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
         foreach (TaiKhoanGVDTO tkgv in Model.lstTKGV)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <tr");
            BeginWriteAttribute("id", " id=\"", 962, "\"", 984, 2);
            WriteAttributeValue("", 967, "trTKGV_", 967, 7, true);
#nullable restore
#line 28 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
WriteAttributeValue("", 974, tkgv.MaTk, 974, 10, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\r\n                <td>");
#nullable restore
#line 29 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
               Write(tkgv.MaTk);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 30 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
               Write(tkgv.TenDangNhap);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 31 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
               Write(tkgv.MatKhau);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 32 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
               Write(tkgv.MaGv);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>\r\n                    <button type=\"button\"");
            BeginWriteAttribute("onclick", " onclick=\"", 1209, "\"", 1245, 3);
            WriteAttributeValue("", 1219, "openModalTKGV(", 1219, 14, true);
#nullable restore
#line 34 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
WriteAttributeValue("", 1233, tkgv.MaTk, 1233, 10, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 1243, ");", 1243, 2, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"btn btn-outline-primary btn-sm\">Sửa</button>\r\n                    <button type=\"button\"");
            BeginWriteAttribute("onclick", " onclick=\"", 1341, "\"", 1374, 3);
            WriteAttributeValue("", 1351, "deleteTKHS(", 1351, 11, true);
#nullable restore
#line 35 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
WriteAttributeValue("", 1362, tkgv.MaTk, 1362, 10, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 1372, ");", 1372, 2, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"btn btn-outline-danger btn-sm\">xoá</button>\r\n                </td>\r\n            </tr>\r\n");
#nullable restore
#line 38 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\TaiKhoanGV.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"    </table>
</div>
<div id =""DivModalTKGV"" class=""modal"" tabindex=""-1"" role=""dialog"">
  <div class=""modal-dialog modal-lg"" role=""document"">
    <div class=""modal-content"">
      <div class=""modal-header"">
        <h5 class=""modal-title"">Sửa Tài khoản: <span id=""MaTKGV""></span></h5>
        <button type=""button"" class=""close"" data-dismiss=""modal"" onclick=""closeModal()"" aria-label=""Close"">
          <span aria-hidden=""true"">&times;</span>
        </button>
      </div>
      <div class=""modal-body"">
        <div class=""form-group"">
            <label for=""txtTDN"">Tên đăng nhập</label>
            <input type=""text"" class=""form-control"" id=""txtTDN"" aria-describedby=""TDNHelp"" placeholder=""Tên Đăng nhập"">
            <small id=""TDNHelp"" class=""form-text text-muted"">Không được bỏ trống.</small>
        </div>
        <div class=""form-group"">
            <label for=""txtMK"">Mật khẩu</label>
            <input type=""text"" class=""form-control"" id=""txtMK"" aria-describedby=""MKHelp"" placeholder=""Nhập m");
            WriteLiteral(@"ật khẩu"">
            <small id=""MKHelp"" class=""form-text text-muted"">Không được bỏ trống.</small>
        </div>
        <div class=""form-group"">
            <label for=""txtMaGv"">Mật khẩu</label>
            <input type=""text"" class=""form-control"" id=""txtMaGV"" aria-describedby=""MaGVHelp"" placeholder=""Nhập nã giáo viên"">
            <small id=""MaGVHelp"" class=""form-text text-muted"">Không được bỏ trống.</small>
        </div>
      </div>
      <div class=""modal-footer"">
        <button type=""button"" class=""btn btn-secondary"" onclick=""closeModal()"" data-dismiss=""modal"">Close</button>
        <button type=""button"" onclick=""saveTKGV()"" class=""btn btn-primary"">Save changes</button>
      </div>
    </div>
  </div>
</div>
");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public IAntiforgery antiforgery { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<QuanLyLop2_ASP.NETCore.Pages.TaiKhoanGVModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<QuanLyLop2_ASP.NETCore.Pages.TaiKhoanGVModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<QuanLyLop2_ASP.NETCore.Pages.TaiKhoanGVModel>)PageContext?.ViewData;
        public QuanLyLop2_ASP.NETCore.Pages.TaiKhoanGVModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591

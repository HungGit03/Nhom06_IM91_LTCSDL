#pragma checksum "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "1c8f30fc438ed408a3ffd45578090e5906d5048a"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(testqll.Pages.Admin.Pages_Admin_Admin), @"mvc.1.0.razor-page", @"/Pages/Admin/Admin.cshtml")]
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
#line 2 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
using QLL.DTO;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
using System.Text.Json;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
using Microsoft.AspNetCore.Antiforgery;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"1c8f30fc438ed408a3ffd45578090e5906d5048a", @"/Pages/Admin/Admin.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"9f603635730e0b9d9481a2739a97b83f9b692d31", @"/Pages/_ViewImports.cshtml")]
    public class Pages_Admin_Admin : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 4 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
Write(Html.AntiForgeryToken());

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n");
#nullable restore
#line 8 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
  
    var token = antiforgery.GetAndStoreTokens(HttpContext).RequestToken;

#line default
#line hidden
#nullable disable
            WriteLiteral("<script type=\"text/javascript\">\r\n    var dataAd = ");
#nullable restore
#line 12 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
            Write(Html.Raw(JsonSerializer.Serialize(Model.lstAd)));

#line default
#line hidden
#nullable disable
            WriteLiteral(@";
</script>
<div class=""text-center"">
    <h1 class=""display-4"">Lớp</h1>
    <p>Danh sách Admin.</p>
    <button type=""button"" onclick=""openModalAd(null);"" class=""btn btn-outline-primary btn-sm"">Thêm admin</button>
    <table id=""tableAd"" class=""table table-striped"">
        <tr>
            <th>Mã Admin</th>
            <th>Tên Admin</th>
            <th>Giới tính</th>
            <th>Ngày sinh</th>
            <th>Đia chỉ</th>
            <th>SĐT</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
");
#nullable restore
#line 29 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
         foreach (AdminDTO ad in Model.lstAd)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <tr");
            BeginWriteAttribute("id", " id=\"", 993, "\"", 1014, 2);
            WriteAttributeValue("", 998, "trAd_", 998, 5, true);
#nullable restore
#line 31 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
WriteAttributeValue("", 1003, ad.MaAdmin, 1003, 11, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\r\n                <td>");
#nullable restore
#line 32 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
               Write(ad.MaAdmin);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 33 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
               Write(ad.TenAdmin);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 34 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
               Write(ad.GioiTinh);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 35 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
               Write(ad.NgaySinh);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 36 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
               Write(ad.DiaChi);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 37 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
               Write(ad.Sdt);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 38 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
               Write(ad.Email);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>\r\n                    <button type=\"button\"");
            BeginWriteAttribute("onclick", " onclick=\"", 1343, "\"", 1380, 3);
            WriteAttributeValue("", 1353, "openModalAd(\'", 1353, 13, true);
#nullable restore
#line 40 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
WriteAttributeValue("", 1366, ad.MaAdmin, 1366, 11, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 1377, "\');", 1377, 3, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"btn btn-outline-primary btn-sm\">Sửa</button>\r\n                    <button type=\"button\"");
            BeginWriteAttribute("onclick", " onclick=\"", 1476, "\"", 1510, 3);
            WriteAttributeValue("", 1486, "deleteAd(\'", 1486, 10, true);
#nullable restore
#line 41 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
WriteAttributeValue("", 1496, ad.MaAdmin, 1496, 11, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 1507, "\');", 1507, 3, true);
            EndWriteAttribute();
            WriteLiteral(" class=\"btn btn-outline-danger btn-sm\">xoá</button>\r\n                </td>\r\n            </tr>\r\n");
#nullable restore
#line 44 "F:\Web Projects\.NET Core\QLL\QuanLyLop\testqll\testqll\Pages\Admin\Admin.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"    </table>
</div>
<div id=""DivModalAd"" class=""modal"" tabindex=""-1"" role=""dialog"">
    <div class=""modal-dialog modal-lg"" role=""document"">
        <div class=""modal-content"">
            <div class=""modal-header"">
                <h5 class=""modal-title"">Sửa admin: <span id=""MaAd""></span></h5>
                <button type=""button"" class=""close"" data-dismiss=""modal"" onclick=""closeModal()"" aria-label=""Close"">
                    <span aria-hidden=""true"">&times;</span>
                </button>
            </div>
            <div class=""modal-body"">
                <div class=""form-group"">
                    <label for=""txtMaAd"">Mã admin</label>
                    <input type=""text"" class=""form-control"" id=""txtMaAd"" aria-describedby=""MaAdHelp"" placeholder=""Mã admin: ad..."">
                    <small id=""MaAdHelp"" class=""form-text text-muted"">Không được bỏ trống, 5 kí tự.</small>
                </div>
                <div class=""form-group"">
                    <label for=""txtTenAd"">Tên admi");
            WriteLiteral(@"n</label>
                    <input type=""text"" class=""form-control"" id=""txtTenAd"" aria-describedby=""TenAdHelp"" placeholder=""Tên admin"">
                    <small id=""TenAdHelp"" class=""form-text text-muted"">Không được bỏ trống.</small>
                </div>
                <div class=""form-group"">
                    <label for=""txtNS"">Ngày sinh</label>
                    <input type=""date"" class=""form-control"" id=""txtNS"" value=""2000-01-01""
                           aria-describedby=""PhongHocHelp"">
                    <small id=""NSHelp"" class=""form-text text-muted"">Không được bỏ trống.</small>
                </div>
                <div class=""form-group"">
                    <label for=""selGT"">Giới tính</label>
                    <select class=""form-control"" id=""selGT"">
                        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("option", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1c8f30fc438ed408a3ffd45578090e5906d5048a10768", async() => {
                WriteLiteral("Nam");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("option", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1c8f30fc438ed408a3ffd45578090e5906d5048a11748", async() => {
                WriteLiteral("Nữ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.OptionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_OptionTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
                    </select>
                </div>
                <div class=""form-group"">
                    <label for=""txtDiaChi"">Địa chỉ</label>
                    <input type=""text"" class=""form-control"" id=""txtDiaChi"" aria-describedby=""DiaChiHelp"" placeholder=""Địa chỉ"">
                    <small id=""DiaChiHelp"" class=""form-text text-muted"">Không được bỏ trống.</small>
                </div>
                <div class=""form-group"">
                    <label for=""txtSDT"">Số điện thoại</label>
                    <input type=""text"" class=""form-control"" id=""txtSDT"" aria-describedby=""SDTlHelp"" placeholder=""Số điện thoại"">
                    <small id=""SDTHelp"" class=""form-text text-muted"">Không được bỏ trống.</small>
                </div>
                <div class=""form-group"">
                    <label for=""txtEmail"">Email</label>
                    <input type=""email"" class=""form-control"" id=""txtEmail"" aria-describedby=""DiaChiHelp"" placeholder=""Địa chỉ email"">
                  ");
            WriteLiteral(@"  <small id=""EmailHelp"" class=""form-text text-muted"">Không được bỏ trống.</small>
                </div>
            </div>
            <div class=""modal-footer"">
                <button type=""button"" class=""btn btn-secondary"" onclick=""closeModal()"" data-dismiss=""modal"">Close</button>
                <button type=""button"" onclick=""saveAd()"" class=""btn btn-primary"">Save changes</button>
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<QuanLyLop2_ASP.NETCore.Pages.AdminModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<QuanLyLop2_ASP.NETCore.Pages.AdminModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<QuanLyLop2_ASP.NETCore.Pages.AdminModel>)PageContext?.ViewData;
        public QuanLyLop2_ASP.NETCore.Pages.AdminModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591

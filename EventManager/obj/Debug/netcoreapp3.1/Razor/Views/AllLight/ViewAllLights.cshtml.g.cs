#pragma checksum "C:\Users\Abhin\Desktop\College Material\Projects\EventManager\EventManager\Views\AllLight\ViewAllLights.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5a61b5fb9d53a7858aca9fa02feb1c7d8d941566"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_AllLight_ViewAllLights), @"mvc.1.0.view", @"/Views/AllLight/ViewAllLights.cshtml")]
namespace AspNetCore
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
#line 1 "C:\Users\Abhin\Desktop\College Material\Projects\EventManager\EventManager\Views\_ViewImports.cshtml"
using EventManager;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\Abhin\Desktop\College Material\Projects\EventManager\EventManager\Views\_ViewImports.cshtml"
using EventManager.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5a61b5fb9d53a7858aca9fa02feb1c7d8d941566", @"/Views/AllLight/ViewAllLights.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"7c91e6239315cfedf288ae648b721719dcd30721", @"/Views/_ViewImports.cshtml")]
    public class Views_AllLight_ViewAllLights : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "C:\Users\Abhin\Desktop\College Material\Projects\EventManager\EventManager\Views\AllLight\ViewAllLights.cshtml"
   ViewData["Title"] = "All Lights"; 

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\Abhin\Desktop\College Material\Projects\EventManager\EventManager\Views\AllLight\ViewAllLights.cshtml"
   Layout = "~/Views/Shared/_AdminLayout.cshtml"; 

#line default
#line hidden
#nullable disable
            WriteLiteral(@"

<div class=""container-fluid"">
    <div class=""card"">
        <div class=""card-body table-responsive"">
            <table id=""myTable"" class=""table table-striped table-hover table-bordered dt-responsive nowrap"" width=""100%"" cellspacing=""0"">
                <thead>
                    <tr>
                        <th>LightID</th>
                        <th>LightName</th>
                        <th>LightType</th>
                        <th>LightCost</th>
                        <th>Createdate</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>

    <script>
        $(document).ready(function ()
        {
            $(""#myTable"").DataTable({
                ""processing"": true, // for show progress bar
                ""serverSide"": true, // for process server side
                ""filter"": true, // this is for disable filter (search box)
                ");
            WriteLiteral(@"""orderMulti"": false, // for disable multiple column at once
                ""ajax"": {
                    ""url"": ""/AllLight/LoadLightData"",
                    ""type"": ""POST"",
                    ""datatype"": ""json""
                },
                ""columnDefs"":
                [{
                    ""targets"": [0],
                    ""visible"": false,
                    ""searchable"": false
                }],
                ""aoColumnDefs"": [{
                    ""bSortable"": false,
                    ""aTargets"": [5, 6]
                }],
                ""columns"": [
                    { ""data"": ""LightID"", ""name"": ""LightID"", ""autoWidth"": true },
                    { ""data"": ""LightName"", ""name"": ""LightName"", ""autoWidth"": true },
                    { ""data"": ""LightTypeName"", ""name"": ""LightType"", ""autoWidth"": true },
                    { ""data"": ""LightCost"", ""name"": ""LightCost"", ""autoWidth"": true },
                    { ""data"": ""Createdate"", ""name"": ""Createdate"", ""autoWidth"": true");
            WriteLiteral(@" },
                    {
                        ""render"": function (data, type, full, meta)
                        { return '<div class=""col d-grid mx-auto""><a class=""btn btn-info"" href=""/Light/Edit/' + full.LightID + '"">Edit</a></div>'; }
                    },
                    {
                        data: null, render: function (data, type, row)
                        {
                            return ""<div class='col d-grid mx-auto'><a href='#' class='btn btn-danger' onclick=DeleteData('"" + row.LightID + ""'); >Delete</a></div>"";
                        }
                    },
                ]

            });
        });


        function DeleteData(ID)
        {
            if (confirm(""Are you sure you want to delete ...?""))
            {
                DeleteLight(ID);
            }
            else
            {
                return false;
            }
        }


        function DeleteLight(LightID)
        {
            var url = '");
#nullable restore
#line 84 "C:\Users\Abhin\Desktop\College Material\Projects\EventManager\EventManager\Views\AllLight\ViewAllLights.cshtml"
                  Write(Url.Content("~/"));

#line default
#line hidden
#nullable disable
            WriteLiteral(@"' + ""Light/Delete"";

            $.post(url, { ID: LightID }, function (data)
            {
                if (data)
                {
                    oTable = $('#myTable').DataTable();
                    oTable.draw();
                }
                else
                {
                    alert(""Something Went Wrong!"");
                }
            });
        }
    </script>
</div>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
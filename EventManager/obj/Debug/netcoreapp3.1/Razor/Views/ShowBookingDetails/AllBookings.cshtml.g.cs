#pragma checksum "C:\Users\Abhin\Desktop\College Material\Projects\EventManager\EventManager\Views\ShowBookingDetails\AllBookings.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "46cefba44fef947a8be6f104a9ec82e39705ae49"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_ShowBookingDetails_AllBookings), @"mvc.1.0.view", @"/Views/ShowBookingDetails/AllBookings.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"46cefba44fef947a8be6f104a9ec82e39705ae49", @"/Views/ShowBookingDetails/AllBookings.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"7c91e6239315cfedf288ae648b721719dcd30721", @"/Views/_ViewImports.cshtml")]
    public class Views_ShowBookingDetails_AllBookings : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "C:\Users\Abhin\Desktop\College Material\Projects\EventManager\EventManager\Views\ShowBookingDetails\AllBookings.cshtml"
   Layout = "~/Views/Shared/_AdminLayout.cshtml"; 

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\Abhin\Desktop\College Material\Projects\EventManager\EventManager\Views\ShowBookingDetails\AllBookings.cshtml"
   ViewData["Title"] = "All Booking Details"; 

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
                        <th>BookingID</th>
                        <th>BookingNo</th>
                        <th>BookingDate</th>
                        <th>BookingApproval</th>
                        <th>BookingApprovalDate</th>
                        <th>Process</th>
                    </tr>
                </thead>
            </table>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $(""#myTable"").DataTable({
                ""processing"": true, // for show progress bar
                ""serverSide"": true, // for process server side
                ""filter"": true, // this is for disable filter (search box)
                ""orderMulti"": false, // for disable multiple column at");
            WriteLiteral(@" once
                ""ajax"": {
                    ""url"": ""/ShowBookingDetails/LoadAllBookings"",
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
                    ""aTargets"": [4, 5]
                }],
                ""columns"":[
                    { ""data"": ""BookingID"", ""name"": ""BookingID"" },
                    { ""data"": ""BookingNo"", ""name"": ""BookingNo"", ""autoWidth"": true },
                    { ""data"": ""BookingDate"", ""name"": ""BookingDate"", ""autoWidth"": true },
                    { ""data"": ""BookingApproval"", ""name"": ""BookingApproval"" },
                    { ""data"": ""BookingApprovalDate"", ""name"": ""BookingApprovalDate"" },
                    {
                        data: null, rende");
            WriteLiteral(@"r: function (data, type, row) {
                            return row.BookingApproval == ""Pending"" ?
                                '<div class=""col d-grid mx-auto""><a class=""btn btn-info"" href=""/ShowBookingDetails/BookingApproval?BookingNo=' + row.BookingNo + '"">Process</a></div>' :
                                row.BookingApproval == ""Cancelled"" ? row.BookingApproval : row.BookingApproval
                                ;
                        }
                    },
                ]

            });
        });


        function DeleteData(ID) {
            if (confirm(""Are you sure you want to delete ...?"")) {
                DeleteLight(ID);
            }
            else {
                return false;
            }
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

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        Hello World!!</p>
    <h1>Box List</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
        EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="CartonNumber" HeaderText="CartonNumber" SortExpression="CartonNumber" />
            <asp:BoundField DataField="BagNumber" HeaderText="BagNumber" SortExpression="BagNumber" />
            <asp:BoundField DataField="Skid_Number" HeaderText="Skid_Number" SortExpression="Skid_Number" />
            <asp:BoundField DataField="Wholesaler_ID" HeaderText="Wholesaler_ID" SortExpression="Wholesaler_ID" />
            <asp:BoundField DataField="CycleNumber" HeaderText="CycleNumber" SortExpression="CycleNumber" />
            <asp:BoundField DataField="Report_Type" HeaderText="Report_Type" SortExpression="Report_Type" />
            <asp:BoundField DataField="Item_Count" HeaderText="Item_Count" SortExpression="Item_Count" />
            <asp:BoundField DataField="Vendor" HeaderText="Vendor" SortExpression="Vendor" />
            <asp:BoundField DataField="Processor_Name" HeaderText="Processor_Name" SortExpression="Processor_Name" />
            <asp:BoundField DataField="Processor_Login" HeaderText="Processor_Login" SortExpression="Processor_Login" />
            <asp:BoundField DataField="Shift_Type" HeaderText="Shift_Type" SortExpression="Shift_Type" />
            <asp:BoundField DataField="Leads_Stamp_MH_Stamp_Number" HeaderText="Leads_Stamp_MH_Stamp_Number"
                SortExpression="Leads_Stamp_MH_Stamp_Number" />
            <asp:CheckBoxField DataField="Passed_Inspection" HeaderText="Passed_Inspection" SortExpression="Passed_Inspection" />
            <asp:BoundField DataField="QA_Auditor" HeaderText="QA_Auditor" SortExpression="QA_Auditor" />
            <asp:BoundField DataField="Error_Type" HeaderText="Error_Type" SortExpression="Error_Type" />
            <asp:BoundField DataField="Extra_Item_Count" HeaderText="Extra_Item_Count" SortExpression="Extra_Item_Count" />
            <asp:BoundField DataField="Mixing_Item_Count" HeaderText="Mixing_Item_Count" SortExpression="Mixing_Item_Count" />
            <asp:BoundField DataField="Haz_Item_Count" HeaderText="Haz_Item_Count" SortExpression="Haz_Item_Count" />
            <asp:BoundField DataField="Create_Date" HeaderText="Create_Date" SortExpression="Create_Date" />
            <asp:BoundField DataField="Created_By" HeaderText="Created_By" SortExpression="Created_By" />
            <asp:BoundField DataField="Date_OF_QA_Inspection" HeaderText="Date_OF_QA_Inspection"
                SortExpression="Date_OF_QA_Inspection" />
            <asp:BoundField DataField="Entering_For" HeaderText="Entering_For" SortExpression="Entering_For" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:THREECON_DATAConnectionString1 %>"
        ProviderName="<%$ ConnectionStrings:THREECON_DATAConnectionString1.ProviderName %>"
        SelectCommand="SELECT [CartonNumber], [BagNumber], [Skid_Number], [Wholesaler_ID], [CycleNumber], [Report_Type], [Item_Count], [Vendor], [Processor_Name], [Processor_Login], [Shift_Type], [Leads_Stamp_MH_Stamp_Number], [Passed_Inspection], [QA_Auditor], [Error_Type], [Extra_Item_Count], [Mixing_Item_Count], [Haz_Item_Count], [Create_Date], [Created_By], [Date_OF_QA_Inspection], [Entering_For] FROM [BoxInspections]">
    </asp:SqlDataSource>
</asp:Content>

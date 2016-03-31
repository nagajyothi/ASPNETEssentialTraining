<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SkidInspectionsList.aspx.cs"
    Inherits="SkidInspectionsList" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
</head>
<body>
    <script type="text/javascript">
        function showpop() {
            $('#addpop').dialog();
            //event.preventDefault();
        }
    </script>
    <form id="form1" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <br />
        <h1>
            Skid Inspections for Today</h1>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="QA_Auditor"
            DataTextField="OptionName" DataValueField="ID">
            <asp:ListItem Value="0">None</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:SqlDataSource ID="QA_Auditor" runat="server" ConnectionString="<%$ ConnectionStrings:THREECON_ADMINConnectionString1 %>"
            SelectCommand="SELECT [OptionSet_ID], [OptionName], [ID] FROM [DataOptions_Values] WHERE ([OptionSet_ID] = @OptionSet_ID)">
            <SelectParameters>
                <asp:Parameter DefaultValue="52" Name="OptionSet_ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gvSkidInspections" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
            EmptyDataText="There are no data records to display." AllowPaging="True" CellPadding="4"
            ForeColor="#333333" GridLines="None" PageSize="25">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Skid_Number" HeaderText="Skid Number" SortExpression="Skid_Number">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Box_Count" HeaderText="Box Count" SortExpression="Box_Count">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Leads_MH_Stamp_Number" HeaderText="Leads MH/Stamp Number"
                    SortExpression="Leads_MH_Stamp_Number">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="Passed_Inspection" HeaderText="Passed Inspection" SortExpression="Passed_Inspection">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:CheckBoxField>
                <asp:BoundField DataField="Wholesaler_ID" HeaderText="Wholesaler ID" SortExpression="Wholesaler_ID">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="QA_Auditor" HeaderText="QA Auditor" SortExpression="QA_Auditor">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="CycleNumber" HeaderText="Cycle Number" SortExpression="CycleNumber">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Report_Type" HeaderText="Report Type" SortExpression="Report_Type">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Date_Of_QA_Inspection" HeaderText="Date Of QA Inspection"
                    SortExpression="Date_Of_QA_Inspection" DataFormatString="{0:d}">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Created_By" HeaderText="Created By" SortExpression="Created_By">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Create_Date" HeaderText="Create Date" SortExpression="Create_Date"
                    DataFormatString="{0:d}">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Entering_For" HeaderText="Entering For" SortExpression="Entering_For">
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="Skid_Number" Text="Edit" 
                    DataNavigateUrlFormatString="~/UpdateSkid.aspx?Skid_Number={0}" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
       
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/InsertSKid.aspx">Add New Skid</asp:HyperLink>
        <br />
        <br />
       
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:THREECON_DATAConnectionString1 %>"
            ProviderName="<%$ ConnectionStrings:THREECON_DATAConnectionString1.ProviderName %>"
            SelectCommand="SELECT Skid_Number, Box_Count, Leads_MH_Stamp_Number, Passed_Inspection, Wholesaler_ID, CycleNumber, Report_Type, Date_Of_QA_Inspection, Created_By, Create_Date, Entering_For, QA_Auditor FROM SkidInspections">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

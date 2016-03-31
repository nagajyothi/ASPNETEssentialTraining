<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateSkid.aspx.cs" Inherits="UpdateSkid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" DefaultMode="Edit" 
            ForeColor="#333333" GridLines="None" Height="116px" Width="501px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Skid_Number" HeaderText="Skid_Number" 
                    ReadOnly="True" SortExpression="Skid_Number" />
                <asp:BoundField DataField="Box_Count" HeaderText="Box_Count" 
                    SortExpression="Box_Count" />
                <asp:BoundField DataField="Leads_MH_Stamp_Number" 
                    HeaderText="Leads_MH_Stamp_Number" SortExpression="Leads_MH_Stamp_Number" />
                <asp:CheckBoxField DataField="Passed_Inspection" HeaderText="Passed_Inspection" 
                    SortExpression="Passed_Inspection" />
                <asp:BoundField DataField="Wholesaler_ID" HeaderText="Wholesaler_ID" 
                    SortExpression="Wholesaler_ID" />
                <asp:BoundField DataField="QA_Auditor" HeaderText="QA_Auditor" 
                    SortExpression="QA_Auditor" />
                <asp:BoundField DataField="CycleNumber" HeaderText="CycleNumber" 
                    SortExpression="CycleNumber" />
                <asp:BoundField DataField="Report_Type" HeaderText="Report_Type" 
                    SortExpression="Report_Type" />
                <asp:BoundField DataField="Date_Of_QA_Inspection" DataFormatString="{0:d}" 
                    HeaderText="Date_Of_QA_Inspection" SortExpression="Date_Of_QA_Inspection" />
                <asp:BoundField DataField="Created_By" HeaderText="Created_By" 
                    SortExpression="Created_By" />
                <asp:BoundField DataField="Create_Date" DataFormatString="{0:d}" 
                    HeaderText="Create_Date" SortExpression="Create_Date" />
                <asp:BoundField DataField="Entering_For" HeaderText="Entering_For" 
                    SortExpression="Entering_For" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:THREECON_DATAConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:THREECON_DATAConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [Skid_Number], [Box_Count], [Leads_MH_Stamp_Number], [Passed_Inspection], [Wholesaler_ID], [QA_Auditor], [CycleNumber], [Report_Type], [Date_Of_QA_Inspection], [Created_By], [Create_Date], [Entering_For] FROM [SkidInspections]" 
            UpdateCommand="UPDATE SkidInspections SET Box_Count = @Box_Count, Leads_MH_Stamp_Number = @Leads_MH_Stamp_Number, Passed_Inspection = @Passed_Inspection, Wholesaler_ID = @Wholesaler_ID, QA_Auditor = @QA_Auditor, CycleNumber = @CycleNumber, Report_Type = @Report_Type, Date_Of_QA_Inspection = @Date_Of_QA_Inspection, Created_By = @Created_By, Create_Date = @Create_Date, Entering_For = @Entering_For WHERE (Skid_Number = @Skid_Number)">
            <UpdateParameters>
                <asp:Parameter Name="Box_Count" />
                <asp:Parameter Name="Leads_MH_Stamp_Number" />
                <asp:Parameter Name="Passed_Inspection" />
                <asp:Parameter Name="Wholesaler_ID" />
                <asp:Parameter Name="QA_Auditor" />
                <asp:Parameter Name="CycleNumber" />
                <asp:Parameter Name="Date_Of_QA_Inspection" />
                <asp:Parameter Name="Created_By" />
                <asp:Parameter Name="Create_Date" />
                <asp:Parameter Name="Entering_For" />
                <asp:Parameter Name="Skid_Number" />
                <asp:Parameter Name="Report_Type" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

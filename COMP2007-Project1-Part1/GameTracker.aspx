<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameTracker.aspx.cs" Inherits="COMP2007_Project1_Part1.GameTracker" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<!--
    Author's name: D'Arcey Taylor, Chad Ostler
    Student	Number: 200302660, 200301048
    Date Modified: 2016/06/11
    Version: 0.0.2
    File Description: This file contains the game tracking page
-->

    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Game Data</h1>
                <a href="/GameDetails.aspx" class="btn btn-success btn-sm" onclick=""><i class="fa fa-plus"></i> Add Match Details</a>
                <div>
                <label for="PageSizeDropDownList">Records per Page: </label>
                <asp:DropDownList ID="PageSizeDropDownList" runat="server"
                    AutoPostBack="true" CssClass="btn btn-default btn-sm dropdown-toggle" 
                    OnSelectedIndexChanged="PageSizeDropDownList_SelectedIndexChanged">
                    <asp:ListItem Text="3" Value="3" />
                    <asp:ListItem Text="5" Value="5" />
                    <asp:ListItem Text="10" Value="10" />
                    <asp:ListItem Text="All" Value="10000" />
                </asp:DropDownList>
                </div>

                <asp:GridView runat="server" CssClass="table table-bordered table-stripped table-hover"
                    ID="GameDataGridView" AutoGenerateColumns="false" DataKeyNames="GameID" 
                    OnRowDeleting="GameDataGridView_RowDeleting" AllowPaging="true" PageSize="3" 
                    OnPageIndexChanging="GameDataGridView_PageIndexChanging" AllowSorting="true" 
                    OnSorting="GameDataGridView_Sorting" OnRowDataBound="GameDataGridView_RowDataBound"
                    PagerStyle-CssClass="pagination-ys">

                    <Columns>
                        <asp:BoundField DataField="MatchDate" HeaderText="MatchDate" Visible="true" SortExpression="MatchDate" />
                        <asp:BoundField DataField="MatchNumber" HeaderText="Match Number" Visible="true" SortExpression="MatchNumber" />
                        <asp:BoundField DataField="RoundNumber" HeaderText="RoundNumber" Visible="true" SortExpression="RoundNumber" />
                        <asp:BoundField DataField="FirstTeam" HeaderText="FirstTeam" Visible="true" SortExpression="FirstTeam" />
                        <asp:BoundField DataField="SecondTeam" HeaderText="SecondTeam" Visible="true" SortExpression="SecondTeam" />
                        <asp:BoundField DataField="Winner" HeaderText="Winner" Visible="true" SortExpression="Winner" />
                        <asp:BoundField DataField="PlayOfTheGame" HeaderText="Play of the Game" Visible="true" SortExpression="PlayOfTheGame" />

                        <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" 
                            NavigateUrl="~/GameDetails.aspx" ControlStyle-CssClass="btn btn-primary btn-sm" runat="server" 
                            DataNavigateUrlFields="GameID" DataNavigateUrlFormatString="GameDetails.aspx?GameID={0}" />
                        <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o -fa-lg'></i>Delete" 
                            ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                    </Columns>

                </asp:GridView>
                <a class="btn btn-primary" href="GameSelection.aspx">Back <span class="glyphicon glyphicon-chevron-Left"></span></a>
            </div>
        </div>
    </div>
</asp:Content>

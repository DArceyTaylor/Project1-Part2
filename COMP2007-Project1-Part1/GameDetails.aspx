<%@ Page Title="Game Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameDetails.aspx.cs" Inherits="COMP2007_Project1_Part1.GameDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-8">
                <h1>Match Details</h1>
                <h5>All Fields are Required</h5>
                <br />
                <div class="form-group">
                    <label class="control-label" for="DateTextBox">Date: </label>
                    <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" id="DateTextBox" placeholder="Date Format: yyyy/mm/dd" required="true"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid Date! Format: yyyy/mm/dd"
                        ControlToValidate="DateTextBox" MinimumValue="2000/01/01" MaximumValue="2099/01/01"
                         Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large" ></asp:RangeValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="MatchNumberTextBox">Match Number: </label>
                    <asp:TextBox runat="server" CssClass="form-control" id="MatchNumberTextBox" placeholder="Match Number" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="RoundNumberTextBox">Round Number: </label>
                    <asp:TextBox runat="server" CssClass="form-control" id="RoundNumberTextBox" placeholder="Round" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="Team1TextBox">Team 1 Name: </label>
                    <asp:TextBox runat="server" CssClass="form-control" id="Team1TextBox" placeholder="Team 1" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="Team2TextBox">Team 2 Name: </label>
                    <asp:TextBox runat="server" CssClass="form-control" id="TextBox1" placeholder="Team 2" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="POTGTextBox">Play of the game: </label>
                    <asp:TextBox runat="server" CssClass="form-control" id="POTGTextBox" placeholder="Play of the game" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="WinnerTextBox">Winner: </label>
                    <asp:TextBox runat="server" CssClass="form-control" id="WinnerTextBox" placeholder="Winner" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="LengthTextBox">Length of Match: </label>
                    <asp:TextBox runat="server" CssClass="form-control" id="LengthTextBox" placeholder="Length of Match" required="true"></asp:TextBox>
                </div>
                
                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server" UseSubmitBehavior="false"
                        CausesValidation="false" OnClick="CancelButton_Click" />
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server" OnClick="SaveButton_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>


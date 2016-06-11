<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameSelection.aspx.cs" Inherits="COMP2007_Project1_Part2.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Games
                    <small>Select a game</small>
                </h1>
            </div>
        </div>
            <!-- Project One -->
        <div class="row">
            <div class="col-md-7">
                <a href="Tracker.aspx">
                    <img class="img-responsive" src="Assets/Overwatch_(PC).jpg" alt="Overwatch Image">
                </a>
            </div>
            <div class="col-md-5">
                <h3>Overwatch</h3>
                <h4>FPS Shooter</h4>
                <p>A futuristic first person shooter brought to you by the people of Blizzard Entertainment.</p>
                <a class="btn btn-primary" href="OverwatchTracker.aspx">View Game Tracker <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
    </div>
</asp:Content>

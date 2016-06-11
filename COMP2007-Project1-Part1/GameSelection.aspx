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
            <!-- Game One -->
        <div class="row">
            <div class="col-md-7">
                <a href="OverwatchTracker.aspx">
                    <img class="img-responsive" src="Assets/Overwatch_(PC).jpg" alt="Overwatch Image">
                </a>
            </div>
            <div class="col-md-5">
                <h3>Overwatch</h3>
                <h4>First Person Shooter</h4>
                <p>A futuristic first person shooter brought to you by the people of Blizzard Entertainment.</p>
                <a class="btn btn-primary" href="OverwatchTracker.aspx">View Game Tracker <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
                    <!-- Game Two -->
        <div class="row">
            <div class="4u 12u$(mobile) col-md-7">
                <a href="OverwatchTracker.aspx" class="image fit">
                    <img class="img-responsive" src="Assets/League of Legends.jpg" alt="Leauge of Legends Image">
                </a>
            </div>
            <div class="col-md-5">
                <h3>Leauge of Legends</h3>
                <h4>Multiplayer Online Battle Arena</h4>
                <p>A futuristic first person shooter brought to you by the people of Blizzard Entertainment.</p>
                <a class="btn btn-primary" href="OverwatchTracker.aspx">View Game Tracker <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
                    <!-- Game Three -->
        <div class="row">
            <div class="col-md-7">
                <a href="OverwatchTracker.aspx">
                    <img class="img-responsive" src="Assets/rocket-league.jpg" alt="Overwatch Image">
                </a>
            </div>
            <div class="col-md-5">
                <h3>Rocket Leauge</h3>
                <h4>Multiplayer Sports</h4>
                <p>A futuristic first person shooter brought to you by the people of Blizzard Entertainment.</p>
                <a class="btn btn-primary" href="OverwatchTracker.aspx">View Game Tracker <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
                    <!-- Game Four -->
        <div class="row">
            <div class="col-md-7">
                <a href="OverwatchTracker.aspx">
                    <img class="img-responsive" src="Assets/HOTS.jpg" alt="Overwatch Image">
                </a>
            </div>
            <div class="col-md-5">
                <h3>Heroes of the Storm</h3>
                <h4>Multiplayer Online Battle Arena</h4>
                <p>A futuristic first person shooter brought to you by the people of Blizzard Entertainment.</p>
                <a class="btn btn-primary" href="OverwatchTracker.aspx">View Game Tracker <span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
    </div>
</asp:Content>

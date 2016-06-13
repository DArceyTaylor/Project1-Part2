﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using COMP2007_Project1_Part1.Models;
using System.Web.ModelBinding;

namespace COMP2007_Project1_Part1
{
    public partial class GameDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!IsPostBack) && (Request.QueryString.Count > 0))
            {
                this.GetGameData();
            }
        }

        protected void GetGameData()
        {
            // populate the form with existing data from the database
            int GameID = Convert.ToInt32(Request.QueryString["GameID"]);

            //connect to the EF framework
            using (DefaultConnection db = new DefaultConnection())
            {
                //populate a student object instance with the StudentID from the URL paramerter
                Game updatedGame = (from game in db.Games
                                    where game.GameID == GameID
                                    select game).FirstOrDefault();

                //map the student properties to the form controls
                if (updatedGame != null)
                {
                    DateTextBox.Text = updatedGame.MatchDate.ToString();
                    GameNameTextBox.Text = updatedGame.GameName;
                    MatchNumberTextBox.Text = updatedGame.MatchNumber.ToString();
                    RoundNumberTextBox.Text = updatedGame.RoundNumber.ToString();
                    Team1TextBox.Text = updatedGame.FirstTeam;
                    Team2TextBox.Text = updatedGame.SecondTeam;
                    POTGTextBox.Text = updatedGame.PlayOfTheGame;
                    WinnerTextBox.Text = updatedGame.Winner;
                    LengthTextBox.Text = updatedGame.MatchLength.ToString();

                }
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            // redirect back to students page
            Response.Redirect("~/GameTracker.aspx");
        }


        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // use EF to connect to the server
            using (DefaultConnection db = new DefaultConnection())
            {
                // use the Student model to create a new student object and
                // save a new record
                Game newGame = new Game();

                int GameID = 0;

                if (Request.QueryString.Count > 0)// our URL contains a StudentID
                {
                    //get the ID from the URL
                    GameID = Convert.ToInt32(Request.QueryString["GameID"]);

                    //get the current student from the EF db
                    newGame = (from game in db.Games
                               where game.GameID == GameID
                               select game).FirstOrDefault();
                }

                // add data to the new student record
                newGame.MatchDate = Convert.ToDateTime(DateTextBox.Text);
                newGame.GameName = GameNameTextBox.Text;
                newGame.MatchNumber = Convert.ToInt32(MatchNumberTextBox.Text);
                newGame.RoundNumber = Convert.ToInt32(RoundNumberTextBox.Text);
                newGame.FirstTeam = Team1TextBox.Text;
                newGame.SecondTeam = Team2TextBox.Text;
                newGame.PlayOfTheGame = POTGTextBox.Text;
                newGame.Winner = WinnerTextBox.Text;
                newGame.MatchLength = TimeSpan.Parse(LengthTextBox.Text);

                // use LINQ to ADO.NET to add / insert new student to the db
                if (GameID == 0)
                {
                    db.Games.Add(newGame);
                }

                // save our changes also updates and inserts
                db.SaveChanges();

                // redirect back to the updated students page
                Response.Redirect("~/GameTracker.aspx");
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//using statements that are required to connect to EF DB
using COMP2007_Project1_Part1.Models;
using System.Web.ModelBinding;
using System.Linq.Dynamic;

namespace COMP2007_Project1_Part1
{
    public partial class GameTracker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if loading the page for the first time, populate the gamedata grid
            if (!IsPostBack)
            {
                Session["SortColumn"] = "GameID"; //default sort column
                Session["SortDirection"] = "ASC";
                // Get the game data
                this.GetGameData();
            }
        }

        /**
         * <summary>
         * This method gets the game data from the DB
         * </summary>
         * 
         * @method GetGameData
         * @returns {void}
         */
        protected void GetGameData()
        {
            // connect to EF
            using (GameConnection db = new GameConnection())
            {

                string SortString = Session["SortColumn"].ToString() + " " + Session["SortDirection"].ToString();

                // query the games Table using EF and LINQ
                var Games = (from allGames in db.Games
                             select allGames);

                // bind the result to the GridView
                GameDataGridView.DataSource = Games.AsQueryable().OrderBy(SortString).ToList();
                GameDataGridView.DataBind();
            }

        }

        /**
         * <summary>
         * Changes the amount of objects are on each grid view
         * </summary>
         * @method PageSizeDropDownList_SelectedIndexChanged
         * @param {object} sender
         * @param {EventArgs} e
         * @returns {void}
         **/
        protected void PageSizeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            // set the new page size
            GameDataGridView.PageSize = Convert.ToInt32(PageSizeDropDownList.SelectedValue);

            // refresh the grid
            this.GetGameData();
        }

        /**
         * <summary>
         * this event handler deletes a game from the db using EF
         * </summary>
         * 
         * @method GameDataGridView_RowDeleting
         * @param {object} sender
         * @param {GridViewDeleteEventArgs} e
         * @returns {void}
         **/
        protected void GameDataGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // store which row was clicked
            int selectedRow = e.RowIndex;

            // get selected gameID using the Grid's DataKey Collection
            int GameID = Convert.ToInt32(GameDataGridView.DataKeys[selectedRow].Values["GameID"]);

            // use EF to find the selected game in the DB and remove it
            using (GameConnection db = new GameConnection())
            {
                //create object of the game class and store the query string inside of it
                Game deletedDepartment = (from gameRecords in db.Games
                                                where gameRecords.GameID == GameID
                                                select gameRecords).FirstOrDefault();

                // remove the selected game from the db
                db.Games.Remove(deletedDepartment);

                // save the changes
                db.SaveChanges();

                // refresh the grid
                this.GetGameData();
            }
        }

        /**
         * <summary>
         * This event handler allows pagination to occur for the game tracker page
         * </summary>
         * @method GameDataGridView_PageIndexChanging
         * @param {object} sender
         * @param {GridViewPageEventArgs} e
         * @returns {void}
         **/
        protected void GameDataGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            // set the new page number
            GameDataGridView.PageIndex = e.NewPageIndex;

            // refresh the grid
            this.GetGameData();
        }

        /**
         * <summary>
         * Sorts the objects are on each grid view
         * </summary>
         * @method GameDataGridView_Sorting
         * @param {object} sender
         * @param {GridViewSortEventArgs} e
         * @returns {void}
         **/
        protected void GameDataGridView_Sorting(object sender, GridViewSortEventArgs e)
        {
            // get the column to sort by
            Session["SortColumn"] = e.SortExpression;

            // refresh the grid
            this.GetGameData();

            // toggle the direction
            Session["SortDirection"] = Session["SortDirection"].ToString() == "ASC" ? "DESC" : "ASC";
        }

        protected void GameDataGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (IsPostBack)
            {
                if (e.Row.RowType == DataControlRowType.Header)//if header row has been clicked
                {
                    LinkButton linkbutton = new LinkButton();

                    for (int index = 0; index < GameDataGridView.Columns.Count - 1; index++)
                    {
                        if (GameDataGridView.Columns[index].SortExpression == Session["SortColumn"].ToString())
                        {
                            if (Session["SortDirection"].ToString() == "ASC")
                            {
                                linkbutton.Text = " <i class='fa fa-caret-up fa-lg'></i>";
                            }
                            else
                            {
                                linkbutton.Text = " <i class='fa fa-caret-down fa-lg'></i>";
                            }

                            e.Row.Cells[index].Controls.Add(linkbutton);
                        }
                    }
                }
            }
        }

        protected void WeekForwardButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void WeekBackButton_Click(object sender, EventArgs e)
        {

        }

    }
}
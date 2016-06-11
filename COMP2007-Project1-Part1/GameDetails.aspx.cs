using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_Project1_Part1
{
    public partial class GameDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            // redirect back to students page
            Response.Redirect("~/OverwatchTracker.aspx");
        }


        protected void SaveButton_Click(object sender, EventArgs e)
        {
            //// use EF to connect to the server
            //using (DefaultConnection db = new DefaultConnection())
            //{
            //    // use the Student model to create a new student object and
            //    // save a new record
            //    Student newStudent = new Student();

            //    int StudentID = 0;

            //    if (Request.QueryString.Count > 0)// our URL contains a StudentID
            //    {
            //        //get the ID from the URL
            //        StudentID = Convert.ToInt32(Request.QueryString["StudentID"]);

            //        //get the current student from the EF db
            //        newStudent = (from student in db.Students
            //                      where student.StudentID == StudentID
            //                      select student).FirstOrDefault();
            //    }

            //    // add data to the new student record
            //    newStudent.LastName = LastNameTextBox.Text;
            //    newStudent.FirstMidName = FirstNameTextBox.Text;
            //    newStudent.EnrollmentDate = Convert.ToDateTime(EnrollmentDateTextBox.Text);

            //    // use LINQ to ADO.NET to add / insert new student to the db
            //    if (StudentID == 0)
            //    {
            //        db.Students.Add(newStudent);
            //    }

            //    // save our changes also updates and inserts
            //    db.SaveChanges();

            //    // redirect back to the updated students page
            //    Response.Redirect("~/Students.aspx");
            }
        }
    }

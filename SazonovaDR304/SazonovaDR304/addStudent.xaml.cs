using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SazonovaDR304
{
    /// <summary>
    /// Логика взаимодействия для addStudent.xaml
    /// </summary>
    public partial class addStudent : Page
    {
        kvalEkzSazonova304Entities db = new kvalEkzSazonova304Entities();
        int check;
        public addStudent(int i)
        {
            InitializeComponent();
            if (i == 1)
            {
                Students student = db.Students.Where(s => s.IdStudent == viewTables.studentIdForChange).FirstOrDefault();
                TBSurname.Text = student.Surname;
                TBName.Text = student.Name;
                TBPatronymic.Text = student.Patronymic;
                TBAge.Text = student.Age.ToString();
            }
            check = i;
        }

        private void ButtonSave_Click(object sender, RoutedEventArgs e)
        {
            Students newStudent;
            if (check == 1)
                newStudent = db.Students.Where(s => s.IdStudent == viewTables.studentIdForChange).FirstOrDefault();
            else 
                newStudent = new Students();
            newStudent.Surname = TBSurname.Text.Trim();
            newStudent.Name = TBName.Text.Trim();
            newStudent.Patronymic = TBPatronymic.Text.Trim();
            newStudent.Age = Convert.ToInt32(TBAge.Text.Trim());
            if (RbM.IsChecked == true)
            {
                newStudent.Gender = "М";
            }
            else if (RbW.IsChecked == true)
            {
                newStudent.Gender = "Ж";
            }
            try
            {
                if (check != 1)
                    db.Students.Add(newStudent);
                db.SaveChanges();
            }
            catch { }
            NavigationService.Navigate(new TableSelection());

        }
    }
}

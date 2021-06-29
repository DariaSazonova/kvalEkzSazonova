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
    /// Логика взаимодействия для viewTables.xaml
    /// </summary>
    public partial class viewTables : Page
    {
        kvalEkzSazonova304Entities db = new kvalEkzSazonova304Entities();
        public static int studentIdForChange;
        public viewTables()
        {
            InitializeComponent();
            if(TableSelection.selectItem == 1)//студенты 
            {
                DGView.ItemsSource = db.Students.ToList();
                Surname.Visibility = Visibility.Visible;
                Name.Visibility = Visibility.Visible;
                Patronymic.Visibility = Visibility.Visible;
                Gender.Visibility = Visibility.Visible;
                Age.Visibility = Visibility.Visible;
                ButtonDel.Visibility = Visibility.Visible;
                ButtonChange.Visibility = Visibility.Visible;
                ButtonAdd.Visibility = Visibility.Visible;
            }
            else if (TableSelection.selectItem == 2)
            {
                DGView.ItemsSource = db.viewMarks().ToList();
                Surname.Visibility = Visibility.Visible;
                Name.Visibility = Visibility.Visible;
                Patronymic.Visibility = Visibility.Visible;
                SubjectName.Visibility = Visibility.Visible;
                Mark.Visibility = Visibility.Visible;
                Date.Visibility = Visibility.Visible;
                Description.Visibility = Visibility.Visible;
                ButtonAdd.Visibility = Visibility.Hidden;
                ButtonDel.Visibility = Visibility.Visible;

            }
            else if (TableSelection.selectItem == 3)
            {
                DGView.ItemsSource = db.viewSubjects().ToList();
                SubjectName.Visibility = Visibility.Visible;
                Hours.Visibility = Visibility.Visible;
                type.Visibility = Visibility.Visible;
                ButtonAdd.Visibility = Visibility.Hidden;
            }


        }

        private void ButtonSearch_Click(object sender, RoutedEventArgs e)
        {
            if (TableSelection.selectItem == 1) 
                DGView.ItemsSource = db.viewSearchStudents(TBSearch.Text).ToList();
            else if (TableSelection.selectItem == 2)
                DGView.ItemsSource = db.viewSearchMarks(TBSearch.Text).ToList();
            else if (TableSelection.selectItem == 3)
                DGView.ItemsSource = db.viewSearcSubjects(TBSearch.Text).ToList();
        }

        private void ButtonAdd_Click(object sender, RoutedEventArgs e)
        {
            if (TableSelection.selectItem == 1)
                NavigationService.Navigate(new addStudent(2));
        }

        private void ButtonDel_Click(object sender, RoutedEventArgs e)
        {
            if (TableSelection.selectItem == 1)//студенты 
            {
                int studId = Convert.ToInt32((sender as Button).Uid);
                Students stringToDel = db.Students.Where(s => s.IdStudent == studId).FirstOrDefault();
                db.Students.Remove(stringToDel);
                db.SaveChanges();
            }
            else if (TableSelection.selectItem == 2)
            {
                int markId = Convert.ToInt32((sender as Button).Tag);
                Marks stringToDel = db.Marks.Where(s => s.MarkNum == markId).FirstOrDefault();
                db.Marks.Remove(stringToDel);
                db.SaveChanges();
            }
            NavigationService.Navigate(new viewTables());
        }

        private void ButtonChange_Click(object sender, RoutedEventArgs e)
        {
            studentIdForChange = Convert.ToInt32((sender as Button).Uid);
            NavigationService.Navigate(new addStudent(1));
        }
    }
}

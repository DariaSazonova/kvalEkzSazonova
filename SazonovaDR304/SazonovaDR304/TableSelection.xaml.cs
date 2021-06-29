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
    /// Логика взаимодействия для TableSelection.xaml
    /// </summary>
    public partial class TableSelection : Page
    {
        public static int selectItem;
        public TableSelection()
        {
            InitializeComponent();
        }

        private void Students_Click(object sender, RoutedEventArgs e)
        {
            selectItem = 1;
            NavigationService.Navigate(new viewTables());
        }

        private void Marks_Click(object sender, RoutedEventArgs e)
        {
            selectItem = 2;
            NavigationService.Navigate(new viewTables());
        }

        private void Subjects_Click(object sender, RoutedEventArgs e)
        {
            selectItem = 3;
            NavigationService.Navigate(new viewTables());
        }
    }
}

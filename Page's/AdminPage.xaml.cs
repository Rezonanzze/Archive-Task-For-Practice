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
using ArchiveTask.Action_s; // Прописываем using для корректной работы навигации

namespace ArchiveTask.Page_s
{
    /// <summary>
    /// Логика взаимодействия для AdminPage.xaml
    /// </summary>
    public partial class AdminPage : Page
    {
        public AdminPage()
        {
            InitializeComponent();

            GridArchive.ItemsSource = ConnectionClass.ConnectionPoint.CellCode.ToList(); //Подключение DataGrid к необходимой таблице \ "ДатаГрид.ItemsSource = КлассПодключения.НазваниеКлассаПодключения.Таблица.ToList();"
            GridDocuments.ItemsSource = ConnectionClass.ConnectionPoint.Document.ToList();
        }

        private void ButtonBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationClass.Navigation.GoBack();
        }

        private void ButtonRefresh_Click(object sender, RoutedEventArgs e)
        {
            GridArchive.ItemsSource = ConnectionClass.ConnectionPoint.CellCode.ToList();
            GridDocuments.ItemsSource = ConnectionClass.ConnectionPoint.Document.ToList();
        }
    }
}

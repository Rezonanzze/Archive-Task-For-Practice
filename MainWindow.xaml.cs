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
using ArchiveTask.Action_s; // Прописываем using для корректной работы классов
using ArchiveTask.Page_s;

namespace ArchiveTask
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            NavigationClass.Navigation = NavFrame; //Класс>Название>Фрейм
            NavFrame.Navigate(new LoginPage());
        }
    }
}

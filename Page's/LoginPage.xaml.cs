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
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();

            
        }

        private void ButtonAdminLogin_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (AdminPasswordBox.Password == "12345") //Условие для passwordbox'a
                {
                    NavigationClass.Navigation.Navigate(new AdminPage()); //Класс>Название>Функция "Navigate">(new "Страница"());
                }
                else
                {
                    MessageBox.Show("Вы ввели неверный пароль администратора, попробуйте ещё раз","Неверный пароль",MessageBoxButton.OK,MessageBoxImage.Error);
                    //MessageBox.Show(Комментарий>Название сообщения>Кнопка>Картинка)
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}

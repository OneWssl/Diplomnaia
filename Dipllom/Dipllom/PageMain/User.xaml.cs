using Dipllom.DataFileApp;
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

namespace Dipllom.PageMain
{
    /// <summary>
    /// Логика взаимодействия для User.xaml
    /// </summary>
    public partial class User : Page
    {
        public User()
        {
            InitializeComponent();
        }

        private void BtnLogin_Click(object sender, RoutedEventArgs e)
        {
            try {
                var userObj = OdbConnectHelper.entObj.User.FirstOrDefault(
                    x => x.Login == TxbLogin.Text && x.Password == PsbPassword.Password
                    );
            if (userObj == null)
                {
                    MessageBox.Show("Неверный Логин или Пароль",
                                    "Уведомление",
                                    MessageBoxButton.OK,
                                    MessageBoxImage.Information);
                }
            else  {
                    FrameApp.frmObj.Navigate(new Menu());
                }
            }

            catch(Exception ex) {
                MessageBox.Show("Критический сбой в работе приложения: " + ex.Message.ToString(),
                                    "Уведомление",
                                    MessageBoxButton.OK,
                                    MessageBoxImage.Warning);
            }
        }
    }
}

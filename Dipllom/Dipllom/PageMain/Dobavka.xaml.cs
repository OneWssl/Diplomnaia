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
    /// Логика взаимодействия для Dobavka.xaml
    /// </summary>
    public partial class Dobavka : Page
    {
        public Dobavka()
        {
            InitializeComponent();
            CmbType.SelectedValuePath = "id";
            CmbType.DisplayMemberPath = "Name";
            CmbType.ItemsSource = OdbConnectHelper.entObj.Type.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.GoBack();
        }

        private void BtnAddUslugi_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Usluga uslObj = new Usluga()
                {
                    Name = TxbNameUslugi.Text,
                    Type = CmbType.SelectedItem as DataFileApp.Type,
                    Price = Convert.ToInt32(TxbPrice.Text)
                };

                OdbConnectHelper.entObj.Usluga.Add(uslObj);
                OdbConnectHelper.entObj.SaveChanges();
                MessageBox.Show("Услуга Добавлена",
                                "Уведомление",
                                     MessageBoxButton.OK,
                                     MessageBoxImage.Information);
                FrameApp.frmObj.Navigate(new Menu());
            }
            catch (Exception ex)
            {
                MessageBox.Show(
                    "Критическая работа с приложением",
                    "Уведомление",
                    MessageBoxButton.OK,
                    MessageBoxImage.Warning
                    );
            }
        }
    }
}

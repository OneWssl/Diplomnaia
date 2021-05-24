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
    /// Логика взаимодействия для PageAddSotr.xaml
    /// </summary>
    public partial class PageAddSotr : Page
    {
        public PageAddSotr()
        {
            InitializeComponent();
            CmbSpecial.SelectedValuePath = "id";
            CmbSpecial.DisplayMemberPath = "Name";
            CmbSpecial.ItemsSource = OdbConnectHelper.entObj.Special.ToList();
        }

        private void BackAddSotr_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.GoBack();
        }

        private void BtnAddSotr_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Sotrudniki sotrObj = new Sotrudniki()
                {
                    FIO = TxbNameSotr.Text,
                    Special = CmbSpecial.SelectedItem as Special,
                    Tel = TxbTel.Text
                };

                OdbConnectHelper.entObj.Sotrudniki.Add(sotrObj);
                OdbConnectHelper.entObj.SaveChanges();
                MessageBox.Show("Сотрудник Добавлен",
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

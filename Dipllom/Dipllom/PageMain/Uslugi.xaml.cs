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
    /// Логика взаимодействия для Uslugi.xaml
    /// </summary>
    public partial class Uslugi : Page
    {
        public Uslugi()
        {
            InitializeComponent();
            GridList.ItemsSource = OdbConnectHelper.entObj.Usluga.ToList();
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.GoBack();
        }

        private void BtnPrint_Click(object sender, RoutedEventArgs e)
        {
            PrintDialog printObj = new PrintDialog();
            if (printObj.ShowDialog() == true)
            {
                printObj.PrintVisual(GridList, "");
            }
            else
            {
                MessageBox.Show(
                    "Администратор запретил печать!",
                    "Уведомление",
                    MessageBoxButton.OK,
                    MessageBoxImage.Error
                    );
                return;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new Dobavka());
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            try 
            {
                if (GridList.SelectedItems.Count > 0)
                {
                    for (int i=0; i < GridList.SelectedItems.Count; i++)
                    {
                        Usluga uslugaObj = GridList.SelectedItems[i] as Usluga;
                        OdbConnectHelper.entObj.Usluga.Remove(uslugaObj);
                    }
                    OdbConnectHelper.entObj.SaveChanges();
                    MessageBox.Show("Услуга удалена!",
                                     "Уведомление",
                                     MessageBoxButton.OK,
                                     MessageBoxImage.Information);
                    GridList.ItemsSource = OdbConnectHelper.entObj.Usluga.ToList();
                }
                else
                {
                    MessageBox.Show("Данных в таблице нет!",
                                     "Уведомление",
                                     MessageBoxButton.OK,
                                     MessageBoxImage.Information);
                }
            }

            catch (Exception ex)
            {
                MessageBox.Show(
                    "Критическая работа приложения",
                    "Уведомление",
                    MessageBoxButton.OK,
                    MessageBoxImage.Error
                    );
            }
        }
    }
}

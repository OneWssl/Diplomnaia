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
    /// Логика взаимодействия для PageSotrudniki.xaml
    /// </summary>
    public partial class PageSotrudniki : Page
    {
        public PageSotrudniki()
        {
            InitializeComponent();
            GridSotr.ItemsSource = OdbConnectHelper.entObj.Sotrudniki.ToList();
        }

        private void BackSotr_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.GoBack();
        }

        private void PrintSotr_Click(object sender, RoutedEventArgs e)
        {
            PrintDialog sotrObj = new PrintDialog();
            if (sotrObj.ShowDialog() == true)
            {
                sotrObj.PrintVisual(GridSotr, "");
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

        private void DelSotr_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (GridSotr.SelectedItems.Count > 0)
                {
                    for (int i = 0; i < GridSotr.SelectedItems.Count; i++)
                    {
                        Sotrudniki sotrudnikiObj = GridSotr.SelectedItems[i] as Sotrudniki;
                        OdbConnectHelper.entObj.Sotrudniki.Remove(sotrudnikiObj);
                    }
                    OdbConnectHelper.entObj.SaveChanges();
                    MessageBox.Show("Сотрудник удален с базы!",
                                     "Уведомление",
                                     MessageBoxButton.OK,
                                     MessageBoxImage.Information);
                    GridSotr.ItemsSource = OdbConnectHelper.entObj.Sotrudniki.ToList();
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

        private void AddSotr_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new PageAddSotr());
        }
    }
}

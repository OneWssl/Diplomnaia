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
    /// Логика взаимодействия для PageReal.xaml
    /// </summary>
    public partial class PageReal : Page
    {
        public PageReal()
        {
            InitializeComponent();
            CmbUslug.SelectedValuePath = "Id";
            CmbUslug.DisplayMemberPath = "Name";
            CmbUslug.ItemsSource = OdbConnectHelper.entObj.Usluga.ToList();
            GridReal.ItemsSource = OdbConnectHelper.entObj.Prod.ToList();
            GridNone.ItemsSource = OdbConnectHelper.entObj.Usluga.ToList();
            

        }

        private void BackReal_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.GoBack();
        }

        private void TextBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = "123456789".IndexOf(e.Text) < 0;
        }

        private void BtnAddUsl_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var curentUsl = GridNone.SelectedItem as Usluga;
                
                Prod realObj = new Prod()
                {
                    Name = CmbUslug.Text,
                    Kolich = TxbKol.Text,
                    Tipe = curentUsl.IdType,
                    Itogo =curentUsl.Price * Convert.ToInt32(TxbKol.Text),
                    Price = curentUsl.Price


                };
                
                OdbConnectHelper.entObj.Prod.Add(realObj);
                OdbConnectHelper.entObj.SaveChanges();
                MessageBox.Show("Сотрудник Добавлен",
                                "Уведомление",
                                     MessageBoxButton.OK,
                                     MessageBoxImage.Information);
                GridReal.ItemsSource = OdbConnectHelper.entObj.Prod.ToList();
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
            var summItogo = OdbConnectHelper.entObj.Prod.Sum(x => x.Itogo);

            TxbItogo.Text = Convert.ToString(summItogo);

        
        }


        private void CmbUslug_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int CJ = Convert.ToInt32(CmbUslug.SelectedValue);
            GridNone.ItemsSource = OdbConnectHelper.entObj.Usluga.Where(x => x.Id == CJ).ToList();
            GridNone.SelectedIndex = 0;
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            OdbConnectHelper.entObj.Prod.RemoveRange(OdbConnectHelper.entObj.Prod);
            OdbConnectHelper.entObj.SaveChanges();
            GridReal.ItemsSource = OdbConnectHelper.entObj.Prod.ToList();

        }

        private void BtnPrint_Click(object sender, RoutedEventArgs e)
        {
            
        }
    }
}
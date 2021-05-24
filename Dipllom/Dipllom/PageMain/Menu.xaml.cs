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
    /// Логика взаимодействия для Menu.xaml
    /// </summary>
    public partial class Menu : Page
    {
        public Menu()
        {
            InitializeComponent();
        }

        private void BtnUslugi_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new Uslugi());
        }

        private void BtnSotr_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.Navigate(new PageSotrudniki());
        }

        private void BtnReale_Click(object sender, RoutedEventArgs e)
        {

            FrameApp.frmObj.Navigate(new PageReal());

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}

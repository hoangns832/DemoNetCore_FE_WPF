﻿using _2DataAccess.Interfaces;
using System.Security.Permissions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using WpfApp.Configurations;
using WpfApp.ViewModels.Commons;

namespace WpfApp.ViewModels.Auth
{
    public class SignInViewModel : BaseViewModel
    {
        public bool IsOpen = true;
        public bool IsSignIn = false;

        private string _userName;
        public string UserName { get => _userName; set { _userName = value; OnPropertyChanged(); } }

        private string _password;
        public string Password { get => _password; set { _password = value; OnPropertyChanged(); } }

        public ICommand SignInCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        public ICommand CloseWindowCommand { get; set; }

        public SignInViewModel(IUserRepository userRepository)
        {
            _userName = "string";
            _password = "string123";
            
            SignInCommand = new RelayCommand<Window>(p =>
            {
                return true;
            }, p => { SignIn(p, userRepository); });

            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, p => 
            { 
                Password = p.Password;                
            });

            CloseWindowCommand = new RelayCommand<Window>(p => { return true; }, p =>
            {
                IsOpen = false;                
            });
        }

        private void SignIn(Window window, IUserRepository userRepository)
        {
            if (window == null)
            {
                return;
            }

            if (Password == null)
            {
                Password = _password;
            }            

            var user = userRepository.GetByUserName(UserName);
            if (user == null || !BCrypt.Net.BCrypt.Verify(Password, user.PasswordHash))
            {
                MessageBox.Show("Username or Password is incorrect!");
            }
            else
            {                
                IsSignIn = true;
                IsOpen = false;
                window.Close();                                   
            }
        }
    }
}

using EventManager.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace EventManager.Interface
{
    public interface ILogin
    {
        Registration ValidateUser(string userName, string passWord);
        bool UpdatePassword(Registration Registration);
    }
}

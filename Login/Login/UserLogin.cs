namespace Login
{
    public class UserLogin
    {
        public string Username { get; set; }
        public string Password { get; set; }

        public string LoginMethod()
        {
            if (string.IsNullOrWhiteSpace(Username) && string.IsNullOrWhiteSpace(Password))
            {
                return "Provide Username and Password";
            }
            else if (string.IsNullOrWhiteSpace(Username))
            {
                return "Provide Username";
            }
            else if (string.IsNullOrWhiteSpace(Password))
            {
                return "Provide Password";
            }
            else if (Username == "Sivakumar" && Password == "@123")
            {
                return "Login Successful";
            }
            else
            {
                return "Login Failed";
            }
        }

    }
}
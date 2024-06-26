import {
  Avatar,
  Box,
  Button,
  Checkbox,
  CssBaseline,
  FormControlLabel,
  Grid,
  Link,
  Paper,
  TextField,
  Typography,
} from "@mui/material";
import LockOutlinedIcon from "@mui/icons-material/LockOutlined";
import userAPI from "../../apis/UserAPI";
import { useNavigate } from "react-router-dom";
import { useState } from "react";

const SignInComponent = () => {
  const navigate = useNavigate();

  const [signInModel, setSignInModel] = useState({
    userName: "",
    password: "",
  });
  const [loginError, setLoginError] = useState("");
  const [input, setInput] = useState({ userName: "", password: "" });

  const handleSubmit = (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    userAPI
      .signIn(signInModel.userName, signInModel.password)
      .then(() => {
        navigate("/dashboards");
      })
      .catch(() => {
        setLoginError("Username or password is incorrect");
        setInput({userName : signInModel.userName, password : signInModel.password})
      });
  };

  const handleInputUserName = (userName: string) => {
    setSignInModel((state) => {
      return {
        ...state,
        userName,
      };
    });
  };

  const handleInputPassword = (password: string) => {
    setSignInModel((state) => {
      return {
        ...state,
        password,
      };
    });
  };

  return (
    <Grid container component={"main"} sx={{ height: "100vh" }}>
      <CssBaseline />
      <Grid
        item
        xs={false}
        sm={4}
        md={7}
        sx={{
          backgroundImage: "url(https://source.unsplash.com/random?wallpapers)",
          backgroundRepeat: "no-repeat",
          backgroundColor: (t) =>
            t.palette.mode === "light"
              ? t.palette.grey[50]
              : t.palette.grey[900],
          backgroundSize: "cover",
          backgroundPosition: "center",
        }}
      />
      <Grid item xs={12} sm={8} md={5} component={Paper} elevation={6} square>
        <Box
          sx={{
            my: 8,
            mx: 4,
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
          }}
        >
          <Avatar sx={{ m: 1, bgcolor: "secondary.main" }}>
            <LockOutlinedIcon />
          </Avatar>
          <Typography component="h1" variant="h5">
            Sign in
          </Typography>
          <Box
            component="form"
            noValidate={false}
            onSubmit={handleSubmit}
            sx={{ mt: 1 }}
          >
            <TextField
              error={loginError === "" || input.userName !== signInModel.userName ? false : true}
              margin="normal"
              required
              fullWidth
              id="userName"
              label="Username"
              name="userName"
              autoComplete="userName"
              autoFocus
              helperText={loginError === "" ? "" : loginError}
              onChange={(e) => {
                handleInputUserName(e.target.value);
              }}
            />
            <TextField
              error={loginError === "" || input.userName !== signInModel.userName ? false : true}
              margin="normal"
              required
              fullWidth
              name="password"
              label="Password"
              type="password"
              id="password"
              autoComplete="current-password"
              onChange={(e) => {
                handleInputPassword(e.target.value);
              }}
            />
            <FormControlLabel
              control={<Checkbox value="remember" color="primary" />}
              label="Remember me"
            />
            <Button
              type="submit"
              fullWidth
              variant="contained"
              sx={{ mt: 3, mb: 2 }}
            >
              Sign In
            </Button>
            <Grid container>
              <Grid item xs>
                <Link href="#" variant="body2">
                  Forgot password?
                </Link>
              </Grid>
              <Grid item>
                <Link href="/auth/signup" variant="body2">
                  {"Don't have an account? Sign Up"}
                </Link>
              </Grid>
            </Grid>
          </Box>
        </Box>
      </Grid>
    </Grid>
  );
};

export default SignInComponent;

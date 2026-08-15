{
    programs.git = {
        enable = true;
        settings = {
		user.name = "Twodis";
		user.email = "twodis@twodis.xyz";
		user.signingkey = "8C3838983E0C91B397861AD8AB450ADA98AB9E0D";
		commit.gpgsign = true;
		gpg.format = "openpgp";
	};

    };
}

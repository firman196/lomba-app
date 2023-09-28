package main

import (
	"log"
	lombaApp "lomba-app"

	"github.com/spf13/viper"
)

func main() {
	if err := initConfig(); err != nil {
		log.Fatal("error initializing configs: ", err.Error())
	}
	app := new(lombaApp.Server)
	if err := app.Run(viper.GetString("port"), routes.InitRoutes()); err != nil {
		log.Fatal("error occurred while running http server: ", err.Error())
	}
}

func initConfig() error {
	viper.AddConfigPath("config")
	viper.SetConfigName("config")
	return viper.ReadInConfig()
}

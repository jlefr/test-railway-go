package main

import (
	"github.com/labstack/echo/v4"
	"net/http"
)

func GetUser(context echo.Context) error {
	id := context.Param("id")
	return context.String(http.StatusOK, id)
}

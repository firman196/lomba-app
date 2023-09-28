package entity

import "time"

type Kategori struct {
	ID        int       `json:"id" db:"id"`
	Name      string    `json:"name" db:"name"`
	Icon      string    `json:"icon" db:"icon"`
	Gambar    string    `json:"gambar" db:"gambar"`
	IsPopular bool      `json:"is_popular" db:"is_popular"`
	IsDeleted bool      `json:"is_deleted" db:"is_deleted"`
	CreatedAt time.Time `json:"created_at" db:"created_at"`
	UpdatedAt time.Time `json:"updated_at" db:"updated_at"`
}

type PaginationInput struct {
	Limit int    `json:"limit" db:"limit"`
	Page  int    `json:"page" db:"page"`
	Sort  string `json:"sort" db:"sort"`
}

package repository

import "lomba-app/entity"

type KategoriRepository interface {
	Create(kategori entity.Kategori) (*entity.Kategori, error)
	Update(kategori entity.Kategori) (*entity.Kategori, error)
	FindById(id uint) (*entity.Kategori, error)
	FindAll() (*[]entity.Kategori, error)
}

package repository

import (
	"lomba-app/entity"

	"github.com/jmoiron/sqlx"
)

type KategoriRepositoryImpl struct {
	db *sqlx.DB
}

func NewKategoriRepositoryImpl(db *sqlx.DB) KategoriRepository {
	return &KategoriRepositoryImpl{
		db: db,
	}
}

func (r *KategoriRepositoryImpl) Create(kategori entity.Kategori) (*entity.Kategori, error) {

}

func (r *KategoriRepositoryImpl) Update(kategori entity.Kategori) (*entity.Kategori, error) {

}

func (r *KategoriRepositoryImpl) FindById(id uint) (*entity.Kategori, error) {

}

func (r *KategoriRepositoryImpl) FindAll() (*[]entity.Kategori, error) {

}

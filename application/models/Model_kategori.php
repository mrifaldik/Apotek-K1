<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_kategori extends CI_Model
{
	public function obatbebas()
	{
		return $this->db->get_where('product', array('kategori' => 'Obat Bebas'));
	}

	public function obatbebasterbatas()
	{
		return $this->db->get_where('product', array('kategori' => 'Obat Bebas Terbatas'));
	}

	public function obatkeras()
	{
		return $this->db->get_where('product', array('kategori' => 'Obat Keras'));
	}

	public function obatherbal()
	{
		return $this->db->get_where('product', array('kategori' => 'Obat Herbal'));
	}

	// public function kids()
	// {
	// 	return $this->db->get_where('product', array('kategori' => 'Kids & Baby'));
	// }

	// public function fashion()
	// {
	// 	return $this->db->get_where('product', array('kategori' => 'Fashion & Make Up'));
	// }
}

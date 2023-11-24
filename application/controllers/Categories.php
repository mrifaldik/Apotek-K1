<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Categories extends CI_Controller
{

	public function obatbebas()
	{
		$data['title'] = 'Obat Bebas Categories';
		$data['obatbebas'] = $this->model_kategori->obatbebas()->result();
		$this->load->view('layout/home/header', $data);
		$this->load->view('obatbebas', $data);
		$this->load->view('layout/home/footer');
	}

	public function obatbebasterbatas()
	{
		$data['title'] = 'Obat Terbatas Categories';
		$data['obatbebasterbatas'] = $this->model_kategori->obatbebasterbatas()->result();
		$this->load->view('layout/home/header', $data);
		$this->load->view('obatbebasterbatas', $data);
		$this->load->view('layout/home/footer');
	}

	public function obatkeras()
	{
		$data['title'] = 'Obat Keras Categories';
		$data['obatkeras'] = $this->model_kategori->obatkeras()->result();
		$this->load->view('layout/home/header', $data);
		$this->load->view('obatkeras', $data);
		$this->load->view('layout/home/footer');
	}

	public function obatherbal()
	{
		$data['title'] = 'Obat Herbal Categories';
		$data['obatherbal'] = $this->model_kategori->obatherbal()->result();
		$this->load->view('layout/home/header', $data);
		$this->load->view('obatherbal', $data);
		$this->load->view('layout/home/footer');
	}

	// public function kids()
	// {
	// 	$data['title'] = 'Kids Categories';
	// 	$data['kids'] = $this->model_kategori->kids()->result();
	// 	$this->load->view('layout/home/header', $data);
	// 	$this->load->view('kids', $data);
	// 	$this->load->view('layout/home/footer');
	// }

	// public function fashion()
	// {
	// 	$data['title'] = 'Fashion Categories';
	// 	$data['fashion'] = $this->model_kategori->fashion()->result();
	// 	$this->load->view('layout/home/header', $data);
	// 	$this->load->view('fashion', $data);
	// 	$this->load->view('layout/home/footer');
	// }
}

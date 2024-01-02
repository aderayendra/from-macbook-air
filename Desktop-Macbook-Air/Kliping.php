<?php

defined('BASEPATH') or exit('No direct script access allowed');



class Kliping extends CI_Controller
{

	public function __construct()
	{

		parent::__construct();

		$this->load->library('form_validation');

		// ambil models yg akan digunakan
		$this->load->model('M_kliping');

		// Jika user tidak melakukan login
		// if($this->session->userdata('logged_in') != TRUE){
		// 	// kembali ke halaman login
		// 	redirect('home','refresh');

		// 	// Jika yang akses halaman ini level nya bukan kasir
		// }else if($this->session->userdata('level') != "Superadmin"){
		// 	// kembali ke halaman login
		//           redirect('home','refresh');

		//       }



	}


	public function kliping_tampil()
	{

		$breadcrumbs = $this->breadcrumbs;



		$breadcrumbs->add('Home', base_url() . 'dashboard');

		// Judul Breadcumbs di kanan atas
		$breadcrumbs->add('Master Dokumen', base_url($this->router->fetch_class()));

		$breadcrumbs->render();

		$data['breadcrumbs'] = $breadcrumbs->render();

		// Judul halaman pada tab browser
		$data['title'] = "Halaman Tambah kliping";

		// ambil data dari models dibawah
		$data['Kliping'] = $this->M_kliping->tampil_data_kliping();



		// halaman yang akan digunakan, variabel yg akan dikirim
		$data['laman'] = $this->load->view('kliping/v_kliping', $data, true);

		// template yang akan digunakan
		$this->load->view('temp/v_temp', $data);

	}

	public function form_tambah_kliping()
	{

		$breadcrumbs = $this->breadcrumbs;



		$breadcrumbs->add('Home', base_url() . 'dashboard');

		// Judul Breadcumbs di kanan atas
		$breadcrumbs->add('Tambah Kliping', base_url($this->router->fetch_class()));

		$breadcrumbs->render();

		$data['breadcrumbs'] = $breadcrumbs->render();

		// Judul halaman pada tab browser
		$data['title'] = "Halaman Tambah kliping";

		// ambil data dari models dibawah
		// $data['cbkategori']	= $this->M_dokumen->combo_kategori();

		// halaman yang akan digunakan, variabel yg akan dikirim
		$data['laman'] = $this->load->view('kliping/v_tambah_kliping', $data, true);

		// template yang akan digunakan
		$this->load->view('temp/v_temp', $data);

	}

	public function form_edit_kliping()
	{

		$id_klp = $this->uri->segment(3);

		$breadcrumbs = $this->breadcrumbs;



		$breadcrumbs->add('Home', base_url() . 'dashboard');

		// Judul Breadcumbs di kanan atas
		$breadcrumbs->add('edit kliping', base_url($this->router->fetch_class()));

		$breadcrumbs->render();

		$data['breadcrumbs'] = $breadcrumbs->render();

		// Judul halaman pada tab browser
		$data['title'] = "Halaman Edit Kliping";

		// ambil data dari models dibawah
		// $data['cbkategori']	= $this->M_dokumen->combo_kategori();

		// ambil data dari models dibawah
		$data['kliping'] = $this->M_kliping->tampil_edit_kliping($id_klp);

		// halaman yang akan digunakan, variabel yg akan dikirim
		$data['laman'] = $this->load->view('kliping/v_edit_kliping', $data, true);

		// template yang akan digunakan
		$this->load->view('temp/v_temp', $data);

	}

	// Aksi simpan data
	public function simpan_kliping()
	{
		// Rules data dari form untuk validasi data kosong
		$this->form_validation->set_rules('jdl_klp', 'jdl_klp', 'required');
		// $this->form_validation->set_rules('ps_kat_dikumen', 'ps_kat_dikumen', 'required');
		$this->form_validation->set_rules('tgl', 'tgl', 'required');

		if ($this->form_validation->run() == TRUE) {
			////////////////////////

			// $file = './assets/dokumen/surat_cuti001ae94bc8c26ce0af5830da1b6e1cd0.pdf';
			// $imgk = new Imagick($file);
			// echo $imgk->getNumberImages();
			// var_dump($imgk->getImageResolution());
			// exit();
			$random = rand();
			$config['upload_path'] = './frontend/assets/kliping/'; //path folder
			$config['allowed_types'] = '*'; //type yang dapat diakses bisa anda sesuaikan
			$config['encrypt_name'] = FALSE; //nama yang terupload nantinya
			$config['file_size'] = TRUE;
			$config['file_name'] = '_' . $random;


			$this->load->library('upload', $config);
			if (!empty($_FILES['filekliping']['name'])) {
				if (!$this->upload->do_upload('filekliping')) {
					// pemberitahuan jika ada data yang masih kosong
					$this->session->set_flashdata('notif', $this->Notif->uploadgagal());

					// kembali ke halaman sebelumnya
					redirect('kliping/kliping_tampil', 'refresh');
				} else {
					$jdl_klp = $this->input->post('jdl_klp');
					// $id_kat_dokumen = $this->input->post('ps_kat_dikumen');
					$tgl = $this->input->post('tgl');
					$nmfile = $this->upload->data('file_name');

					// kirim data form ke models
					$this->M_kliping->simpan_kliping_md($jdl_klp, $tgl, $nmfile);

					// kembali ke halaman sebelumnya
					redirect('kliping/kliping_tampil', 'refresh');
				}
			} else {
				$jdl_klp = $this->input->post('jdl_klp');
				$tgl = $this->input->post('tgl');
				$nmfile = $this->input->post('file');

				// kirim data form ke models
				$this->M_kliping->simpan_kliping_md($jdl_klp, $tgl, $nmfile);

				// kembali ke halaman sebelumnya
				redirect('kliping/kliping_tampil', 'refresh');
			}



		} else {
			// pemberitahuan jika ada data yang masih kosong
			$this->session->set_flashdata('notif', $this->Notif->input_validasi());

			// kembali ke halaman sebelumnya
			redirect('kliping/kliping_tampil', 'refresh');

		}

	}



	// Aksi edit data
	public function edit_kliping()
	{
		// Rules data dari form untuk validasi data kosong
		$this->form_validation->set_rules('id_klp', 'id_klp', 'required');
		$this->form_validation->set_rules('jdl_klp', 'jdl_klp', 'required');
		$this->form_validation->set_rules('tgl', 'tgl', 'required');

		// periksa data kosong yang belum diisi pada form tambah
		if ($this->form_validation->run() == TRUE) {
			////////////////////////

			$random = rand();
			$config['upload_path'] = './frontend/assets/kliping/'; //path folder
			$config['allowed_types'] = '*'; //type yang dapat diakses bisa anda sesuaikan
			$config['encrypt_name'] = FALSE; //nama yang terupload nantinya
			$config['file_size'] = TRUE;
			$config['file_name'] = '_' . $random;

			$this->load->library('upload', $config);
			if (!empty($_FILES['filekliping']['name'])) {
				if (!$this->upload->do_upload('filekliping')) {
					// pemberitahuan jika ada data yang masih kosong
					$this->session->set_flashdata('notif', $this->Notif->uploadgagal());

					// kembali ke halaman sebelumnya
					redirect('kliping/kliping_tampil', 'refresh');
				} else {
					$id_klp = $this->input->post('id_klp');
					$jdl_klp = $this->input->post('jdl_klp');
					$tgl = $this->input->post('tgl');
					$nmfile = $this->input->post('file');

					// kirim data form ke models
					$this->M_kliping->edit_kliping_md($id_klp, $jdl_klp, $tgl, $nmfile);

					// pemberitahuan jika berhasil update
					$this->session->set_flashdata('notif', $this->Notif->berhasil_update());

					// kembali ke halaman sebelumnya
					redirect('kliping/kliping_tampil', 'refresh');
				}
			} else {
				$id_klp = $this->input->post('id_klp');
				$jdl_klp = $this->input->post('jdl_klp');
				$tgl = $this->input->post('tgl');
				$nmfile = $this->input->post('file');

				// kirim data form ke models
				$this->M_kliping->edit_kliping_md($id_klp, $jdl_klp, $tgl, $nmfile);

				// kembali ke halaman sebelumnya
				redirect('kliping/kliping_tampil', 'refresh');
			}



		} else {
			// pemberitahuan jika ada data yang masih kosong
			$this->session->set_flashdata('notif', $this->Notif->input_validasi());

			// kembali ke halaman sebelumnya
			redirect('kliping/kliping_tampil', 'refresh');

		}

	}

	// Aksi hapus data
	public function hapus_kliping()
	{
		// ambil data ID dari URL
		$id_klp = $this->uri->segment(3);

		// kirim data form ke models
		$this->M_kliping->hapus_kliping($id_klp);

		// pemberitahuan jika berhasil hapus
		$this->session->set_flashdata('notif', $this->Notif->berhasil_hapus());

		// kembali ke halaman sebelumnya
		redirect('kliping/kliping_tampil', 'refresh');

	}
}
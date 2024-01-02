<?php



defined('BASEPATH') OR exit('No direct script access allowed');







class M_kliping extends CI_Model {



    public function tampil_data_kliping()

    {
        // ambil data dari tabel
        $this->db->from('kliping');

        // Join tabel barang dan tabel kategori
        
        $q = $this->db->get();

        return $q->result();

    }

    
    public function combo_kategori()

    {

        // ambil data dari tabel
        $this->db->from('ps_kat_dikumen ');

        $q = $this->db->get();

        return $q->result();

    }

    public function tampil_edit_kliping($id_klp)

    {

        $this->db->where('id_klp', $id_klp);

        // ambil data dari tabel
        $this->db->from('kliping');

        // Join tabel barang dan tabel kategori
        
        $q = $this->db->get();

        return $q->result();

    }
    // Models Simpan
    public function simpan_kliping_md($jdl_klp,$tgl,$nmfile)
    {

        // if($nmfile=="F"){ 
        //  // ambil data yang akan disimpan
        //  $data = array(
        //              'nmprofil'      => $nmprofil,
        //              'isiprofil'         => $isiprofil
                        
        //  );

        // }else{
            // ambil data yang akan disimpan
            $data = array(
                        // 'id_klp'   => $id_klp,
                        'jdl_klp'  => $jdl_klp,
                        'tgl'      => $tgl,
                        'file'     => $nmfile
                        
            );

        // }

        //simpan ke dalam tabel
        $this->db->insert('kliping', $data);

        return;

    }


    // Models Edit
    public function edit_kliping_md($id_klp,$jdl_klp,$tgl,$nmfile)
    {

        // ambil data yang akan disimpan
        // if($nmfile=="F"){ 
        //  // ambil data yang akan disimpan
        //  $data = array(
        //              'nmprofil'      => $nmprofil,
        //              'isiprofil'         => $isiprofil
                        
        //  );

        // }else{
            // ambil data yang akan disimpan
            $data = array(
                        'jdl_klp'  => $jdl_klp,
                        'tgl'      => $tgl,
                        'file'     => $nmfile
                        
            );

        // }

        //ID data yang akan disimpan
        $this->db->where('id_klp', $id_klp);

        //edit data dalam tabel sesuai ID diatas
        $this->db->update('kliping', $data);

        return;

    }

    // Models Delete
    public function hapus_kliping($id_klp)

    {
        //ID data yang akan dihapus
        $this->db->where('id_klp', $id_klp);

        //hapus data dalam tabel sesuai ID diatas
        $this->db->delete('kliping');

        return;



    }



}




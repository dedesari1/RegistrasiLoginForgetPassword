<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
   function __construct(){
       parent::__construct();
		$this->load->model('m_account');
       $this->simple_login->cek_login();
   }

   //Load Halaman dashboard
   public function index() {
    
       $email = $this->session->userdata('email');
	   $data['gambar'] = $this->m_account->view($email);
       $this->load->view('account/v_dashboard', $data);
   }
}
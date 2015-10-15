<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**

 * Classified admin Controller

 *

 * This class handles user account related functionality

 *

 * @package		User

 * @subpackage	UserCore

 * @author		nuggplug

 * @link		http://nuggplug.com

 */



class User_core extends CI_Controller {

	

	var $active_theme = '';

	var $per_page = 2;

	public function __construct()

	{

		parent::__construct();

		is_installed(); #defined in auth helper

		

		if(!is_loggedin())

		{

			if(count($_POST)<=0)

			$this->session->set_userdata('req_url',current_url());

			redirect(site_url('account/trylogin'));

		}

		



		$this->per_page = get_per_page_value();



		$this->load->database();

		$this->active_theme = get_active_theme();

		$this->load->model('user/post_model');

		$this->form_validation->set_error_delimiters('<div class="alert alert-danger form-error">', '</div>');



	}

	

	public function index()

	{

		$this->post();	

	}



	function create_post_validation()

	{



	}



	function before_post_creation()

	{



	}	



	function after_post_creation($post_id)

	{

		if(get_settings('package_settings','enable_pricing','Yes')=='Yes' && $this->session->userdata('selected_package')=='' && is_admin()!=FALSE)

		{

			redirect(site_url('choose-package'));

			die;

		}

		else if(get_settings('package_settings','enable_pricing','Yes')=='Yes')

		{		

			$this->session->set_userdata('post_id',$post_id);

			redirect(site_url('user/payment/save_payment_history'));

		}

		else {

			if(get_settings('classified_settings','publish_directly','Yes')=='Yes') {



				$this->session->set_flashdata('msg','<div class="alert alert-success">'.lang_key('post_created_and_published').'</div>');

			}

			else {



				$this->session->set_flashdata('msg','<div class="alert alert-success">'.lang_key('post_created_approval').'</div>');

			}

			redirect(site_url('edit-ad/0/'.$post_id));

		}

	}



	function update_post_validation()

	{



	}



	function before_post_update()

	{



	}	



	function after_post_update($post_id)

	{



	}



	public function new_ad($msg='')

	{

		if(get_settings('package_settings','enable_pricing','Yes')=='Yes' && $this->session->userdata('selected_package')=='')

		{

			redirect(site_url('choose-package'));

			die;

		}

		if($this->session->userdata('is_paid')){
			$value = array();

			$value['categories'] = $this->post_model->get_all_categories();

			$value['msg']		 = $msg;

			$data['content'] 		= load_view('post_ad_view',$value,TRUE);

			load_template($data,$this->active_theme);
		} else {
			redirect(site_url('choose-package'));

			die;
		}

	}



	public function create_ad()

	{
		$state_active = get_settings('classified_settings', 'show_state_province', 'yes');



//		$this->form_validation->set_rules('purpose', 			lang_key('purpose'), 			'required');

		$this->form_validation->set_rules('category', 			lang_key('category'), 			'required');

		$this->form_validation->set_rules('contact_for_price', 	lang_key('contact_for_price'), 	'xss_clean');



		if($this->input->post('contact_for_price')=='')

		$this->form_validation->set_rules('price', 				lang_key('price'), 				'required');



		$this->form_validation->set_rules('country', 			lang_key('country'), 			'required');

		if($state_active == 'yes')

			$this->form_validation->set_rules('state', 			lang_key('state'), 				'required');



		$this->form_validation->set_rules('selected_city', 		lang_key('city'), 				'xss_clean');

		$this->form_validation->set_rules('city', 				lang_key('city'), 				'required');

		$this->form_validation->set_rules('zip_code', 			lang_key('zip_code'), 			'xss_clean');

		$this->form_validation->set_rules('address', 			lang_key('address'), 			'required');

		$this->form_validation->set_rules('latitude', 			lang_key('latitude'), 			'required');

		$this->form_validation->set_rules('longitude', 			lang_key('longitude'), 			'required');



		$this->form_validation->set_rules('title_'.default_lang(), 				lang_key('title'), 				'required');

		$this->form_validation->set_rules('description_'.default_lang(), 		lang_key('description'), 		'required');

		

		$this->form_validation->set_rules('featured_img', 		lang_key('featured_img'), 		'required');

		$this->create_post_validation();

		

		if ($this->form_validation->run() == FALSE)

		{

			$msg = '<div class="alert alert-danger form-error">'.lang_key('ad_creation_error').'</div>';

			$this->new_ad($msg);	

		}

		else

		{

			$meta_search_text = '';		//meta information for simple searching



			$this->load->helper('date');

			$format = 'DATE_RFC822';

			$time = time();



			$data 						= array();		

			$data['unique_id']			= uniqid();	



			$data['purpose'] 			= 'sell';

//			$meta_search_text .= $data['purpose'].' ';



			$data['category'] 			= $this->input->post('category');

			$meta_search_text .= get_category_title_by_id($data['category']).' ';



			$data['parent_category'] 	= get_category_parent_by_id($data['category']);

			$meta_search_text .= get_category_title_by_id($data['parent_category']).' ';



			$data['contact_for_price'] 	= $this->input->post('contact_for_price');

			$data['price'] 				= $this->input->post('price');

			$data['phone_no'] 			= $this->input->post('phone_no');



			$data['country'] 			= $this->input->post('country');

			$meta_search_text .= get_location_name_by_id($data['country']).' ';



			$data['state'] 				= $state_active == 'yes' ? $this->input->post('state') : 0;

			$meta_search_text .= get_location_name_by_id($data['state']).' ';



			$selected_city = $this->input->post('selected_city');

			$city = $this->input->post('city');

			if($selected_city == ''){

				$new_city_id = $this->post_model->get_location_id_by_name($city, 'city', $data['state'], $data['country']);

			}

			else{

				$new_city_id = $selected_city;

			}



			$data['city'] 				= $new_city_id;

			$meta_search_text .= get_location_name_by_id($data['city']).' ';



			$data['zip_code'] 			= $this->input->post('zip_code');

			$meta_search_text .= $data['zip_code'].' ';



			$data['address'] 			= $this->input->post('address');

			$meta_search_text .= $data['address'].' ';



			$data['latitude'] 			= $this->input->post('latitude');

			$data['longitude'] 			= $this->input->post('longitude');



			$this->load->model('admin/system_model');

            $langs = $this->system_model->get_all_langs();

            $titles = array();

            $descriptions = array();

            foreach ($langs as $lang=>$long_name)

            { 

            	$titles[$lang] = $this->input->post('title_'.$lang);

				$meta_search_text .= $titles[$lang].' ';



            	$descriptions[$lang] = $this->input->post('description_'.$lang);

            }        				

			$data['title'] 			= json_encode($titles);

			$data['description'] 	= json_encode($descriptions);



			$data['tags'] 				= $this->input->post('tags');

			$meta_search_text		.=  $data['tags'].' ';



			$data['featured_img'] 		= $this->input->post('featured_img');





			$data['created_by']			= get_id_by_username($this->session->userdata('user_name'));

			$data['create_time'] 		= $time;

			$data['publish_time'] 		= $time;

			$data['last_update_time'] 	= $time;

			

			$publish_directly 			= get_settings('classified_settings','publish_directly','Yes');

			$enable_pricing				= get_settings('package_settings','enable_pricing','Yes');

			

			/**************************



				status=0: post is deleted

				status=1: post is active

				status=2: post requires admin approval

				status=3: post requires payment

				status=4: post is expired

	

			**************************/



			if($enable_pricing=='Yes') {

				$data['status'] = 3;

			}

			else {

				$data['status']	= ($publish_directly=='Yes')?1:2; // 2 = pending

			}

			

			$data['featured'] 			= 0;

			$data['report'] 			= 0;

			$data['total_view'] 		= 0;

			$data['total_view'] 		= 0;

			$data['search_meta'] = $meta_search_text;



			$this->before_post_creation();



			if(constant("ENVIRONMENT")=='demo')

			{

				$this->session->set_flashdata('msg', '<div class="alert alert-success">Data updated.[NOT AVAILABLE ON DEMO]</div>');

			}

			else

			{

				$post_id = $this->post_model->insert_post($data);

				$this->after_post_creation($post_id);



				$this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('ad_created').'</div>');

			}

			redirect(site_url('post-ad'));		

		}

	}



	public function editpost($page='0',$id='')

	{

		$value = array();

		$value['categories'] 	= $this->post_model->get_all_categories();

		$value['post']			= $this->post_model->get_post_by_id($id);

		$value['page']			= $page;

		$data['content'] 		= load_view('edit_ad_view',$value,TRUE);

		load_template($data,$this->active_theme);

	}



	public function updatepost()

	{

		$state_active = get_settings('classified_settings', 'show_state_province', 'yes');

		$id 	= $this->input->post('id');

		$page 	= $this->input->post('page');



//		$this->form_validation->set_rules('purpose', 			lang_key('purpose'), 			'required');

		$this->form_validation->set_rules('category', 			lang_key('category'), 			'required');

		$this->form_validation->set_rules('contact_for_price', 	lang_key('contact_for_price'), 	'xss_clean');



		if($this->input->post('contact_for_price')=='')

		$this->form_validation->set_rules('price', 				lang_key('price'), 				'required');



		$this->form_validation->set_rules('country', 			lang_key('country'), 			'required');

		if($state_active == 'yes')

			$this->form_validation->set_rules('state', 				lang_key('state'), 				'required');



		$this->form_validation->set_rules('selected_city', 				lang_key('city'), 				'xss_clean');

		$this->form_validation->set_rules('city', 				lang_key('city'), 				'required');

		$this->form_validation->set_rules('zip_code', 			lang_key('zip_code'), 			'xss_clean');

		$this->form_validation->set_rules('address', 			lang_key('address'), 			'required');

		$this->form_validation->set_rules('latitude', 			lang_key('latitude'), 			'required');

		$this->form_validation->set_rules('longitude', 			lang_key('longitude'), 			'required');



		$this->form_validation->set_rules('title_'.default_lang(), 				lang_key('title'), 				'required');

		$this->form_validation->set_rules('description_'.default_lang(), 		lang_key('description'), 		'required');



		$this->form_validation->set_rules('featured_img', 		lang_key('featured_img'), 		'required');

		$this->update_post_validation();

		

		if ($this->form_validation->run() == FALSE)

		{

			$this->editpost($page,$id);	

		}

		else

		{

			$meta_search_text = '';		//meta information for simple searching



			$this->load->helper('date');

			$format = 'DATE_RFC822';

			$time = time();



			$data 						= array();		

			$data['purpose'] 			= 'sell';

//			$meta_search_text .= $data['purpose'].' ';



			$data['category'] 			= $this->input->post('category');

			$meta_search_text .= get_category_title_by_id($data['category']).' ';



			$data['parent_category'] 	= get_category_parent_by_id($data['category']);

			$meta_search_text .= get_category_title_by_id($data['parent_category']).' ';



			$data['contact_for_price'] 	= $this->input->post('contact_for_price');

			$data['price'] 				= $this->input->post('price');

			$data['phone_no'] 			= $this->input->post('phone_no');

			$data['country'] 			= $this->input->post('country');

			$meta_search_text .= get_location_name_by_id($data['country']).' ';



			$data['state'] 				= $state_active == 'yes' ? $this->input->post('state') : 0;

			$meta_search_text .= get_location_name_by_id($data['state']).' ';



			$selected_city  = $this->input->post('selected_city');

			$city 			= $this->input->post('city');

			if($selected_city == ''){

				$new_city_id = $this->post_model->get_location_id_by_name($city, 'city', $data['state'], $data['country']);

			}

			else{

				$new_city_id = $selected_city;

			}



			$data['city'] 				= $new_city_id;

			$meta_search_text .= get_location_name_by_id($data['city']).' ';



			$data['zip_code'] 			= $this->input->post('zip_code');

			$meta_search_text .= $data['zip_code'].' ';



			$data['address'] 			= $this->input->post('address');

			$meta_search_text .= $data['address'].' ';



			$data['latitude'] 			= $this->input->post('latitude');

			$data['longitude'] 			= $this->input->post('longitude');



			$this->load->model('admin/system_model');

            $langs = $this->system_model->get_all_langs();

            $titles = array();

            $descriptions = array();

            foreach ($langs as $lang=>$long_name)

            { 

            	$titles[$lang] = $this->input->post('title_'.$lang);

				$meta_search_text .= $titles[$lang].' ';



				$descriptions[$lang] = $this->input->post('description_'.$lang);

            }        				

			$data['title'] 			= json_encode($titles);

			$data['description'] 	= json_encode($descriptions);



			$data['tags'] 				= $this->input->post('tags');

			$meta_search_text		.=  $data['tags'].' ';



			$data['featured_img'] 		= $this->input->post('featured_img');

			$data['video_url'] 			= $this->input->post('video_url');

			$data['gallery'] 			= ($this->input->post('gallery')!=false)?json_encode($this->input->post('gallery')):'[]';

			

			$data['last_update_time'] 	= $time;



			$data['search_meta'] = $meta_search_text;



			$this->before_post_update();



			if(constant("ENVIRONMENT")=='demo')

			{

				$this->session->set_flashdata('msg', '<div class="alert alert-success">Data updated.[NOT AVAILABLE ON DEMO]</div>');

			}

			else

			{

				$post_id = $this->post_model->update_post($data,$id);

				$this->after_post_update($post_id);



				$this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('post_updated').'</div>');

			}

			redirect(site_url('admin/classified/allposts/'.$page));		

		}

	}



	public function uploadfeaturedfile()

    {



        $dir_name 					= 'images/';

        $config['upload_path'] 		= './uploads/'.$dir_name;

        $config['allowed_types'] 	= 'gif|jpg|png';

        $config['max_size'] 		= '5120';

        $config['min_width'] 		= '300';

        $config['min_height'] 		= '256';



        $this->load->library('dbcupload', $config);

        $this->dbcupload->display_errors('', '');



        if($this->dbcupload->do_upload('photoimg'))

        {



            $data = $this->dbcupload->data();

            $this->load->helper('date');

            $format = 'DATE_RFC822';

            $time = time();

            create_rectangle_thumb('./uploads/'.$dir_name.$data['file_name'],'./uploads/thumbs/');

            $media['media_name'] 		= $data['file_name'];

            $media['media_url']  		= base_url().'uploads/'.$dir_name.$data['file_name'];

            $media['create_time'] 		= standard_date($format, $time);

            $media['status']			= 1;



            $status['error'] 	= 0;

            $status['name']	= $data['file_name'];

        }

        else

        {



            $errors = $this->dbcupload->display_errors();

            $errors = str_replace('<p>','',$errors);

            $errors = str_replace('</p>','',$errors);

            $status = array('error'=>$errors,'name'=>'');

        }



        echo json_encode($status);

        die;

    }



    public function uploadgalleryfile()

	{



		$config['upload_path'] = './uploads/gallery/';

		$config['allowed_types'] = 'gif|jpg|JPG|png';

		$config['max_size'] = '5120';



		$this->load->library('dbcupload', $config);

		$this->dbcupload->display_errors('', '');	



		if($this->dbcupload->do_upload('photoimg'))

		{



			$data = $this->dbcupload->data();

			$this->load->helper('date');

			$format = 'DATE_RFC822';

			$time = time();



			$media['media_name'] 		= $data['file_name'];

			$media['media_url']  		= base_url().'uploads/gallery/'.$data['file_name'];

			$media['create_time'] 		= standard_date($format, $time);

			$media['status']			= 1;



			$status['error'] 	= 0;

			$status['name']	= $data['file_name'];

		}

		else

		{



			$errors = $this->dbcupload->display_errors();

			$errors = str_replace('<p>','',$errors);

			$errors = str_replace('</p>','',$errors);

			$status = array('error'=>$errors,'name'=>'');

		}



		echo json_encode($status);

		die;

	}

}



/* End of file install.php */

/* Location: ./application/modules/user/controllers/user_core.php */
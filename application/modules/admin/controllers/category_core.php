<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Classified Category Controller
 *
 * This class handles category management functionality
 *
 * @package		Admin
 * @subpackage	Category
 * @author		nuggplug
 * @link		http://nuggplug.com
 */


class Category_core extends CI_Controller {
	
	var $per_page = 10;
	
	public function __construct()
	{
		parent::__construct();
		is_installed(); #defined in auth helper
		checksavedlogin(); #defined in auth helper
		
		if(!is_admin())
		{
			if(count($_POST)<=0)
			$this->session->set_userdata('req_url',current_url());
			redirect(site_url('admin/auth'));
		}

		$this->per_page = get_per_page_value();#defined in auth helper

		$this->load->model('category_model');
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger" style="margin:0">', '</div>');
	}
	
	public function index()
	{
		$this->all();
	}

	#load all services view with paging
	public function all($start='0')
	{
		$value['posts']  	 = $this->category_model->get_all_categories_by_range($start,'id');

        $data['title'] = lang_key('all_categories');
        $data['content'] = load_admin_view('categories/allcategories_view',$value,TRUE);
		 load_admin_view('template/template_view',$data);		
	}

	#load new service view
	public function newcategory()
	{
        $data['title'] = lang_key('new_category');
        $data['content'] = load_admin_view('categories/newcategory_view','',TRUE);
		load_admin_view('template/template_view',$data);
	}
	
	#load edit service view
	public function edit($id='')
	{
		$value['post']  = $this->category_model->get_category_by_id($id);
		$data['title'] = lang_key('edit_category');
		$data['content'] = load_admin_view('categories/editcategory_view',$value,TRUE);
		load_admin_view('template/template_view',$data);		
	}
	
	#delete a service
	public function delete($id='',$confirmation='')
	{
		if($confirmation=='')
		{
			$data['content'] = load_admin_view('confirmation_view',array('id'=>$id,'url'=>site_url('admin/category/delete')),TRUE);
			 load_admin_view('template/template_view',$data);
		}
		else
		{
			if($confirmation=='yes')
			{
				if(constant("ENVIRONMENT")=='demo')
				{
					$this->session->set_flashdata('msg', '<div class="alert alert-success">Data updated.[NOT AVAILABLE ON DEMO]</div>');
				}
				else
				{
					$this->category_model->delete_category_by_id($id);
					$this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('data_updated').'</div>');
				}
			}
			redirect(site_url('admin/category/all'));		
			
		}		
	}

	#add a service
	public function addcategory()
	{	
		$this->form_validation->set_rules('title', lang_key('title'), 'required');
		$this->form_validation->set_rules('parent', lang_key('parent'), 'required');
		if($this->input->post('parent')==0)
		$this->form_validation->set_rules('fa_icon', lang_key('fa_icon'), 'required');
		
		if ($this->form_validation->run() == FALSE)
		{
			$this->newcategory();	
		}
		else
		{
			$this->load->helper('date');
			$format = 'DATE_RFC822';
			$time = time();

			$data 					= array();			
			$data['title'] 			= $this->input->post('title');
			$data['parent'] 		= $this->input->post('parent');
			$data['fa_icon'] 		= $this->input->post('fa_icon');
			$data['create_time'] 	= $time;
			$data['created_by']		= get_id_by_username($this->session->userdata('user_name'));
			$data['status']			= 1;
			
			if(constant("ENVIRONMENT")=='demo')
			{
				$this->session->set_flashdata('msg', '<div class="alert alert-success">Data updated.[NOT AVAILABLE ON DEMO]</div>');
			}
			else
			{
				$this->category_model->insert_category($data);
				$this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('data_inserted').'</div>');				
			}
			redirect(site_url('admin/category/newcategory'));		
		}
	}
	
	
	#update a service
	public function updatecategory()
	{
		$this->form_validation->set_rules('title', lang_key('title'), 'required');
		$this->form_validation->set_rules('parent', lang_key('parent'), 'required');
							
		if ($this->form_validation->run() == FALSE)
		{
			$id = $this->input->post('id');
			$this->editcategory($id);	
		}
		else
		{
			$id = $this->input->post('id');

			$data 					= array();			
			$data['title'] 			= $this->input->post('title');
			$data['parent'] 		= $this->input->post('parent');	
			$data['fa_icon'] 		= $this->input->post('fa_icon');		
			
			if(constant("ENVIRONMENT")=='demo')
			{
				$this->session->set_flashdata('msg', '<div class="alert alert-success">Data updated.[NOT AVAILABLE ON DEMO]</div>');
			}
			else
			{
				$this->category_model->update_category($data,$id);
				$this->session->set_flashdata('msg', '<div class="alert alert-success">'.lang_key('data_updated').'</div>');
			}
			redirect(site_url('admin/category/edit/'.$id));		
		}
	}

}

/* End of file admin.php */
/* Location: ./application/modules/admin/controllers/admin.php */
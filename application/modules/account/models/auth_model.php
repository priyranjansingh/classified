<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * memeshare Admin Controller
 *
 * This class handles some admin functionality
 *
 * @package		bookit
 * @subpackage	Admin
 */
require_once'auth_model_core.php';
class Auth_model extends Auth_model_core {

	public function __construct()
	{
		parent::__construct();
	}
}
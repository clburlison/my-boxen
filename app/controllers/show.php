<?php
class show extends Controller
{
	function __construct()
	{
		if( ! isset($_SESSION['user']))
		{
			redirect('auth/login/clients');
		}
	} 

	function index()
	{
		$data = array();
		$obj = new View();
		$obj->view('dashboard/dashboard', $data);

	}
	
	function reports()
	{
		$client = new Munkireport();
		
		$data['objects'] = $client->retrieve_many('id > 0');
		$data['page'] = 'reports';
		
		$obj = new View();
		$obj->view('munki_list', $data);
		
	}
	
	function client_list()
	{
		$this->reports();
		
	}

	function report($serial = '')
	{
		$client = new Munkireport($serial);
		
		$report = $client->report_plist;
		
		// Move install results over to their install items.
		$install_results = array();
		if(isset($report['InstallResults']))
		{
			foreach($report['InstallResults'] as $result)
			{
				$install_results[$result["name"] . '-' .$result["version"]] = 
					array('result' => $result["status"] == 0 ? 'Installed' : 'error');
			}
		}
		if(isset($report['ItemsToInstall']))
		{
			foreach($report['ItemsToInstall'] as $key => &$item)
			{
				$item['install_result'] = 'Pending';
				$dversion = $item["display_name"].'-'.$item["version_to_install"];
				if(isset($install_results[$dversion]))
				{
					$item['install_result'] = $install_results[$dversion]['result'];
				}
			}
			
		}
		// Move install results to managed installs
		if(isset($report['ManagedInstalls']))
		{
			foreach($report['ManagedInstalls'] as $key => &$item)
			{
				if(isset($item["version_to_install"]))
				{
					$dversion = $item["display_name"].'-'.$item["version_to_install"];
					if(isset($install_results[$dversion]) && $install_results[$dversion]['result'] == 'Installed')
					{
						$item['installed'] = TRUE;
					}
				}
			}
			
		}
		if(isset($report['AppleUpdates']))
		{
			foreach($report['AppleUpdates'] as $key => &$item)
			{
				$item['install_result'] = 'Pending';
				$dversion = $item["display_name"].'-'.$item["version_to_install"];
				
				if(isset($install_results[$dversion]))
				{
					$item['install_result'] = $install_results[$dversion]['result'];
				}
			}
			
		}
		
		// Move removal results over to their removal items.
		$removal_results = array();
		if(isset($report['RemovalResults']))
		{
			foreach($report['RemovalResults'] as $result)
			{
				if(is_string($result) && preg_match('/^Removal of (.+): (.+)$/', $result, $matches))
				{
					$removal_results[$matches[1]]['result'] = $matches[2] == 'SUCCESSFUL' ? 'Removed' : $matches[2];
				}
			}
		}
		if(isset($report['ItemsToRemove']))
		{
			foreach($report['ItemsToRemove'] as $key => &$item)
			{
				$item['install_result'] = 'Pending';
				$dversion = $item["display_name"];
				if(isset($removal_results[$dversion]))
				{
					$item['install_result'] = $removal_results[$dversion]['result'];
				}
			}
			
		}
		
		$data['client'] = $client;
		$data['report'] = $report;
		$data['serial'] = $serial;
		$data['page'] = 'report';
		
		$obj = new View();
		$obj->view('report',$data);
		
	}
	
}
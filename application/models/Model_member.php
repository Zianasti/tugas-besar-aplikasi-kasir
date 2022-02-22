<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Model_member extends CI_Model {

  var $table = 'members';
  var $column_order = array('member_name');
  var $column_search = array('member_name');
  var $order = array('member_id' => 'desc');

  function get_member_datatables() {
    $this->_get_datatables_query();
    if($_POST['length'] != -1){
      $this->db->limit($_POST['length'], $_POST['start']);
      $query = $this->db->get();
      return $query->result();
    }
  }

  private function _get_datatables_query() {
    $this->db->from($this->table);
    $i = 0;
    foreach ($this->column_search as $item) {
      if($_POST['search']['value']) {
        if($i===0) {
          $this->db->group_start();
          $this->db->like($item, $_POST['search']['value']);
        }
        else {
          $this->db->or_like($item, $_POST['search']['value']);
        }
        if(count($this->column_search) - 1 == $i){
          $this->db->group_end();
        }
      }
      $i++;
    }

    if(isset($_POST['order'])) {
      $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
    } 
    else if(isset($this->order)) {
      $order = $this->order;
      $this->db->order_by(key($order), $order[key($order)]);
    }
  }

  function count_filtered() {
    $this->_get_datatables_query();
    $query = $this->db->get();
    return $query->num_rows();
  }

  public function count_all() {
    $this->db->from($this->table);
    return $this->db->count_all_results();
  }

  public function find_member($member_id) {
    $this->db->where('member_id', $member_id);
    return $this->db->get($this->table)->row_array();
  }

  function save_member($data) {
		return $this->db->insert($this->table, $data);
	}

  function update_member($member_id, $data) {
		$this->db->where('member_id', $member_id);
		return $this->db->update($this->table, $data);
	}

}

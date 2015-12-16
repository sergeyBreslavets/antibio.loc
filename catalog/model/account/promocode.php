<?php
class ModelAccountPromocode extends Model {
	public function getPromocodeDescription($promocode_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer_to_promocode WHERE promocode_id = '" . $this->db->escape($promocode_id)  . "'");

		return $query->rows;
	}

}
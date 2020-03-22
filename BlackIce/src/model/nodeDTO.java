package model;

public class nodeDTO {

	private int f_node;
	private int n_node;
	private int road_rank_;
	private int road_type_;
	private int node_type;

	public nodeDTO(int f_node, int n_node, int road_rank_, int road_type_, int node_type) {
		this.f_node = f_node;
		this.n_node = n_node;
		this.road_rank_ = road_rank_;
		this.road_type_ = road_type_;
		this.node_type = node_type;
	}
	
	public nodeDTO(int f_node, int n_node) {
		this.f_node = f_node;
		this.n_node = n_node;
	}

	public nodeDTO() {
		
	}

	public int getF_node() {
		return f_node;
	}

	public void setF_node(int f_node) {
		this.f_node = f_node;
	}

	public int getN_node() {
		return n_node;
	}

	public void setN_node(int n_node) {
		this.n_node = n_node;
	}

	public int getRoad_rank_() {
		return road_rank_;
	}

	public void setRoad_rank_(int road_rank_) {
		this.road_rank_ = road_rank_;
	}

	public int getRoad_type_() {
		return road_type_;
	}

	public void setRoad_type_(int road_type_) {
		this.road_type_ = road_type_;
	}

	public int getNode_type() {
		return node_type;
	}

	public void setNode_type(int node_type) {
		this.node_type = node_type;
	}

}

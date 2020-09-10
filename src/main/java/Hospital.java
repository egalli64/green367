
public class Hospital {
	 private int hospital_id;
	 private String hospital_name;
	 private String hospital_address;


 public Hospital() {
 }
 public Hospital(int hospital_id, String hospital_name,String hospital_address) {
     this.hospital_id = hospital_id;
     this.hospital_name = hospital_name;
     this.hospital_address = hospital_address;
 }

 public long gethospital_id() {
     return hospital_id;
 }

 public void sethospital_id(int hospital_id) {
     this.hospital_id = hospital_id;
 }

 public String gethospital_name() {
     return hospital_name;
 }

 public void sethospital_name(String hospital_name) {
     this.hospital_name = hospital_name;
 }
 
 public String gethospital_address() {
     return hospital_address;
 }

 public void sethospital_address(String hospital_address) {
     this.hospital_address = hospital_address;
 }

 @Override
 public String toString() {
     return "Hospital [hospital_id=" + hospital_id + ", hospital_name=" + hospital_name + ", hospital_address=" + hospital_address +"]";
 }

}
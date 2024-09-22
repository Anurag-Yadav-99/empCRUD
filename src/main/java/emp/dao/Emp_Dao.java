package emp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import emp.model.Employee_Model;


@Component
public class Emp_Dao {

		@Autowired
		private HibernateTemplate hibernateTemplate;

		@Transactional
		public void createEmployee(Employee_Model empModel) {
			this.hibernateTemplate.saveOrUpdate(empModel);
		}
		
		public List<Employee_Model> getAllEmployees(){
			List<Employee_Model> employees = this.hibernateTemplate.loadAll(Employee_Model.class);
			return employees;
		}
		@Transactional
		public void deleteEmployee(int id) {
			Employee_Model emp = this.hibernateTemplate.load(Employee_Model.class,id);
			this.hibernateTemplate.delete(emp);
		}
		@Transactional
		public void updateEmployee(Employee_Model empModel) {
		    // Load the existing employee from the database using the primary key
		    Employee_Model existingEmployee = this.hibernateTemplate.get(Employee_Model.class, empModel.getEmpId());
		    
		    if (existingEmployee != null) {
		        // Update the existing employee's details with the new values
		        existingEmployee.setEmpName(empModel.getEmpName());
		        existingEmployee.setEmpAge(empModel.getEmpAge());
		        existingEmployee.setEmpAddress(empModel.getEmpAddress());
		        existingEmployee.setEmpDept(empModel.getEmpDept());

		        // Use merge instead of update to update the existing record
		        this.hibernateTemplate.merge(existingEmployee);

		        // Flush the session to ensure the updates are applied immediately
		        this.hibernateTemplate.flush();
		    } else {
		        System.out.println("No employee found with ID: " + empModel.getEmpId()); // Debugging line
		    }
		}


		public Employee_Model getEmployee(int id) {
			return this.hibernateTemplate.get(Employee_Model.class,id);
		}
		
		
}

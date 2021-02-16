package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface C03_CommandProcessor {

		public String process
			(HttpServletRequest req, HttpServletResponse resp);
			
}

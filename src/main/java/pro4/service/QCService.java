package pro4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pro4.dao.QCDao;
import pro4.vo.QC;

@Service
public class QCService {
	@Autowired(required=false)
	private QCDao dao;
	public List<QC> QCList(QC sch){
		return dao.QCList(sch);
	}
}


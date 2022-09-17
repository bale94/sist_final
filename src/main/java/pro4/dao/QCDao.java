package pro4.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import pro4.vo.QC;

@Repository
public interface QCDao {
	public List<QC> QCList(QC sch);
}

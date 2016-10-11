package springmvc.model.dao;

import java.util.List;

import springmvc.model.AdditionalInfo;

public interface AdditionalInfoDao {
	List<AdditionalInfo> getAdditionalInfo(Integer id);
	AdditionalInfo saveInfo(AdditionalInfo additionalinfo);
	void delInfo(AdditionalInfo additionalinfo);
	AdditionalInfo getInfo(Integer id);

}

package utile;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;

/**
 * Created by dengry on 2016/10/5.
 */
public class PageUtil {
    /**
     * 构建PageRequest,按照id降序
     * @param   pageno
     * @param   limit
     * @return
     */
    public static PageRequest buildPageRequest(Integer pageNumber, Integer pageSize) {
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        return new PageRequest(pageNumber - 1, pageSize, sort);
    }
}

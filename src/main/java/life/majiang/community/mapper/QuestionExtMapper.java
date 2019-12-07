package life.majiang.community.mapper;

import life.majiang.community.model.Question;

/**
 *
 */
public interface QuestionExtMapper {
    // 自创
    int incView(Question record);
    int intCommentCount(Question record);

}

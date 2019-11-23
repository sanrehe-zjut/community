package life.majiang.community.provider;

import life.majiang.community.dto.AccessTokenDTO;
import org.springframework.stereotype.Component;

/**
 *
 */

@Component
public class GithubProvider {
    public String getAccessToken(AccessTokenDTO accessTokenDTO) {
        return "today 20191123";
    }
}

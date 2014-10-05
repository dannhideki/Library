package br.com.library.views;

import br.com.library.entity.Book;
import br.com.library.entity.User;
import br.com.library.interfaces.Observer;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author Daniel Hideki
 * @since 09/09/2014
 */
public class View implements Observer<Book>{

    private List<Book> books;

    @Override
    public void update(List<Book> books) {
        this.books = books;
    }

    public JSONArray generateJSON() throws JSONException {
        JSONArray jsonResult = new JSONArray();
        JSONObject jsonObj = new JSONObject();

        for (Book book : books) {
            try {
                jsonObj.put("author", book.getAuthor());
                jsonObj.put("title", book.getTitle());
                jsonObj.put("isbn", book.getIsbn());
                jsonObj.put("dateRelease", book.getDateRelease());
                jsonObj.put("type", book.getTypeBook());
                jsonResult.put(jsonObj);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jsonResult;
    }
}

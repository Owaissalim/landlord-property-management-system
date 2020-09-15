package system;

import java.util.ArrayList;

/*
 * This class represents a collection of quotes. 
 * A QuoteHistory object can store different Quote objects, 
 * and each QuoteHistory object pertains to a single client.
 * 
 * Author: Zak King, Andrew Hyatt
 */
public class QuoteHistory {
	private ArrayList<Quote> quoteHistory = new ArrayList<Quote>();
	
	// Getter method
	public ArrayList<Quote> getQuoteHistory() {
		return quoteHistory;
	}
	
	public void addQuote (Quote quote) {
		quoteHistory.add(quote);
	}
	
	public void removeQuote (Quote quote) {
		quoteHistory.remove(quote);
	}
	
	/*
	 * This method checks if a quote exists in the list.
	 * If so, returns the index. If not, returns -1.
	 */
	public int getQuoteIndex (Quote quote) {
		int i;
		for (i = 0; i < quoteHistory.size(); i++) {
			if (quoteHistory.get(i).equals(quote)) {
				return i;
			}
		}
		return -1;
	}

}

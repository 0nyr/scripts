// @author Onyr
/**
 * Reading lines from vocabulary .txt file using nio.File
 */

public class Main {
	
	public static void main (String[] args) {
		
		String vocabularyFilePath = 
			"/home/onyr/Documents/bin_onyr/vocabulary_en_fr/res/vocabulary_en_fr.txt";
		VocaLineExtractor vocaLines = new VocaLineExtractor(vocabularyFilePath);
		
		//vocaLines.printAllLines();
		//vocaLines.printNumberOfLines();
		vocaLines.printRandomNumberedLine();
	}
}

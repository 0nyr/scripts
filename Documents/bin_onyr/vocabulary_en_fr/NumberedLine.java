// @author Onyr
/**
 * Simple class that contains a vocabulary String line and it's position in the vocabulary_en_fr.txt file
 */

public class NumberedLine {
	
	public int position;
	public String enVoca;
	public String frVoca;
	
	public NumberedLine(String fullLine, int position) {
		this.position = position;
		this.separateEnAndFrVoca(fullLine);
	}
	
	private void separateEnAndFrVoca(String fullLine) {
		String[] enAndFrVoca = new String[2];	// contains en voca first and fr voca second
		enAndFrVoca = fullLine.split("=");
		enVoca = enAndFrVoca[0];
		frVoca = enAndFrVoca[1];
	}
	
}

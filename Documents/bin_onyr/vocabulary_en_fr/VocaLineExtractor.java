// @author Onyr
/**
 * This class handle the extraction and display of a ramdom line of the vocabulary_en_fr.txt file
 */

import java.util.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.io.*;

public class VocaLineExtractor {
	
	private List<String> lines;
	private Iterator<String> line;	// WARN: Iterators don't get updated without reading data !
	private int numberOfLines;
	
	// ANSI color code
	String colorFr = "\033[38;5;203m";	// magenta
	String colorEn = "\033[38;5;69m"; // blue
	String defaultColorEndANSI = "\033[0m";
	
	public VocaLineExtractor(String filePath) {
		lines = Collections.emptyList();
		loadLines(filePath);
		line = lines.iterator();
		numberOfLines = determineNumberOfLines();
	}
	
	public String nextLine() {
		return line.next();
	}
	
	public boolean hasNextLine() {
		return line.hasNext();
	}
	
	public void printAllLines() {
		while (this.hasNextLine()) {
			System.out.println(this.nextLine());
		}
		line = lines.iterator();
	}
	
	public void printNumberOfLines() {
		System.out.println("Number of vocabulary words = "+this.numberOfLines);
	}
	
	public int getNumberOfLines() {
		return numberOfLines;
	}
	
	public NumberedLine getRandomNumberedLine() {
		int randomLineIndex = (int)(Math.floor(Math.random()*numberOfLines + 1));
		String randomLine = lines.get(randomLineIndex);
		NumberedLine ramdomNumberedLine = new NumberedLine(randomLine, randomLineIndex);
		return ramdomNumberedLine;
	}
	
	public void printRandomNumberedLine() {
		NumberedLine ramdomNumberedLine = this.getRandomNumberedLine();
		this.printEnStringInColor(ramdomNumberedLine.enVoca);
		this.printFrStringInColor(ramdomNumberedLine.frVoca);
		this.printLineNumberString(ramdomNumberedLine.position);
	}
	
	private void printEnStringInColor(String enVoca) {
		this.printANSIColorCode(colorEn);
		System.out.print(" "+enVoca);
		this.printANSIColorCode(defaultColorEndANSI);
	}
	
	private void printFrStringInColor(String frVoca) {
		this.printANSIColorCode(colorFr);
		System.out.print(" = "+frVoca);
		this.printANSIColorCode(defaultColorEndANSI);
	}
	
	private void printLineNumberString(int position) {
		this.printANSIColorCode(colorFr);
		System.out.println(" ["+position+"] ");
		this.printANSIColorCode(defaultColorEndANSI);
	}
	
	private void printANSIColorCode(String codeANSI) {
		System.out.print(codeANSI);
	}
	
	private void loadLines(String filePath) {
		try {
			lines = Files.readAllLines(Paths.get(filePath), StandardCharsets.UTF_8);
		} catch (IOException e) {
			e.printStackTrace();
			lines.add("Error = Problem while loading file !");
		}
	}
	
	private int determineNumberOfLines() {
		int indexLine = 0;
		while (nextLineExists(indexLine)) {	// cannot use iterator.hasNext here
			indexLine++;
		}
		return indexLine;
	}
	
	private boolean nextLineExists(int indexLine) {
		boolean nextLineExistence;
		try {
			lines.get(indexLine);	// return an Exception if no element at given index
			nextLineExistence = true;
		} catch (Exception e){
			//e.printStackTrace();
			nextLineExistence = false;
		}
		return nextLineExistence;
	}
}

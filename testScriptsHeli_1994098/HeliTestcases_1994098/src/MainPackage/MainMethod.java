package MainPackage;



public class MainMethod {

	public static void main(String[] args) throws InterruptedException {
		addTocart testCaseOne = new addTocart();
		historyPageInvoice testCaseFour = new historyPageInvoice();
		multipleCart testCaseTwo = new multipleCart();
		orderPlaced testCaseThree = new orderPlaced();
		profileUpdate testCaseFive = new profileUpdate();

		testCaseOne.doAddtoCart();
		testCaseTwo.multipleCart();
		testCaseThree.placedOrder();
		testCaseFour.viewinvoices();
		testCaseFive.updateProfile();

	}

}

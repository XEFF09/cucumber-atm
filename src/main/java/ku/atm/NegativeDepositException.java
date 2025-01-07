package ku.atm;

public class NegativeDepositException extends RuntimeException {
  public NegativeDepositException(String message) {
    super(message);
  }
}

-- Auto-calculate fine (MySQL Trigger)
-- Let's say the fine is ₹1 per day after the due date. You can add a trigger to auto-calculate fine when a return is updated.

DELIMITER //

CREATE TRIGGER calculate_fine
BEFORE UPDATE ON Loans
FOR EACH ROW
BEGIN
    IF NEW.return_date IS NOT NULL AND NEW.return_date > NEW.due_date THEN
        SET NEW.fine_amount = DATEDIFF(NEW.return_date, NEW.due_date) * 1.00;
    ELSE
        SET NEW.fine_amount = 0.00;
    END IF;
END;
//
DELIMITER ;

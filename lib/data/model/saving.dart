class RhapsaveSaving {
  final int amount;
  final Map<String, int> savings;

  const RhapsaveSaving(this.amount, this.savings);
}

const testSavings = [
  RhapsaveSaving(
    1000000,
    {
      'Car Savings': 40,
      'Mortgage Savings': 50,
      'School Fees ': 20,
      'Christmas Savings': 15,
    },
  ),
  RhapsaveSaving(
    3000000,
    {
      'Laptop Purchase': 40,
      'Rent Savings': 70,
      'Transportation': 20,
      'Christmas Savings': 15,
    },
  ),
];

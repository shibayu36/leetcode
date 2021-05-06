import { isPalindrome } from "./5.longest-palindromic-substring";

describe("isPalindrome", () => {
  it.each(["", "あ", "あいいあ", "たけやぶやけた", "回文回"])("回文である: %s", (s) => {
    expect(isPalindrome(s, 0, s.length - 1)).toBe(true);
  });

  it.each(["あい", "あいう"])("回文でない: %s", (s) => {
    expect(isPalindrome(s, 0, s.length - 1)).toBe(false);
  });
});

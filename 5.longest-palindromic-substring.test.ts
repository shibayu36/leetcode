import { isPalindrome } from "./5.longest-palindromic-substring";

describe("isPalindrome", () => {
  it.each(["", "あ", "あいいあ", "たけやぶやけた", "回文回"])("回文である: %s", (s) => {
    const cache = Array.from(new Array(s.length), () => new Array(s.length).fill(undefined));
    expect(isPalindrome(s, 0, s.length - 1, cache)).toBe(true);
  });

  it.each(["あい", "あいう"])("回文でない: %s", (s) => {
    const cache = Array.from(new Array(s.length), () => new Array(s.length).fill(undefined));
    expect(isPalindrome(s, 0, s.length - 1, cache)).toBe(false);
  });
});

import { readFileSync } from 'node:fs';
import { expect, test } from 'vitest';

test('solution contains the expected result', () => {
  const solution = readFileSync(
    new URL('./solution.md', import.meta.url),
    'utf-8',
  ).toLowerCase();
  expect(solution).toContain('391');
});

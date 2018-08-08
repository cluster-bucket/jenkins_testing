const expect = require('chai').expect;
const helloize = require('../hello');

describe('hello', function() {
  it('should return Hello, world', function() {
    const result = helloize('world');
    console.log(result);
    expect(result).to.equal('NO Hello, world');
  });
});

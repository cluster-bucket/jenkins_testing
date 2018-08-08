const expect = require('chai').expect;
const goodbyeize = require('../goodbye');

describe('goodbye', function() {
  it('should return Goodbye, world', function() {
    const result = goodbyeize('world');
    expect(result).to.equal('Goodbye, world');
  });
});

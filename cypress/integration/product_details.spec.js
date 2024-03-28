describe('Users can navigate to products page from home page', () => {
  beforeEach(() => {
    cy.visit('http://localhost:3000');
  });

  it('User visits product detail page', () => {
    cy.get('img').first().click();
    cy.get('.product-detail');
  });
})
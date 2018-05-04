import Review from '../../app/javascript/components/Review';

describe('Review', () => {
  let title,
      body,
      rating,
      wrapper,
      onClick;

  beforeEach(() => {
    jasmineEnzyme();
    onClick = jasmine.createSpy('onClick spy');
    wrapper = mount(
      <Review
        title="Fun ride!"
        body="Best time of my life!"
        rating="5"
        onClick={onClick}
      />
    );
  });
//they see a list of reviews
  it('should render an h3 tag', () => {
    expect(wrapper.find('h1')).toBePresent();
    expect(wrapper.find('h1').text()).toEqual('Review Title: Fun ride!');
  });

  it('should render a p tag', () => {
  expect(wrapper.find('h4')).toBePresent();
  expect(wrapper.find('h4').text()).toEqual('Review: Best time of my life!');
  });

  it('should render a p tag', () => {
  expect(wrapper.find('li')).toBePresent();
  expect(wrapper.find('li').text()).toEqual('Rating: 5');
  });
//they can add a review (to be determined)

});

//they see a list of reviews
//they can add a review (click button)
//they can paginate reviews
//

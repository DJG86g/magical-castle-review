// import Elephant from '../../src/components/Elephant';

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
        rating=5
        onClick={onClick}
      />
    );
  });
//they see a list of reviews
  it('should render an h3 tag', () => {
    expect(wrapper.find('h3')).toBePresent();
    expect(wrapper.find('h3').text()).toEqual('Fun ride!');
  });

  it('should render a p tag', () => {
  expect(wrapper.find('p')).toBePresent();
  expect(wrapper.find('p').text()).toEqual('Best time of my life!');
  });

  it('should render a p tag', () => {
  expect(wrapper.find('p')).toBePresent();
  expect(wrapper.find('p').text()).toEqual('5');
  });
//they can add a review (click button)
  it('should invoke the onClick function from the props when clicked', () => {
    wrapper.simulate('click');
    expect(onclick).toHaveBeenCalled();
  });

});

//they see a list of reviews
//they can add a review (click button)
//they can paginate reviews
//

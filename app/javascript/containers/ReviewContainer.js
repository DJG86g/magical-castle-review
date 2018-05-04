import React, { Component } from 'react';
import Review from '../components/Review';

class ReviewContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      reviews: {}
    }
  }

  componentDidMount() {
    let reviewId = this.props.params.id
    fetch(`/api/v1/rides/1/reviews`)
    .then(response => {
      let parsed = response.json()
      return parsed
    }).then(reviews => {
      this.setState({ reviews: reviews})
    })
  }

  render() {
    let reviews = this.state.reviews.map(review => {
      return(
        <Review
        key={review.id}
        title={review.title}
        body={review.body}
        rating={review.rating}
        />
      )
    })
  }
}


export default ReviewContainer;

import React, { Component } from 'react';
import ReviewComponent from '../components/ReviewComponent'


class RideShowContainer extends Component {
  constructor(props) {
    debugger;
    super(props);
    this.state = {
      reviews: []
    }
  }

  componentDidMount() {
    fetch('/api/v1/rides/${ride_id}/reviews.json')
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
            error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({
        reviews: body
      });
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
    let reviews = this.state.reviews.map(review => {
      return(
        <ReviewComponent
          key={review.id}
          id={review.id}
          title={review.title}
          body={review.body}
          rating={review.rating}
        />
      )
    })

    return(
      <div className="row">
        <div className="small-8 small-centered columns">
          <h3 id="review-title">Reviews:</h3>
          {reviews}
        </div>
      </div>
    )
  }
}




export default RideShowContainer;

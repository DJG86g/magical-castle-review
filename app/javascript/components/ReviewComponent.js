import React from 'react';

const ReviewComponent = props => {
    return (
    <div className="review-tile-maker">
      <p id="review-tile__title">Title: {props.title}</p>
      <p id="review-tile__body">Review: {props.body}</p>
      <p id="review-tile__rating">Rating: {props.rating}</p>
    </div>
    );
  }

// React.render(<FormComponent />, document.getElementById('app'));

export default ReviewComponent;

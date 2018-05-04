import React from 'react';

const Review = (props) => {
  return(
    <div className="review-tile">
        <h1>Review Title: {props.title}</h1>
        <h4>Review: {props.body}</h4>
        <li>Rating: {props.rating}</li>

    </div>
  )
}

export default Review;

import React from 'react';
import { Link } from 'react-router';

const Review = (props) => {
  return(
    <div className="review-tile">
        <h3>Review Title: {props.title}</h3>
        <p>Review: {props.body}</p>
        <p>Rating: {props.rating}</p>

    </div>
  )
}

export default Review;

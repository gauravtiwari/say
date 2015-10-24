import React from 'react';

class Posts extends React.Component {

  constructor(props) {
    super(props);
    this.state = {posts: props.posts};
  }

  componentDidMount() {
    var swiper = window.Swiper;
    swiper('.swiper-container', {
      slidesPerView: 1,
      loop: true,
      autoplay: 5000,
      autoplayDisableOnInteraction: false
    });
  }

  render() {
    return <div className="swiper-container">
        <div className="swiper-wrapper">
          {this.state.posts.map(post => (
            <div key={post.id} className="swiper-slide">{post.text}</div>
          ))}
        </div>
      </div>;
  }
}

export default Posts;

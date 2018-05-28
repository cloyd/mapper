import React from 'react'
import styled from 'styled-components'
import ReactStars from 'react-stars'
import PropTypes from 'prop-types'

const ListWrapper = styled.div`
  position: absolute;
  bottom: 0;
  height: 40vh;
  width: 100%;
`

const List = styled.div`
  overflow: scroll;
  height: 100%;
  width: 100%;
  background-color: rgba(255,255,255,0.7);
    .card {
      background: #fff;
      cursor: pointer;
      box-shadow: 0 1px 4px 0 #666;
      // height: 125px;
      transition: all 0.3s ease;
      padding: 15px;
      margin: 15px;
      &:hover {
        background-color: #fafafa;
      }
      &.active {
        margin: 30px -30px;
        border: 0;
        height: 250px;
        position: relative;
        z-index: 1;
      }
  }
`

const ResortList = ({ data }) => {
  return (
    <ListWrapper>
      <List>
        {data.map(item => (
          <div className='card' key={'list-' + item.name}>
            <div>
              {item.name}
              <ReactStars
                count={item.review_score_avg}
                size={24}
                color1='#ff9900'
                color2='#6599ff'
                half
                edit={false}
              />
              {item.review_count} reviews
            </div>
          </div>
        ))}
      </List>
      {/* <BlurOverLay /> */}
    </ListWrapper>
  )
}

ResortList.defaultProps = {
  data: []
}

ResortList.propTypes = {
  data: Proptypes.array
}

export default ResortList

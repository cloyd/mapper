import React from 'react'
import PropTypes from 'prop-types'
  
import MapClusters from '../components/MapClusters'

const transformOptions = lists => {
  return lists.map(item => {
    return {...item, label: item.name, value: item.name }
  })
}
  
const ResortMapContainer = props => {
  const regions = transformOptions(props.regions)
  return (
    <MapClusters regions={regions}/>
  )
}

ResortMapContainer.defaultProps = {
  regions: []
}

ResortMapContainer.propTypes = {
  regions: PropTypes.array
}

export default ResortMapContainer
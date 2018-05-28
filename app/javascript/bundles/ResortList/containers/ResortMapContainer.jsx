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

ResortListApp.defaultProps = {
  regions: []
}

ResortListApp.propTypes = {
  regions: Proptypes.array
}

export default ResortMapContainer
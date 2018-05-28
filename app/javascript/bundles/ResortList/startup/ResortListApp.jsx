import React from 'react'
import PropTypes from 'prop-types'

import ResortMapContainer from '../containers/ResortMapContainer'

const ResortListApp = ({ regions }) => (
  <ResortMapContainer regions={ regions }/>
)

ResortListApp.defaultProps = {
  regions: []
}

ResortListApp.propTypes = {
  regions: PropTypes.array
}

export default ResortListApp

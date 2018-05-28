import React, { Component } from 'react'
import { compose, withProps, withStateHandlers } from 'recompose'
import {
  withScriptjs,
  withGoogleMap,
  GoogleMap,
  Marker,
  InfoWindow
} from 'react-google-maps'
import { MarkerClusterer } from 'react-google-maps/lib/components/addons/MarkerClusterer'
import styled from 'styled-components'
import Select from 'react-select'

import List from '../components/ResortList'

const Wrapper = styled.div`
  position: relative;
`

const SelectField = styled.div`
  position: fixed;
  top: 25px;
  left: 50%;
  width: 80%;
  transform: translateX(-50%);
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
`

class MapWithAMarkerClusterer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      selectedRegion: props.regions[2],
      regions: props.regions,
      defaultZoom: 6
    }

    this.map = null
  }

  componentDidMount() {
    this.fitToBounds()
  }

  onSelect = param => {
    this.setState({selectedRegion: param}, () => {
      this.fitToBounds()
    })
  }

  /**
   * fittobound method
   * push selected region's resort to bound and pan to the new bounds
   * 
   * @memberof MapWithAMarkerClusterer
   */
  fitToBounds = () => {
    const { LatLng, LatLngBounds }  = google.maps
    const bounds = new LatLngBounds()
    const { selectedRegion } = this.state

    let newBounds = []
    selectedRegion.resorts.map(resort=> newBounds.push(new LatLng(Number(resort.lat), Number(resort.lng))))
    newBounds.forEach(bound => bounds.extend(bound))

    // this.map.fitBounds(bounds)
    this.map.panToBounds(bounds, 200)
    let currentZoom = this.map.getZoom()
    if(currentZoom > 15){s
      setTimeout(()=>{
          this.setState({defaultZoom: 15})
      }, 100)
    }
  }

  render() {
    const { selectedRegion, regions, defaultZoom } = this.state
    const { isOpen, onToggleOpen } = this.props

    return (
      <Wrapper>
        <GoogleMap
          ref={node => this.map = node}
          defaultZoom={defaultZoom}
          defaultCenter={{ lat: 39.6423111, lng: -105.8716812 }}
          defaultOptions={{mapTypeControl: false}}
        >
          <MarkerClusterer
            averageCenter
            enableRetinaIcons
            gridSize={60}
          >
            {selectedRegion.resorts.map(region => (
              <Marker
                onClick={onToggleOpen}
                key={region.name}
                position={{ lat: Number(region.lat), lng: Number(region.lng) }}
              >
                {isOpen && <InfoWindow  onCloseClick={onToggleOpen}>
                  <span>{region.name}</span>
                </InfoWindow> }
              </Marker>
            ))}
          </MarkerClusterer>
        </GoogleMap>

        <SelectField>
          <Select 
            defaultValue={selectedRegion}
            label="Select Region"
            options={regions}
            onChange={this.onSelect}
          />
        </SelectField>

        <List data={selectedRegion.resorts} />
      </Wrapper>
    )
  }
}

export default compose(withProps({
  googleMapURL: "https://maps.googleapis.com/maps/api/js?key=AIzaSyC4R6AN7SmujjPUIGKdyao2Kqitzr1kiRg&v=3.exp&libraries=geometry,drawing,places",
  loadingElement: <div style={{ height: `100%` }} />,
  containerElement: <div style={{ height: `100vh` }} />,
  mapElement: <div style={{ height: `100%` }} />,
}),
withStateHandlers(() => ({
    isOpen: false,
  }), {
  onToggleOpen: ({ isOpen }) => () => ({
    isOpen: !isOpen,
  })
}),
withScriptjs,
withGoogleMap)(MapWithAMarkerClusterer)
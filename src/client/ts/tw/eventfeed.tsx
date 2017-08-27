import React, {ReactElement} from "react";
import {api, map} from "./util";

export class EventFeeder extends React.Component<{}, {events: any[], timer: any}> {
  constructor(props) {
    super(props);
    this.state = {events: [], timer: null};
  }

  async fetchEvents() {
    var events = await api("getLastEvents");
    console.log(events);
    var timer = setTimeout(() => {
      this.fetchEvents();
    }, 1000);
    this.setState({ timer: timer });
  }

  componentDidMount() {
    this.fetchEvents();
  }

  componentWillUnmount() {
    if (this.state.timer) {
      clearTimeout(this.state.timer);
    }
  }

  render() {
    var key = 0;
    var children = map(this.props.children as any[], (x) => {
      return React.cloneElement(x, {events: this.state.events || [], key: key++});
    });
    return <div>
      {children}
    </div>;
  }
}

export class EventList extends React.Component<{events: any[]}, {}> {
  render() {
    var key = 0;
    var events = map(this.props.events, (event) => {
      return <EventView event={event} key={key++}></EventView>;
    });
    return <div>
      {events}
    </div>;
  }
}

export class EventView extends React.Component<{event: any}, {}> {
  render() {
    return <div>
      Some event
    </div>;
  }
}
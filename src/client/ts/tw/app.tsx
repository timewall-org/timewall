import React from "react";
import {EventFeeder, EventList} from "./eventfeed";

export default class App extends React.Component<{}, {}> {
  render() {
    return <div>
      <h1>The world history</h1>
      <div>Tell about an event that happened <strong>right now</strong>:</div>
      <form>
        <input type="text" name="content" />
        <input type="submit" value="Post" />
      </form>
      <EventFeeder>
        <EventList events={[]}></EventList>
      </EventFeeder>
    </div>;
  }
}

class Trainings {
  final int id;
  final String fil,
      date,
      slot,
      sptype,
      spname,
      venue,
      title,
      description,
      image;

  Trainings(
      {this.id,
      this.fil,
      this.date,
      this.slot,
      this.sptype,
      this.spname,
      this.venue,
      this.title,
      this.description,
      this.image});
}

// list of products
// for our demo
List<Trainings> trains = [
  Trainings(
    id: 1,
    fil: "Filling Fast!",
    date: "Jan 11-13,\n2021",
    slot: "08-30 am - 12:30 pm",
    sptype: "Keynote Speaker",
    spname: "Hellen Gribble",
    venue: "Conventional Hall\nGreater des moines",
    title: "Safe Scrum Master (4.6)",
    image: "assets/images/traine_1.jpg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Trainings(
    id: 2,
    fil: "Early Bird!",
    date: "Jan 11-13,\n2021",
    slot: "08-30 am - 12:30 pm",
    sptype: "Keynote Speaker",
    spname: "John Gribble",
    venue: "Conventional Hall\nGreater des moines",
    title: "Safe Scrum Master (4.7)",
    image: "assets/images/traine_1.jpg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Trainings(
    id: 3,
    fil: "Filling Fast!",
    date: "Feb 11-13,\n2021",
    slot: "08-30 am - 12:30 pm",
    sptype: "Keynote Speaker",
    spname: "Michle Gribble",
    venue: "Conventional Hall\nGreater des moines",
    title: "Safe Scrum Master (4.3)",
    image: "assets/images/traine_1.jpg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Trainings(
    id: 4,
    fil: "Early Bird!",
    date: "Mar 11-13,\n2020",
    slot: "08-30 am - 12:30 pm",
    sptype: "Keynote Speaker",
    spname: "Adham John",
    venue: "Conventional Hall\nGreater des moines",
    title: "Safe Scrum Master (4.1)",
    image: "assets/images/traine_1.jpg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Trainings(
    id: 5,
    fil: "Filling Fast!",
    date: "Nov 11-13,\n2020",
    slot: "08-30 am - 12:30 pm",
    sptype: "Keynote Speaker",
    spname: "Hellen Gribble",
    venue: "Conventional Hall\nGreater des moines",
    title: "Safe Scrum Master (4.8)",
    image: "assets/images/traine_1.jpg",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];

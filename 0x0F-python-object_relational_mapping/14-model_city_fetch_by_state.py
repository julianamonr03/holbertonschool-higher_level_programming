#!/usr/bin/python3
"""
Script that prints all City objects from the database
"""
from model_city import City
from model_state import Base, State
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from sys import argv

if __name__ == "__main__":
    # create an engine
    engine = create_engine('mysql+mysqldb://{}:{}@localhost/{}'.format(
        argv[1], argv[2], argv[3]), pool_pre_ping=True)
    # create a configured "Session" class
    Session = sessionmaker(bind=engine)
    # create a Session
    session = Session()
    Base.metadata.create_all(engine)

    city = session.query(State, City).filter(State.id == City.state_id)\
        .order_by(City.id)
    for i in city:
        print("{}: ({}) {}".format(i[0], i[1], i[3]))
    # Close session
    session.close()

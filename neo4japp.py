from neo4j import GraphDatabase
import streamlit as st


def connect_to_neo4j(uri, user, password):
    driver = GraphDatabase.driver(uri, auth=(user, password))
    return driver

# Libraries
import streamlit as st
from PIL import Image

# Confiture
st.set_page_config(page_title='Construction Risks Dashboard',
                   page_icon=':house:',
                   menu_items={
                       'Get Help': 'https://cmvi.knu.ac.kr/',
                       'Report a bug': "https://www.extremelycoolapp.com/bug",
                       'About': "## Consruction Risk Dashbooard. This is an *extremely* cool app!"
                   })


# Content

# SIDEBAR
# st.sidebar.image(Image.open('images/Logo1.png'))

st.sidebar.text("Construction Management and Value Innovation Lab")

# st.sidebar.image(Image.open('images/Logo2.png'))

st.sidebar.info(" Contact us @ : [CMVI](https://cmvi.knu.ac.kr/)")


# Title
st.title('Construction Risk Dashboard')
st.markdown('---')
st.subheader('Overview')
st.write(
    """
    **ConRisk Dashboard** app is a web-based application that can be used for the risk management of a construction project. 
    ConRisk Dashboard was built with the aid of **Streamlit** python library, and the database is powered by graph database 
    (GDB) developed in Neo4j using the cypher programming language. ConRisk Dashboard can be used as a quick reference for 
    risk identification, assessment, analysis, and planning mitigation of a new similar project. ConRisk Dashboard provides 
    a uniform platform for project stakeholders for shared understanding and holistic communication of the project risks. 
    Developing the ConRisk Dashboard is a step towards the digital transformation of RM processes, thereby saving cost and 
    time expended on expert workshops at the beginning of every project. ConRisk Dashboard would also help reduce over-reliance 
    on subjective/biased expert judgment so that informed decision-making can be made to ensure project success. 
    Further, this app can support the development of AI-based RM systems for construction projects.   

    """
)

st.write("### Limitations")
st.write(
    """
    This app is part of an ongoing project to develop an Integrated AI-based Risk Management System for Construction Projects. 
    The current ConRisk Dashboard is developed using the construction risk register of an ongoing coastal project in Queensland, 
    Australia. Click the [link](https://www.statedevelopment.qld.gov.au/coordinator-general/assessments-and-approvals/coordinated-projects/completed-projects/townsville-ocean-terminal)
    to learn more about the project. The current ConRisk Dashboard is limited to the risks identified in the risk register of the said project.
    Thus, the development of a similar dashboard to manage Tunnel and Bridge project risks is underway.

    """
)


c1, c2, c3 = st.columns(3)
with c1:
    st.info(
        '**Google scholar: [Murry](https://scholar.google.com/citations?user=qinOzG0AAAAJ&hl=en)**', icon="💡")
with c2:
    st.info(
        '**GitHub: [Murry01](https://github.com/Murry01/)**', icon="💻")
with c3:
    st.info(
        '**Data: [Muritala](https://www.linkedin.com/in/muritala-adebayo-isah-1656b768/)**', icon="🧠")

# Footer
st.markdown('---')

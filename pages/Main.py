# Libraries
import streamlit as st
from PIL import Image
import pandas as pd
import numpy as np
import plotly.express as px
from neo4japp import connect_to_neo4j


#-------------Content----------#

st.header('Construction Project Risk Management Quickview')
st.markdown("""
 * Use the menu at left to select risk information you want to view
 * Project risks details will appear below
""")
st.markdown('---')

#-------------Initialized Neo4j----------#

# driver = connect_to_neo4j('bolt://localhost:7687', 'neo4j', '0752')

driver = connect_to_neo4j('bolt://localhost:7687', 'neo4j', '0752')


#-------------SIDEBAR-------------------#

st.sidebar.markdown("## Select Project Risk Information")


#................Risk Category.........................#

# Define the options for the selectbox
query_options = {
    'Climate': '''MATCH(a:RISKSOURCE{Name:"Climate"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING)
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability,
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating''',
    'Land': '''MATCH(a:RISKSOURCE{Name:"Land"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating''',
    'Traffic and Transport': '''MATCH(a:RISKSOURCE{Name:"Traffic and Transport"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating''',
    'Non-Transport Infrasturcture': '''MATCH(a:RISKSOURCE{Name:"Non-transport infrastructure"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating''',
    'Waste': '''MATCH(a:RISKSOURCE{Name:"Waste"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating ''',
    'Water Resources': '''MATCH(a:RISKSOURCE{Name:"Water Resources"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating''',
    'Coastal Resources': '''MATCH(a:RISKSOURCE{Name:"Coastal Resources"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating''',
    'Air': '''MATCH(a:RISKSOURCE{Name:"Air"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating''',
    'Noise and Vibration': '''MATCH(a:RISKSOURCE{Name:"Noise and Vibration"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating ''',
    'Nature Conservation': '''MATCH(a:RISKSOURCE{Name:"Nature Conservation"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating''',
    'Cultural Heritage': '''MATCH(a:RISKSOURCE{Name:"Cultural Heritage"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Ratin''',
    'Social': '''MATCH(a:RISKSOURCE{Name:"Social"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating''',
    'Health and Safety': '''MATCH(a:RISKSOURCE{Name:"Health and Safety"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating''',
    'Economy': '''MATCH(a:RISKSOURCE{Name:"Economy"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating''',
    'Construction Methodology': '''MATCH(a:RISKSOURCE{Name:"Construction Methodology"})-[:hasRisk]->(n:RISK)-[:hasRiskRating]->(m:RISKRATING) 
RETURN a.Name AS Risk_Category, n.Name AS Risk_Code, n.Description AS Risk_Name, m.Probability As Risk_Probability, 
m.Impact AS Risk_Impact,m.Rating AS Risk_Rating'''

}

# Prompt the user to select risk category
selected_risk_category = st.sidebar.selectbox(
    'Select Risk Category', options=list(query_options.keys()))

# Run the selected query
with driver.session() as session:
    result = session.run(query_options[selected_risk_category])

    df_categeory = pd.DataFrame([dict(record) for record in result])


# ...Expanders 1
# with st.expander("Click to Risk Identification and Assessment", expanded=True):

st.write('##### Risk Identification and Assessment by Category ')
st.write(df_categeory)
df_count = df_categeory.value_counts('Risk_Rating')
df_count1 = pd.DataFrame(df_count)
df_count2 = df_count1.rename(columns={0: 'Freq'})
st.write('###### Risk Count by Rating')
st.write(df_count2)

# fig_risk = px.bar(df_count2,
#                   x=['Risk_Rating'],
#                   y=['Freq'], title='Bar Chart',
#                   color_discrete_sequence=['#08CEC5']*len(df_count2),
#                   template='plotly_white')

# st.write(fig_risk)

##..........Risk Rating...............##

# # Prompt the user to select risk category
query_options1 = {
    'Extreme': '''MATCH(a:RISKSOURCE)-[:hasRisk]->(b:RISK)
    MATCH(b)-[:hasRiskRating]->(c:RISKRATING {Rating:"Extreme"})
    MATCH(b)-[:hasRiskConsequence]->(d:RISKCONSEQUENCE)
    MATCH(b)-[:hasRiskMitigation]->(e:RISKMITIGATION)
    RETURN a.Name AS Risk_Category, b.Name AS Risk_Code, b.Description AS Risk_Name, c.Rating As Risk_Rating, 
    d.Description AS Risk_Consequence,e.Description AS Risk_Mitigation''',

    'High': '''MATCH(a:RISKSOURCE)-[:hasRisk]->(b:RISK)
    MATCH(b)-[:hasRiskRating]->(c:RISKRATING {Rating:"High"})
    MATCH(b)-[:hasRiskConsequence]->(d:RISKCONSEQUENCE)
    MATCH(b)-[:hasRiskMitigation]->(e:RISKMITIGATION)
    RETURN a.Name AS Risk_Category, b.Name AS Risk_Code, b.Description AS Risk_Name, c.Rating As Risk_Rating, 
    d.Description AS Risk_Consequence,e.Description AS Risk_Mitigation''',

    'Moderate': '''MATCH(a:RISKSOURCE)-[:hasRisk]->(b:RISK)
    MATCH(b)-[:hasRiskRating]->(c:RISKRATING {Rating:"Moderate"})
    MATCH(b)-[:hasRiskConsequence]->(d:RISKCONSEQUENCE)
    MATCH(b)-[:hasRiskMitigation]->(e:RISKMITIGATION)
    RETURN a.Name AS Risk_Category, b.Name AS Risk_Code, b.Description AS Risk_Name, c.Rating As Risk_Rating, 
    d.Description AS Risk_Consequence,e.Description AS Risk_Mitigation''',

    'Low': '''MATCH(a:RISKSOURCE)-[:hasRisk]->(b:RISK)
    MATCH(b)-[:hasRiskRating]->(c:RISKRATING {Rating:"Low"})
    MATCH(b)-[:hasRiskConsequence]->(d:RISKCONSEQUENCE)
    MATCH(b)-[:hasRiskMitigation]->(e:RISKMITIGATION)
    RETURN a.Name AS Risk_Category, b.Name AS Risk_Code, b.Description AS Risk_Name, c.Rating As Risk_Rating, 
    d.Description AS Risk_Consequence,e.Description AS Risk_Mitigation''',

    'Negeligible': '''MATCH(a:RISKSOURCE)-[:hasRisk]->(b:RISK)
    MATCH(b)-[:hasRiskRating]->(c:RISKRATING {Rating:"Negligible"})
    MATCH(b)-[:hasRiskConsequence]->(d:RISKCONSEQUENCE)
    MATCH(b)-[:hasRiskMitigation]->(e:RISKMITIGATION)
    RETURN a.Name AS Risk_Category, b.Name AS Risk_Code, b.Description AS Risk_Name, c.Rating As Risk_Rating, 
    d.Description AS Risk_Consequence,e.Description AS Risk_Mitigation'''
}

# Prompt the user to select a query
selected_risk_rating = st.sidebar.selectbox(
    'Select a Risk Rating', options=list(query_options1.keys()))

# Run the selected query
with driver.session() as session:
    result1 = session.run(query_options1[selected_risk_rating])
    df_r_rating = pd.DataFrame([dict(record) for record in result1])

# # ...Expanders 2
# with st.expander("Click to Risk Consequences and Mitigations", expanded=False):

#     st.write('Risk Consequence and Mitigation')
#     st.write(df_r_rating)

# driver.close()

# SIDEBAR logos
st.sidebar.image(Image.open('images/Logo1.png'))

st.sidebar.text("Construction Management and Value Innovation Lab")

# st.sidebar.image(Image.open('images/Logo2.png'))

st.sidebar.info(" Contact us @ : [CMVI](https://cmvi.knu.ac.kr/)")


# Load data
excel_file = 'Risk_Assessment_Data.xlsx'
sheet_name = 'Data'

# df = pd.read_excel(excel_file,
#                    sheet_name=sheet_name,
#                    usecols="B:F",
#                    header=1)

df_risk_ratings = pd.read_excel(excel_file,
                                sheet_name=sheet_name,
                                usecols="I:J",
                                header=1)


# PIE CHART Project Risk Ratings Distribution
pie_chart = px.pie(df_risk_ratings,
                   values='Frequency',
                   names='Risk Ratings',
                   title='Distribution')


# Bar Chart Project Risk Ratings Bar Chart

fig_risk_ratings = px.bar(df_risk_ratings,
                          x='Risk Ratings',
                          y='Frequency',
                          title='Bar Chart',
                          color_discrete_sequence=[
                              '#08CEC5']*len(df_risk_ratings),
                          template='plotly_white')

fig_risk_ratings.update_layout(
    plot_bgcolor='rgba(0,0,0,0)',
    yaxis=(dict(showgrid=False)))

# #...Expanders 2  st.plotly_chart(fig_risk_rating)
# with st.expander("Click to See Overall Risk Ratings Plots of the Project", expanded=False):
st.write('##### Overall Project Risk Ratings Plots')
col1, col2 = st.columns(2)
col1.plotly_chart(fig_risk_ratings, use_container_width=True)
col2.plotly_chart(pie_chart, use_container_width=True)

# ...Expanders 3
# with st.expander("Click to Risk Consequences and Mitigations", expanded=False):

st.write('##### Risk Consequence and Mitigation')
st.write(df_r_rating)

driver.close()


# Hide Streamlit Style

# hide_st_style = """
#             <style>
#             #MainMenu {visibility: hidden;}
#             footer {visibility: hidden;}
#             header {visibility: hidden;}
#             </style>
#             """
# st.markdown(hide_st_style, unsafe_allow_html=True)

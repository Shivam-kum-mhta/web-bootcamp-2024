# IRIS_BOOTCAMP-week-1

## Overview

This is a Ruby application using the Sinatra framework to fetch and display the latest news from [NewsAPI](https://newsapi.org/). Users can search for articles by entering a query, with the results shown in a simple, visually appealing format.

## Prerequisites

- Ruby (version 2.5 or higher)
- Bundler gem
- Sinatra gem
- An API key from NewsAPI

## Installation

      1. **Install Ruby**: Ensure Ruby is installed:
         ```bash
         ruby -v
      ```

      2. **Clone the Repository**: Clone the project to your local machine:
          ```bash
         git clone https://github.com/Shivam-kum-mhta/IRIS-week-1.git
         cd week-1-code
         ```
      3. **Install Dependencies**:
         ```bash
         gem install bundler sinatra
         ```

## Configuration

      1. **Get API Key**: 
         - Sign up at [NewsAPI](https://newsapi.org/) and get an API key.

      2. **Update API Key**: 
         - Create `.env` file and  update the API key:
         ```ruby
         NEWSAPI_KEY= 'YOUR_NEWSAPI_KEY'
         ```

## Running the Application

      1. **Start the Server**:
       ```bash
       ruby app.rb
       ```

      2. **Open in Browser**: Go to `http://localhost:4567` to view the application.

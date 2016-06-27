package com.springsource.petclinic.integration;

import com.cdyne.wsf.ArrayOfWeatherDescription;
import com.cdyne.wsf.ForecastReturn;
import com.cdyne.wsf.WeatherReturn;

/**
 * = WeatherWebService interface
 *
 * This interface contains the necessary operations to obtain 
 * the City's Weather by ZIP Code. It's important to know that 
 * this operations only works with U.S. ZIP Codes.
 *
 */
public interface WeatherWebService {

  /**
   * Gets all information for each WeatherID
   * 
   * @return ArrayOfWeatherDescription object that contains a list 
   * of all weather information objects identified by the WeatherID.
   */
  public ArrayOfWeatherDescription getWeatherInformation();

  /**
   * Allows you to get your City's Weather, which is updated hourly. 
   * U.S. Only
   * 
   * @param zip String with the City's ZIP code that want to use
   * to get Weather information
   * 
   * @return WeatherReturn object that contains all information about
   * the weather of the provided city.
   */
  public WeatherReturn getCityWeatherByZIP(String zip);

  /**
   * Allows you to get your City Forecast Over the Next 7 Days, which is 
   * updated hourly. U.S. Only
   * 
   * @param zip String with the City's ZIP code that want to use
   * to get Forecast information
   * 
   * @return ForecastReturn object that contains the weather forecast over 
   * the next 7 days of the provided city 
   */
  public ForecastReturn getCityForecastByZIP(String zip);

}

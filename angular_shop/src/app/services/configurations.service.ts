import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class ConfigurationsService {
  private apiUrl: string = 'http://localhost:8081/api';
  private appName: string = 'PC Components Shop';
  private appOwner: string = 'Daniel Iuliu Radvanyi';
  private appLogo: string =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkrjQSlb5tXlqAXGtie4aSkEt2C4Sl4-Gwkg&s';

  constructor() {}

  public getApiUrl() {
    return this.apiUrl;
  }

  public getAppName() {
    return this.appName;
  }

  public getAppOwner() {
    return this.appOwner;
  }

  public getAppLogo() {
    return this.appLogo;
  }
}

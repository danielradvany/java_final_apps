import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class ConfigurationsService {
  private apiUrl: string = 'http://localhost:8081/api';
  private appName: string = 'PC Components Shop';
  private appOwner: string = 'Daniel Iuliu Radvanyi';
  private appLogo: string =
    'https://us.123rf.com/450wm/onep99/onep992107/onep99210700341/171453792-computer-technology-logo-icon-design-vector.jpg?ver=6';

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

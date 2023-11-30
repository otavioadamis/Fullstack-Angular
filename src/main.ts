import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { AppModule } from './app/app.module';
import { bootstrapApplication } from "@angular/platform-browser";
import { provideHttpClient, withFetch } from "@angular/common/http";


platformBrowserDynamic().bootstrapModule(AppModule)
  .catch(err => console.error(err));

  bootstrapApplication(AppModule, {
    providers: [provideHttpClient(withFetch())],
  }).catch((err) => console.error(err));

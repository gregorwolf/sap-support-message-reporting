using my.bookshop as my from '../db/data-model';

using { incidentws as external } from './external/incidentws.csn';

service CatalogService {
    @readonly entity Books as projection on my.Books;
}
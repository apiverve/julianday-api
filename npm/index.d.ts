declare module '@apiverve/julianday' {
  export interface juliandayOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface juliandayResponse {
    status: string;
    error: string | null;
    data: JulianDayCalculatorData;
    code?: number;
  }


  interface JulianDayCalculatorData {
      gregorian:          Date;
      julianDayNumber:    number;
      modifiedJulianDate: number;
      dayOfWeek:          string;
  }

  export default class juliandayWrapper {
    constructor(options: juliandayOptions);

    execute(callback: (error: any, data: juliandayResponse | null) => void): Promise<juliandayResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: juliandayResponse | null) => void): Promise<juliandayResponse>;
    execute(query?: Record<string, any>): Promise<juliandayResponse>;
  }
}

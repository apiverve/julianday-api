declare module '@apiverve/julianday' {
  export interface juliandayOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface juliandayResponse {
    status: string;
    error: string | null;
    data: JulianDayCalculatorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface JulianDayCalculatorData {
      gregorian:          Date | null;
      julianDayNumber:    number | null;
      modifiedJulianDate: number | null;
      dayOfWeek:          null | string;
      weekNumber:         number | null;
      dayOfYear:          number | null;
      daysFromToday:      number | null;
  }

  export default class juliandayWrapper {
    constructor(options: juliandayOptions);

    execute(callback: (error: any, data: juliandayResponse | null) => void): Promise<juliandayResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: juliandayResponse | null) => void): Promise<juliandayResponse>;
    execute(query?: Record<string, any>): Promise<juliandayResponse>;
  }
}

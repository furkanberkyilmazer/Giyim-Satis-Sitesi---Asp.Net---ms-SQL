using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clear
/// </summary>
public class clear
{
	public clear()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static string temizle(string metin)
    {
        string ifade = metin;
        ifade = ifade.Replace("'","");
        ifade = ifade.Replace("+", "");
        ifade = ifade.Replace("-", "");
        ifade = ifade.Replace("*", "");
        ifade = ifade.Replace("/", "");
        ifade = ifade.Replace("?", "");
        return ifade;
    }
}
/*******************************************************************************
* Copyright (c) 2006, 2018 THALES GLOBAL SERVICES.
* All rights reserved. This program and the accompanying materials
* are made available under the terms of the Eclipse Public License v1.0
* which accompanies this distribution, and is available at
* http://www.eclipse.org/legal/epl-v10.html
*
* Contributors:
*    Thales - initial API and implementation
*******************************************************************************/
package org.polarsys.capella.ad.viewpoint.dsl.generation.ui.util;

/**
 * @author Boubekeur Zendagui
 */
public class XMLUtility {
	
	private static final String[] specialCharacters = {"&", "<", ">", "\"", "\'"};
	private static final String[] xmlValidCharacters = {"&amp;", "&lt;", "&gt;", "&quot;", "&#39;"};
	
	/**
	 * Encode XML characters in input string
	 * @param input to encode
	 * @return encoded XML characters in input. If input is null, null is returned
	 */
	public static String getValidXMLString(String input){
		String output = input;
		
		if (output != null) {
			for (int i = 0; i < specialCharacters.length; i++) {
				output = output.replaceAll(specialCharacters[i], xmlValidCharacters[i]);
			}
		}
		
		return output;
	}

	private XMLUtility() {
		super();
	}

}

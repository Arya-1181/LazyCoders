package com.lazycoders.request;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

public class CartService {
    
    private static final String CART_SESSION_ATTRIBUTE = "cart";
    
    public static void addToCart(HttpSession session, String courseId) {
        // Retrieve the cart from the session
        @SuppressWarnings("unchecked")
		List<String> cart = (List<String>) session.getAttribute(CART_SESSION_ATTRIBUTE);

        // If the cart doesn't exist, create a new one
        if (cart == null) {
            cart = new ArrayList<>();
        }

        // Add the course to the cart
        cart.add(courseId);

        // Update the cart in the session
        session.setAttribute(CART_SESSION_ATTRIBUTE, cart);
    }

    public static void removeFromCart(HttpSession session, String courseId) {
        // Retrieve the cart from the session
        @SuppressWarnings("unchecked")
		List<String> cart = (List<String>) session.getAttribute(CART_SESSION_ATTRIBUTE);

        // If the cart exists, remove the course from it
        if (cart != null) {
            cart.remove(courseId);

            // Update the cart in the session
            session.setAttribute(CART_SESSION_ATTRIBUTE, cart);
        }
    }
    
    public static List<String> getCart(HttpSession session) {
        // Retrieve the cart from the session
        @SuppressWarnings("unchecked")
		List<String> cart = (List<String>) session.getAttribute(CART_SESSION_ATTRIBUTE);

        // If the cart doesn't exist, create a new one
        if (cart == null) {
            cart = new ArrayList<>();
        }

        return cart;
    }
}
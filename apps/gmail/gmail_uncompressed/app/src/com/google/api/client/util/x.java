package com.google.api.client.util;

import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
@Target({ ElementType.FIELD })
public @interface x {
    String Yz() default "##default";
}

.class public final Lcom/android/email/activity/setup/N;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/emailcommon/VendorPolicyLoader$Provider;
    .locals 11

    .prologue
    .line 268
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 270
    const/4 v1, 0x0

    .line 271
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 272
    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const-string v2, "provider"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 274
    const-string v0, "domain"

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 276
    :try_start_1
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v4

    array-length v2, v5

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_d

    .line 277
    new-instance v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    invoke-direct {v0}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :try_start_2
    const-string v1, "id"

    invoke-static {p0, v3, v1}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->id:Ljava/lang/String;

    .line 279
    const-string v1, "label"

    invoke-static {p0, v3, v1}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->label:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->domain:Ljava/lang/String;

    .line 281
    const-string v1, "note"

    invoke-static {p0, v3, v1}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->note:Ljava/lang/String;

    .line 286
    const-string v1, "oauth"

    invoke-static {p0, v3, v1}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->oauth:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v1, v0

    .line 291
    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    :try_start_3
    array-length v0, v4

    if-ge v2, v0, :cond_6

    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    aget-object v0, v5, v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v0, "*"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v8, :cond_2

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v8, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v10

    if-eq v9, v10, :cond_3

    const/16 v9, 0x3f

    if-eq v10, v9, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 289
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_6
    :try_start_4
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "providers line: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; Domain contains multiple globals"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 326
    :catch_1
    move-exception v0

    .line 327
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "Error while trying to load provider settings."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 329
    :cond_7
    const/4 v1, 0x0

    :goto_7
    return-object v1

    .line 293
    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    :try_start_5
    const-string v2, "incoming"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 296
    const-string v0, "uri"

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 297
    const-string v0, "username"

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    .line 299
    :cond_9
    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    const-string v2, "outgoing"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    .line 302
    const-string v0, "uri"

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUriTemplate:Ljava/lang/String;

    .line 303
    const-string v0, "username"

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    .line 305
    :cond_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const-string v2, "incoming-fallback"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    .line 308
    const-string v0, "uri"

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->altIncomingUriTemplate:Ljava/lang/String;

    .line 309
    const-string v0, "username"

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->altIncomingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    .line 312
    :cond_b
    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    const-string v2, "outgoing-fallback"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    .line 315
    const-string v0, "uri"

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->altOutgoingUriTemplate:Ljava/lang/String;

    .line 316
    const-string v0, "username"

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->altOutgoingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    .line 319
    :cond_c
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string v0, "provider"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 289
    :catch_2
    move-exception v0

    goto/16 :goto_6

    :cond_d
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 379
    const/4 v0, 0x0

    invoke-interface {p1, v1, p2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 380
    if-nez v0, :cond_0

    .line 381
    invoke-interface {p1, v1, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 202
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 204
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "provider"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "id"

    invoke-static {p0, v1, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 208
    :try_start_1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    invoke-direct {v0}, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;-><init>()V

    .line 210
    iput-object p1, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->id:Ljava/lang/String;

    .line 211
    const-string v2, "label"

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->label:Ljava/lang/String;

    .line 212
    const-string v2, "auth_endpoint"

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->authEndpoint:Ljava/lang/String;

    .line 213
    const-string v2, "token_endpoint"

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->tokenEndpoint:Ljava/lang/String;

    .line 214
    const-string v2, "refresh_endpoint"

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->refreshEndpoint:Ljava/lang/String;

    .line 216
    const-string v2, "response_type"

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->responseType:Ljava/lang/String;

    .line 217
    const-string v2, "redirect_uri"

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->redirectUri:Ljava/lang/String;

    .line 218
    const-string v2, "scope"

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->scope:Ljava/lang/String;

    .line 219
    const-string v2, "state"

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->state:Ljava/lang/String;

    .line 220
    const-string v2, "client_id"

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->clientId:Ljava/lang/String;

    .line 221
    const-string v2, "client_secret"

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->clientSecret:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    :goto_1
    return-object v0

    .line 225
    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "providers line: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Domain contains multiple globals"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "Error while trying to load provider settings."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/VendorPolicyLoader$Provider;
    .locals 1

    .prologue
    .line 248
    invoke-static {p0}, Lcom/android/emailcommon/VendorPolicyLoader;->W(Landroid/content/Context;)Lcom/android/emailcommon/VendorPolicyLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/VendorPolicyLoader;->U(Ljava/lang/String;)Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v0

    .line 249
    if-nez v0, :cond_0

    .line 250
    const v0, 0x7f060018

    invoke-static {p0, p1, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v0

    .line 252
    :cond_0
    if-nez v0, :cond_1

    .line 253
    const v0, 0x7f060017

    invoke-static {p0, p1, v0}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    move-result-object v0

    .line 255
    :cond_1
    return-object v0
.end method

.method public static e(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->lF()Z

    move-result v0

    if-nez v0, :cond_4

    .line 60
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->ac(Landroid/content/Context;)Landroid/net/Uri;

    .line 62
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Clearing unsupported policies "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    iget-object v3, v3, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 69
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getId()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/emailcommon/provider/Account;->PW:Lcom/android/emailcommon/provider/Policy;

    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->XH:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-static {p0, v2, v3, v4, v0}, Lcom/android/emailcommon/service/A;->a(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 81
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 82
    const-string v0, "accountKey"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 84
    array-length v5, v2

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_5

    aget-object v1, v2, v0

    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 88
    const-string v6, "quickResponse"

    invoke-virtual {v3, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcom/android/emailcommon/provider/q;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 84
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_3
    iget-object v0, p1, Lcom/android/emailcommon/provider/Account;->XH:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "displayName"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "senderName"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->ik()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signature"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->lx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "syncInterval"

    iget v2, p1, Lcom/android/emailcommon/provider/Account;->XB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/Account;->dM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "syncLookback"

    iget v2, p1, Lcom/android/emailcommon/provider/Account;->XA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "securitySyncKey"

    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->XH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/Account;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 98
    :cond_5
    invoke-static {p0}, Lcom/android/email/provider/a;->D(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public static y(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 150
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 153
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 155
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v2, "provider"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    :try_start_1
    new-instance v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;

    invoke-direct {v2}, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;-><init>()V

    .line 159
    const-string v3, "id"

    invoke-static {p0, v1, v3}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->id:Ljava/lang/String;

    .line 160
    const-string v3, "label"

    invoke-static {p0, v1, v3}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->label:Ljava/lang/String;

    .line 161
    const-string v3, "auth_endpoint"

    invoke-static {p0, v1, v3}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->authEndpoint:Ljava/lang/String;

    .line 162
    const-string v3, "token_endpoint"

    invoke-static {p0, v1, v3}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->tokenEndpoint:Ljava/lang/String;

    .line 163
    const-string v3, "refresh_endpoint"

    invoke-static {p0, v1, v3}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->refreshEndpoint:Ljava/lang/String;

    .line 165
    const-string v3, "response_type"

    invoke-static {p0, v1, v3}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->responseType:Ljava/lang/String;

    .line 166
    const-string v3, "redirect_uri"

    invoke-static {p0, v1, v3}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->redirectUri:Ljava/lang/String;

    .line 167
    const-string v3, "scope"

    invoke-static {p0, v1, v3}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->scope:Ljava/lang/String;

    .line 168
    const-string v3, "state"

    invoke-static {p0, v1, v3}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->state:Ljava/lang/String;

    .line 169
    const-string v3, "client_id"

    invoke-static {p0, v1, v3}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->clientId:Ljava/lang/String;

    .line 170
    const-string v3, "client_secret"

    invoke-static {p0, v1, v3}, Lcom/android/email/activity/setup/N;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/VendorPolicyLoader$OAuthProvider;->clientSecret:Ljava/lang/String;

    .line 171
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v2

    :try_start_2
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "providers line: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Domain contains multiple globals"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 179
    :catch_1
    move-exception v0

    .line 180
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v2, "Error while trying to load provider settings."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 182
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.class public Lcom/android/emailcommon/VendorPolicyLoader$Provider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x761f7a2f5e3b8b6dL


# instance fields
.field public altIncomingUriTemplate:Ljava/lang/String;

.field public altIncomingUsernameTemplate:Ljava/lang/String;

.field public altOutgoingUriTemplate:Ljava/lang/String;

.field public altOutgoingUsernameTemplate:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public incomingUri:Ljava/lang/String;

.field public incomingUriTemplate:Ljava/lang/String;

.field public incomingUsername:Ljava/lang/String;

.field public incomingUsernameTemplate:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public oauth:Ljava/lang/String;

.field public outgoingUri:Ljava/lang/String;

.field public outgoingUriTemplate:Ljava/lang/String;

.field public outgoingUsername:Ljava/lang/String;

.field public outgoingUsernameTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    .line 267
    const-string v0, "\\$email"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "\\$user"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string v1, "\\$domain"

    iget-object v2, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    return-object v0
.end method


# virtual methods
.method public final V(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 238
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 239
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 241
    iget-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUri:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUsername:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUriTemplate:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUri:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUsername:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public final W(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 252
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 253
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 255
    iget-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->altIncomingUriTemplate:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUri:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->altIncomingUsernameTemplate:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUsername:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->altOutgoingUriTemplate:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUri:Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->altOutgoingUsernameTemplate:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUsername:Ljava/lang/String;

    .line 259
    return-void
.end method

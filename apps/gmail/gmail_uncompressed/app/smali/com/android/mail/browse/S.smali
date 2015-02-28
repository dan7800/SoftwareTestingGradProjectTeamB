.class public final Lcom/android/mail/browse/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private NP:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/android/mail/browse/S;->mName:Ljava/lang/String;

    .line 349
    iput-object v0, p0, Lcom/android/mail/browse/S;->NP:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/mail/browse/S;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final lw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/mail/browse/S;->NP:Ljava/lang/String;

    return-object v0
.end method

.method public final qk()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/mail/browse/S;->NP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 357
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "email address may not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iput-object p1, p0, Lcom/android/mail/browse/S;->mName:Ljava/lang/String;

    .line 362
    iput-object p2, p0, Lcom/android/mail/browse/S;->NP:Ljava/lang/String;

    .line 363
    return-void
.end method

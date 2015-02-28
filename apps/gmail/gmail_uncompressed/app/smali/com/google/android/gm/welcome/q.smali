.class public final Lcom/google/android/gm/welcome/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/gm/welcome/q;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 29
    new-instance v0, Lcom/google/android/gm/a;

    iget-object v2, p0, Lcom/google/android/gm/welcome/q;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gm/a;-><init>(Landroid/content/Context;)V

    .line 31
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "mail"

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/google/android/gm/a;->v([Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 33
    iget-object v5, p0, Lcom/google/android/gm/welcome/q;->mContext:Landroid/content/Context;

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/android/gm/provider/MailEngine;->W(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailEngine;->FZ()Lcom/google/android/gm/provider/ae;

    move-result-object v5

    .line 35
    invoke-virtual {v5}, Lcom/google/android/gm/provider/ae;->FH()V

    .line 36
    const-string v5, "WelcomeTour"

    const-string v6, "Updating server version of welcome tour for %s"

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v7, v1

    invoke-static {v5, v6, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.class final Lcom/google/android/gm/provider/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/f;


# instance fields
.field final synthetic PG:Landroid/content/Context;

.field final synthetic bfF:Lcom/google/android/gm/provider/GmailProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/GmailProvider;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 3760
    iput-object p1, p0, Lcom/google/android/gm/provider/I;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    iput-object p2, p0, Lcom/google/android/gm/provider/I;->PG:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Landroid/accounts/Account;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3763
    if-eqz p1, :cond_0

    .line 3764
    iget-object v0, p0, Lcom/google/android/gm/provider/I;->PG:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailEngine;->c(Landroid/content/Context;[Landroid/accounts/Account;)Z

    .line 3767
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 3768
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 3769
    const-string v4, "Gmail"

    const-string v5, "Getting MailEngine for account: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3770
    iget-object v4, p0, Lcom/google/android/gm/provider/I;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    invoke-static {v4}, Lcom/google/android/gm/provider/GmailProvider;->b(Lcom/google/android/gm/provider/GmailProvider;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3771
    iget-object v4, p0, Lcom/google/android/gm/provider/I;->PG:Landroid/content/Context;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gm/provider/I;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    invoke-static {v4, v3, v5}, Lcom/google/android/gm/provider/MailEngine;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/aM;)V

    .line 3768
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3777
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/I;->bfF:Lcom/google/android/gm/provider/GmailProvider;

    invoke-static {v0}, Lcom/google/android/gm/provider/GmailProvider;->c(Lcom/google/android/gm/provider/GmailProvider;)V

    .line 3779
    :cond_2
    return-void
.end method

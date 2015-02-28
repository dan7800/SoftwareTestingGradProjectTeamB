.class public final Lcom/google/android/gms/people/accountswitcherview/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private Ud:Landroid/accounts/AccountManager;

.field private cgS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private cgT:[Landroid/accounts/Account;

.field private cgU:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private cgV:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/a;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgU:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgS:Ljava/util/ArrayList;

    .line 43
    return-void
.end method


# virtual methods
.method public final R(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/people/model/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 72
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/a;->detach()V

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgS:Ljava/util/ArrayList;

    return-object v0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->Ud:Landroid/accounts/AccountManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->Ud:Landroid/accounts/AccountManager;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->Ud:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgT:[Landroid/accounts/Account;

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgV:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->Ud:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    iput-boolean v2, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgV:Z

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgU:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/google/android/gms/people/model/d;->FP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/people/accountswitcherview/a;->detach()V

    goto :goto_0

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v2, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgT:[Landroid/accounts/Account;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 86
    iget-object v4, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgU:Ljava/util/HashMap;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/d;

    .line 87
    if-eqz v0, :cond_7

    .line 88
    iget-object v4, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgS:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method final detach()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgV:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->Ud:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgV:Z

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    :cond_0
    return-void
.end method

.method public final onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->Ud:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgT:[Landroid/accounts/Account;

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/a;->cgS:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/a;->R(Ljava/util/List;)Ljava/util/ArrayList;

    .line 69
    return-void
.end method

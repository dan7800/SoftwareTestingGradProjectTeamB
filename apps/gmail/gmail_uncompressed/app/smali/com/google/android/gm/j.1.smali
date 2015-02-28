.class final Lcom/google/android/gm/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aWM:Lcom/google/android/gm/i;


# direct methods
.method constructor <init>(Lcom/google/android/gm/i;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/gm/j;->aWM:Lcom/google/android/gm/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gm/j;->aWM:Lcom/google/android/gm/i;

    iget-object v1, p0, Lcom/google/android/gm/j;->aWM:Lcom/google/android/gm/i;

    invoke-static {v1}, Lcom/google/android/gm/i;->a(Lcom/google/android/gm/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/i;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 63
    return-void
.end method

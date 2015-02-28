.class final Lcom/android/email/service/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Uc:I

.field private final Ud:Landroid/accounts/AccountManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1390
    if-eqz p1, :cond_0

    .line 1391
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/c;->Ud:Landroid/accounts/AccountManager;

    .line 1395
    :goto_0
    return-void

    .line 1393
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/service/c;->Ud:Landroid/accounts/AccountManager;

    goto :goto_0
.end method


# virtual methods
.method final kz()I
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/email/service/c;->Ud:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/email/service/c;->Ud:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    .line 1401
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/email/service/c;->Uc:I

    goto :goto_0
.end method

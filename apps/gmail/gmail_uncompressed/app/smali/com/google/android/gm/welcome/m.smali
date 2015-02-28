.class final Lcom/google/android/gm/welcome/m;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

.field private final bsj:Landroid/content/IntentFilter;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;)V
    .locals 2

    .prologue
    .line 632
    iput-object p1, p0, Lcom/google/android/gm/welcome/m;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 633
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/welcome/m;->bsj:Landroid/content/IntentFilter;

    .line 634
    iget-object v0, p0, Lcom/google/android/gm/welcome/m;->bsj:Landroid/content/IntentFilter;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;B)V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/m;-><init>(Lcom/google/android/gm/welcome/SetupAddressesFragment;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/welcome/m;)Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/gm/welcome/m;->bsj:Landroid/content/IntentFilter;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 639
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 640
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/google/android/gm/welcome/m;->bsi:Lcom/google/android/gm/welcome/SetupAddressesFragment;

    invoke-static {v0}, Lcom/google/android/gm/welcome/SetupAddressesFragment;->e(Lcom/google/android/gm/welcome/SetupAddressesFragment;)V

    .line 643
    :cond_0
    return-void
.end method

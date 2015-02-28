.class public Lcom/google/android/gm/GoogleMailSwitchService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final aXR:Landroid/content/ComponentName;

.field private static final aXS:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.widget.GmailWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->aXR:Landroid/content/ComponentName;

    .line 20
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gm"

    const-string v2, "com.google.android.gm.widget.GoogleMailWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->aXS:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "GoogleMailSwitchService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private CL()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gm/ay;->bj(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->aXS:Landroid/content/ComponentName;

    move-object v1, v0

    :goto_0
    if-eqz v3, :cond_1

    sget-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->aXR:Landroid/content/ComponentName;

    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-virtual {v2, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 55
    invoke-static {p0}, Lcom/google/android/gm/ay;->bg(Landroid/content/Context;)V

    .line 56
    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->aXR:Landroid/content/ComponentName;

    move-object v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gm/GoogleMailSwitchService;->aXS:Landroid/content/ComponentName;

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-direct {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->CL()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/google/android/gm/GoogleMailDeviceStartupReceiver;->aV(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/google/android/gm/GoogleMailSwitchService;->CL()V

    goto :goto_0
.end method

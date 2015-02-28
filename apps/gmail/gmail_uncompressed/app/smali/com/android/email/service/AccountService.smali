.class public Lcom/android/email/service/AccountService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private final TO:Lcom/android/emailcommon/service/q;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/android/email/service/a;

    invoke-direct {v0, p0}, Lcom/android/email/service/a;-><init>(Lcom/android/email/service/AccountService;)V

    iput-object v0, p0, Lcom/android/email/service/AccountService;->TO:Lcom/android/emailcommon/service/q;

    return-void
.end method

.method static synthetic a(Lcom/android/email/service/AccountService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 76
    iput-object p0, p0, Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;

    .line 80
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/emailcommon/a;->T(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/android/email/service/AccountService;->TO:Lcom/android/emailcommon/service/q;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

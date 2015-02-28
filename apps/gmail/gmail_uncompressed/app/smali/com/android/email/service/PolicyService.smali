.class public Lcom/android/email/service/PolicyService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final VA:Lcom/android/emailcommon/service/y;

.field private Vz:Lcom/android/email/SecurityPolicy;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/PolicyService;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lcom/android/email/service/z;

    invoke-direct {v0, p0}, Lcom/android/email/service/z;-><init>(Lcom/android/email/service/PolicyService;)V

    iput-object v0, p0, Lcom/android/email/service/PolicyService;->VA:Lcom/android/emailcommon/service/y;

    return-void
.end method

.method static synthetic a(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/email/service/PolicyService;->Vz:Lcom/android/email/SecurityPolicy;

    return-object v0
.end method

.method static synthetic b(Lcom/android/email/service/PolicyService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/email/service/PolicyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic kI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/email/service/PolicyService;->mW:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 120
    iput-object p0, p0, Lcom/android/email/service/PolicyService;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->w(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/PolicyService;->Vz:Lcom/android/email/SecurityPolicy;

    .line 122
    iget-object v0, p0, Lcom/android/email/service/PolicyService;->VA:Lcom/android/emailcommon/service/y;

    return-object v0
.end method

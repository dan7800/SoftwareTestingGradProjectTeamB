.class public final Lcom/android/emailcommon/service/A;
.super Lcom/android/emailcommon/service/H;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/service/x;


# instance fields
.field private aak:Ljava/lang/Object;

.field private aaz:Lcom/android/emailcommon/service/x;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 35
    const-string v0, "POLICY_INTENT"

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->XX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/emailcommon/service/H;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    iput-object v5, p0, Lcom/android/emailcommon/service/A;->aaz:Lcom/android/emailcommon/service/x;

    .line 32
    iput-object v5, p0, Lcom/android/emailcommon/service/A;->aak:Ljava/lang/Object;

    .line 36
    return-void

    .line 35
    :cond_0
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    const-string v2, "Could not find the Email Content Provider"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/emailcommon/service/A;)Lcom/android/emailcommon/service/x;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/emailcommon/service/A;->aaz:Lcom/android/emailcommon/service/x;

    return-object v0
.end method

.method static synthetic a(Lcom/android/emailcommon/service/A;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/emailcommon/service/A;->aak:Ljava/lang/Object;

    return-object p1
.end method

.method public static a(Landroid/content/Context;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 159
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/A;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/A;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/emailcommon/service/A;->b(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 164
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PolicyService transaction failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 73
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/emailcommon/service/A;->b(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V

    .line 74
    return-void
.end method

.method public final a(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 50
    new-instance v1, Lcom/android/emailcommon/service/B;

    invoke-direct {v1, p0, p1}, Lcom/android/emailcommon/service/B;-><init>(Lcom/android/emailcommon/service/A;Lcom/android/emailcommon/provider/Policy;)V

    const-string v2, "isActive"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 56
    invoke-virtual {p0}, Lcom/android/emailcommon/service/A;->ma()V

    .line 60
    iget-object v1, p0, Lcom/android/emailcommon/service/A;->aak:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 63
    const-string v1, "PolicyServiceProxy"

    const-string v2, "PolicyService unavailable in isActive; assuming false"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/A;->aak:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 79
    new-instance v0, Lcom/android/emailcommon/service/C;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/service/C;-><init>(Lcom/android/emailcommon/service/A;JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V

    const-string v1, "setAccountPolicy2"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 85
    invoke-virtual {p0}, Lcom/android/emailcommon/service/A;->ma()V

    .line 86
    return-void
.end method

.method public final b(JZ)V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lcom/android/emailcommon/service/F;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/emailcommon/service/F;-><init>(Lcom/android/emailcommon/service/A;JZ)V

    const-string v1, "setAccountHoldFlag"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 124
    return-void
.end method

.method public final b(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/emailcommon/service/y;->d(Landroid/os/IBinder;)Lcom/android/emailcommon/service/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/A;->aaz:Lcom/android/emailcommon/service/x;

    .line 41
    return-void
.end method

.method public final hi()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/android/emailcommon/service/E;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/E;-><init>(Lcom/android/emailcommon/service/A;)V

    const-string v1, "remoteWipe"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 114
    return-void
.end method

.method public final kJ()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 89
    new-instance v1, Lcom/android/emailcommon/service/D;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/D;-><init>(Lcom/android/emailcommon/service/A;)V

    const-string v2, "canDisableCamera"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/A;->a(Lcom/android/emailcommon/service/L;Ljava/lang/String;)Z

    .line 95
    invoke-virtual {p0}, Lcom/android/emailcommon/service/A;->ma()V

    .line 96
    iget-object v1, p0, Lcom/android/emailcommon/service/A;->aak:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 99
    const-string v1, "PolicyServiceProxy"

    const-string v2, "PolicyService unavailable in canDisableCamera; assuming false"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/service/A;->aak:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

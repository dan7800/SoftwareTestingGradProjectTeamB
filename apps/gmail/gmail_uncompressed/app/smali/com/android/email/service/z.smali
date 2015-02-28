.class final Lcom/android/email/service/z;
.super Lcom/android/emailcommon/service/y;
.source "SourceFile"


# instance fields
.field final synthetic VB:Lcom/android/email/service/PolicyService;


# direct methods
.method constructor <init>(Lcom/android/email/service/PolicyService;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/email/service/z;->VB:Lcom/android/email/service/PolicyService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 71
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/service/z;->b(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V

    .line 72
    return-void
.end method

.method public final a(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 4

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/z;->VB:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->a(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/SecurityPolicy;->a(Lcom/android/emailcommon/provider/Policy;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 44
    :catch_0
    move-exception v0

    .line 47
    invoke-static {}, Lcom/android/email/service/PolicyService;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception thrown during call to SecurityPolicy#isActive"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 48
    throw v0
.end method

.method public final b(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/z;->VB:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->a(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/SecurityPolicy;->a(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 82
    invoke-static {}, Lcom/android/email/service/PolicyService;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception thrown from call to SecurityPolicy#setAccountPolicy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    throw v0
.end method

.method public final b(JZ)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/service/z;->VB:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->b(Lcom/android/email/service/PolicyService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/email/SecurityPolicy;->a(Landroid/content/Context;JZ)V

    .line 55
    return-void
.end method

.method public final hi()V
    .locals 4

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/z;->VB:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->a(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->hi()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 64
    invoke-static {}, Lcom/android/email/service/PolicyService;->kI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception thrown during call to SecurityPolicy#remoteWipe"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 65
    throw v0
.end method

.method public final kJ()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/email/service/z;->VB:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->b(Lcom/android/email/service/PolicyService;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 96
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/email/service/z;->VB:Lcom/android/email/service/PolicyService;

    invoke-static {v4}, Lcom/android/email/service/PolicyService;->b(Lcom/android/email/service/PolicyService;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    .line 98
    if-eqz v4, :cond_0

    move v0, v1

    .line 112
    :goto_0
    return v0

    .line 104
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 105
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 112
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/email/service/PolicyService;->kI()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityException checking camera disabling."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v2

    .line 109
    goto :goto_0
.end method

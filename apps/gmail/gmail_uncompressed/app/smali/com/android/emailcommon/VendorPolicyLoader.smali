.class public final Lcom/android/emailcommon/VendorPolicyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VX:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static VY:Lcom/android/emailcommon/VendorPolicyLoader;


# instance fields
.field private final VZ:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/os/Bundle;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/VendorPolicyLoader;->VX:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 95
    const-string v0, "com.android.email.policy"

    const-string v1, "com.android.email.policy.EmailPolicy"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/emailcommon/VendorPolicyLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1, p2}, Lcom/android/emailcommon/VendorPolicyLoader;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iput-object v0, p0, Lcom/android/emailcommon/VendorPolicyLoader;->VZ:Ljava/lang/reflect/Method;

    .line 127
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 115
    invoke-virtual {v1, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 116
    const-string v2, "getPolicy"

    sget-object v3, Lcom/android/emailcommon/VendorPolicyLoader;->VX:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 126
    :goto_1
    iput-object v0, p0, Lcom/android/emailcommon/VendorPolicyLoader;->VZ:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 121
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VendorPolicyLoader: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 122
    :catch_1
    move-exception v1

    .line 124
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VendorPolicyLoader: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 125
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static W(Landroid/content/Context;)Lcom/android/emailcommon/VendorPolicyLoader;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/emailcommon/VendorPolicyLoader;->VY:Lcom/android/emailcommon/VendorPolicyLoader;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/emailcommon/VendorPolicyLoader;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/VendorPolicyLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/emailcommon/VendorPolicyLoader;->VY:Lcom/android/emailcommon/VendorPolicyLoader;

    .line 69
    :cond_0
    sget-object v0, Lcom/android/emailcommon/VendorPolicyLoader;->VY:Lcom/android/emailcommon/VendorPolicyLoader;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/emailcommon/VendorPolicyLoader;->VZ:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/VendorPolicyLoader;->VZ:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    sget-object v2, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "VendorPolicyLoader"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 154
    :cond_1
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_1
.end method

.method private static o(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 133
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 135
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final U(Ljava/lang/String;)Lcom/android/emailcommon/VendorPolicyLoader$Provider;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 295
    const-string v2, "findProvider"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v2, "findProvider"

    invoke-direct {p0, v2, v0}, Lcom/android/emailcommon/VendorPolicyLoader;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 297
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;

    invoke-direct {v0}, Lcom/android/emailcommon/VendorPolicyLoader$Provider;-><init>()V

    .line 299
    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->id:Ljava/lang/String;

    .line 300
    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->label:Ljava/lang/String;

    .line 301
    iput-object p1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->domain:Ljava/lang/String;

    .line 302
    const-string v1, "findProvider.inUri"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUriTemplate:Ljava/lang/String;

    .line 303
    const-string v1, "findProvider.inUser"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 304
    const-string v1, "findProvider.outUri"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUriTemplate:Ljava/lang/String;

    .line 305
    const-string v1, "findProvider.outUser"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 306
    const-string v1, "findProvider.note"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/VendorPolicyLoader$Provider;->note:Ljava/lang/String;

    .line 309
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 188
    const-string v1, "getImapId.user"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "getImapId.host"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "getImapId.capabilities"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "getImapId"

    invoke-direct {p0, v1, v0}, Lcom/android/emailcommon/VendorPolicyLoader;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "getImapId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    return-object v0
.end method

.method public final kN()Z
    .locals 3

    .prologue
    .line 166
    const-string v0, "useAlternateExchangeStrings"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/emailcommon/VendorPolicyLoader;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "useAlternateExchangeStrings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

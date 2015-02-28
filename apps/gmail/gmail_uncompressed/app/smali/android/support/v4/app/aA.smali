.class public final Landroid/support/v4/app/aA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ec:I

.field private static final ed:Ljava/lang/Object;

.field private static ee:Ljava/lang/String;

.field private static ef:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final eh:Ljava/lang/Object;

.field private static ei:Landroid/support/v4/app/aI;

.field private static final ej:Landroid/support/v4/app/aC;


# instance fields
.field private final eg:Landroid/app/NotificationManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/aA;->ed:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/support/v4/app/aA;->ef:Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/aA;->eh:Ljava/lang/Object;

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 166
    new-instance v0, Landroid/support/v4/app/aF;

    invoke-direct {v0}, Landroid/support/v4/app/aF;-><init>()V

    sput-object v0, Landroid/support/v4/app/aA;->ej:Landroid/support/v4/app/aC;

    .line 172
    :goto_0
    sget-object v0, Landroid/support/v4/app/aA;->ej:Landroid/support/v4/app/aC;

    invoke-interface {v0}, Landroid/support/v4/app/aC;->aq()I

    move-result v0

    sput v0, Landroid/support/v4/app/aA;->ec:I

    .line 173
    return-void

    .line 167
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 168
    new-instance v0, Landroid/support/v4/app/aE;

    invoke-direct {v0}, Landroid/support/v4/app/aE;-><init>()V

    sput-object v0, Landroid/support/v4/app/aA;->ej:Landroid/support/v4/app/aC;

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Landroid/support/v4/app/aD;

    invoke-direct {v0}, Landroid/support/v4/app/aD;-><init>()V

    sput-object v0, Landroid/support/v4/app/aA;->ej:Landroid/support/v4/app/aC;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/support/v4/app/aA;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Landroid/support/v4/app/aA;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/support/v4/app/aA;->eg:Landroid/app/NotificationManager;

    .line 110
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/app/aA;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Landroid/support/v4/app/aA;

    invoke-direct {v0, p0}, Landroid/support/v4/app/aA;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/support/v4/app/aK;)V
    .locals 3

    .prologue
    .line 267
    sget-object v1, Landroid/support/v4/app/aA;->eh:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    sget-object v0, Landroid/support/v4/app/aA;->ei:Landroid/support/v4/app/aI;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Landroid/support/v4/app/aI;

    iget-object v2, p0, Landroid/support/v4/app/aA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v4/app/aI;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v4/app/aA;->ei:Landroid/support/v4/app/aI;

    .line 271
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    sget-object v0, Landroid/support/v4/app/aA;->ei:Landroid/support/v4/app/aI;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/aI;->b(Landroid/support/v4/app/aK;)V

    .line 273
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic ap()I
    .locals 1

    .prologue
    .line 54
    sget v0, Landroid/support/v4/app/aA;->ec:I

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_2

    sget-object v0, Landroid/support/v4/app/aA;->ee:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 240
    new-instance v3, Ljava/util/HashSet;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 241
    array-length v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v2, v0

    .line 242
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 243
    if-eqz v5, :cond_0

    .line 244
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    sget-object v2, Landroid/support/v4/app/aA;->ed:Ljava/lang/Object;

    monitor-enter v2

    .line 248
    :try_start_0
    sput-object v3, Landroid/support/v4/app/aA;->ef:Ljava/util/Set;

    .line 249
    sput-object v1, Landroid/support/v4/app/aA;->ee:Ljava/lang/String;

    .line 250
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_2
    sget-object v0, Landroid/support/v4/app/aA;->ef:Ljava/util/Set;

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final cancel(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    sget-object v0, Landroid/support/v4/app/aA;->ej:Landroid/support/v4/app/aC;

    iget-object v1, p0, Landroid/support/v4/app/aA;->eg:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, v2, p1}, Landroid/support/v4/app/aC;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/aB;

    iget-object v1, p0, Landroid/support/v4/app/aA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2}, Landroid/support/v4/app/aB;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/aA;->a(Landroid/support/v4/app/aK;)V

    .line 181
    :cond_0
    return-void
.end method

.method public final cancelAll()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v4/app/aA;->eg:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 199
    new-instance v0, Landroid/support/v4/app/aB;

    iget-object v1, p0, Landroid/support/v4/app/aA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/aB;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/aA;->a(Landroid/support/v4/app/aK;)V

    .line 201
    :cond_0
    return-void
.end method

.method public final notify(ILandroid/app/Notification;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-static {p2}, Landroid/support/v4/app/V;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.support.useSideChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/app/aG;

    iget-object v1, p0, Landroid/support/v4/app/aA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2, p2}, Landroid/support/v4/app/aG;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/aA;->a(Landroid/support/v4/app/aK;)V

    sget-object v0, Landroid/support/v4/app/aA;->ej:Landroid/support/v4/app/aC;

    iget-object v1, p0, Landroid/support/v4/app/aA;->eg:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, v2, p1}, Landroid/support/v4/app/aC;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 210
    :goto_1
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/support/v4/app/aA;->ej:Landroid/support/v4/app/aC;

    iget-object v1, p0, Landroid/support/v4/app/aA;->eg:Landroid/app/NotificationManager;

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/support/v4/app/aC;->a(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_1
.end method

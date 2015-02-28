.class public final Lcom/android/email/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LX:Lcom/android/email/u;


# instance fields
.field private final LY:[I

.field private final LZ:[Landroid/graphics/Paint;

.field private final Ma:Landroid/content/res/TypedArray;

.field private final lR:Landroid/content/res/Resources;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const v1, 0x7f0f0017

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/u;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/android/email/u;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/u;->lR:Landroid/content/res/Resources;

    .line 42
    iget-object v0, p0, Lcom/android/email/u;->lR:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/u;->Ma:Landroid/content/res/TypedArray;

    .line 43
    iget-object v0, p0, Lcom/android/email/u;->lR:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/u;->LY:[I

    .line 44
    iget-object v0, p0, Lcom/android/email/u;->LY:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/email/u;->LZ:[Landroid/graphics/Paint;

    .line 45
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/email/u;->LY:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 47
    iget-object v2, p0, Lcom/android/email/u;->LY:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v2, p0, Lcom/android/email/u;->LZ:[Landroid/graphics/Paint;

    aput-object v1, v2, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public static declared-synchronized v(Landroid/content/Context;)Lcom/android/email/u;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/android/email/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/u;->LX:Lcom/android/email/u;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/email/u;

    invoke-direct {v0, p0}, Lcom/android/email/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/u;->LX:Lcom/android/email/u;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/email/u;->LX:Lcom/android/email/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final j(J)I
    .locals 7

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/u;->LY:[I

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    iget-object v1, p0, Lcom/android/email/u;->LY:[I

    array-length v1, v1

    int-to-long v4, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.class public final Lcom/android/a/j;
.super Lcom/android/a/i;
.source "SourceFile"


# static fields
.field private static GQ:Lcom/android/a/j;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/a/i;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 138
    return-void
.end method

.method public static ga()Lcom/android/a/j;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/a/j;->GQ:Lcom/android/a/j;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/android/a/j;

    invoke-direct {v0}, Lcom/android/a/j;-><init>()V

    sput-object v0, Lcom/android/a/j;->GQ:Lcom/android/a/j;

    .line 133
    :cond_0
    sget-object v0, Lcom/android/a/j;->GQ:Lcom/android/a/j;

    return-object v0
.end method


# virtual methods
.method public final acquireReference()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public final getByteCount()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public final releaseReference()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.class final Lcom/google/android/gm/persistence/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/aU;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1942
    iput-object p1, p0, Lcom/google/android/gm/persistence/g;->mContext:Landroid/content/Context;

    .line 1943
    return-void
.end method


# virtual methods
.method public final dK(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/google/android/gm/persistence/g;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->aF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    const/4 v0, 0x0

    .line 1950
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gm/persistence/b;->DD()Lcom/google/android/gm/persistence/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/persistence/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gm/persistence/b;->H(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

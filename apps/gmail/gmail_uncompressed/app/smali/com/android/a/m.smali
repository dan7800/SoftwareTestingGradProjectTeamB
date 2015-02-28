.class final Lcom/android/a/m;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic GX:Lcom/android/a/l;


# direct methods
.method public constructor <init>(Lcom/android/a/l;I)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/a/m;->GX:Lcom/android/a/l;

    .line 223
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 224
    return-void
.end method


# virtual methods
.method protected final synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 220
    check-cast p2, Lcom/android/a/e;

    iget-object v0, p0, Lcom/android/a/m;->GX:Lcom/android/a/l;

    invoke-virtual {v0, p2}, Lcom/android/a/l;->a(Lcom/android/a/e;)I

    move-result v0

    return v0
.end method

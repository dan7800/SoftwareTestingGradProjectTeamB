.class public final Lcom/google/android/gm/provider/bI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bnu:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/bI;->bnu:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gm/provider/bI;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/bI;->bnu:Ljava/util/LinkedHashMap;

    return-object v0
.end method

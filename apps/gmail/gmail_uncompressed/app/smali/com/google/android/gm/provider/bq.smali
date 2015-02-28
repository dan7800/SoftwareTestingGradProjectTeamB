.class final Lcom/google/android/gm/provider/bq;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bmv:Lcom/google/android/gm/provider/bp;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/bp;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/gm/provider/bq;->bmv:Lcom/google/android/gm/provider/bp;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

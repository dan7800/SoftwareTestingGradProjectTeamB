.class final Lcom/google/common/base/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cpq:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/common/base/h;

    invoke-direct {v0}, Lcom/google/common/base/h;-><init>()V

    sput-object v0, Lcom/google/common/base/g;->cpq:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static YM()J
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

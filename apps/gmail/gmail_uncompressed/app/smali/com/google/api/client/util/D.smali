.class final Lcom/google/api/client/util/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/util/C;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final nanoTime()J
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

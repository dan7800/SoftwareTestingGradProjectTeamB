.class public final Lcom/google/api/client/http/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final cwI:Lcom/google/api/client/util/s;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Lcom/google/api/client/util/s;

    invoke-direct {v0}, Lcom/google/api/client/util/s;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/g;->cwI:Lcom/google/api/client/util/s;

    .line 283
    return-void
.end method

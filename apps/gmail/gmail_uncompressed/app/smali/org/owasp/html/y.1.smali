.class final Lorg/owasp/html/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/owasp/html/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/owasp/html/w",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic U(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/google/common/base/i;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    const-class v1, Ljava/lang/Error;

    invoke-static {v0, v1}, Lcom/google/common/base/k;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    const-class v1, Ljava/lang/RuntimeException;

    invoke-static {v0, v1}, Lcom/google/common/base/k;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.class final Lcom/a/a/c;
.super Lcom/a/a/e;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/a/a/e;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method final Br()B
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x26

    return v0
.end method

.method final Bs()B
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x2d

    return v0
.end method

.method final e(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    const/16 v1, 0x26

    if-ne p1, v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x20

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7e

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

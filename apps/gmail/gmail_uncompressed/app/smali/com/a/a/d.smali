.class final Lcom/a/a/d;
.super Lcom/a/a/e;
.source "SourceFile"


# instance fields
.field final aRI:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 45
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/a/a/e;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    if-eqz p3, :cond_0

    .line 47
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'(),-./:?!\"#$%&*;<=>@[]^_`{|} \t\r\n"

    iput-object v0, p0, Lcom/a/a/d;->aRI:Ljava/lang/String;

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'(),-./:? \t\r\n"

    iput-object v0, p0, Lcom/a/a/d;->aRI:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method final Br()B
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x2b

    return v0
.end method

.method final Bs()B
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x2d

    return v0
.end method

.method final e(C)Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/a/a/d;->aRI:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

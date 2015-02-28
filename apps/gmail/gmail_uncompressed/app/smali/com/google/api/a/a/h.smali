.class public abstract Lcom/google/api/a/a/h;
.super Lcom/google/api/client/googleapis/a/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/a/a/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private alt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private fields:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private oauthToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
        Yz = "oauth_token"
    .end annotation
.end field

.field private prettyPrint:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private quotaUser:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private userIp:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/a/a/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/google/api/client/googleapis/a/a/c;-><init>(Lcom/google/api/client/googleapis/a/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final synthetic Xc()Lcom/google/api/client/googleapis/a/a;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/google/api/client/googleapis/a/a/c;->Xh()Lcom/google/api/client/googleapis/a/a/a;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a;

    return-object v0
.end method

.method public final bridge synthetic Xh()Lcom/google/api/client/googleapis/a/a/a;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/google/api/client/googleapis/a/a/c;->Xh()Lcom/google/api/client/googleapis/a/a/a;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a;

    return-object v0
.end method

.method public synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/google/api/a/a/h;->q(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic k(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/c;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/google/api/a/a/h;->q(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic l(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/a/c;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/google/api/a/a/h;->q(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/a/a/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lcom/google/api/client/googleapis/a/a/c;->l(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/a/a/c;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/h;

    return-object v0
.end method

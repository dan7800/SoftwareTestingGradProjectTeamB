.class public final Lcom/google/api/a/a/a/d;
.super Lcom/google/api/client/json/b;
.source "SourceFile"


# instance fields
.field private addCollaboratorsInfo:Lcom/google/api/a/a/a/e;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private allowedRoles:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fixableFileIds:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fixableRecipientEmailAddresses:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fixesEverything:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private increaseDomainVisibilityInfo:Lcom/google/api/a/a/a/f;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field

.field private optionType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/x;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    .line 369
    return-void
.end method

.method private w(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/d;
    .locals 1

    .prologue
    .line 310
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/d;

    return-object v0
.end method


# virtual methods
.method public final Dq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/api/a/a/a/d;->optionType:Ljava/lang/String;

    return-object v0
.end method

.method public final Dr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/api/a/a/a/d;->fixableRecipientEmailAddresses:Ljava/util/List;

    return-object v0
.end method

.method public final Ds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/api/a/a/a/d;->fixableFileIds:Ljava/util/List;

    return-object v0
.end method

.method public final Dt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/api/a/a/a/d;->allowedRoles:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic WS()Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/d;

    return-object v0
.end method

.method public final synthetic WT()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/d;

    return-object v0
.end method

.method public final YG()Lcom/google/api/a/a/a/e;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/api/a/a/a/d;->addCollaboratorsInfo:Lcom/google/api/a/a/a/e;

    return-object v0
.end method

.method public final YH()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/api/a/a/a/d;->fixesEverything:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final YI()Lcom/google/api/a/a/a/f;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/api/a/a/a/d;->increaseDomainVisibilityInfo:Lcom/google/api/a/a/a/f;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/api/client/json/b;->WS()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/a/a/a/d;

    return-object v0
.end method

.method public final synthetic h(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/d;->w(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/google/api/a/a/a/d;->w(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/a/a/a/d;

    move-result-object v0

    return-object v0
.end method

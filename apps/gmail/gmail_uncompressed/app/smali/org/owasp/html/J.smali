.class final Lorg/owasp/html/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/owasp/html/b;


# instance fields
.field final synthetic cJo:Z

.field final synthetic cJp:Lcom/google/common/collect/ImmutableSet;

.field final synthetic cJq:Lorg/owasp/html/I;


# direct methods
.method constructor <init>(Lorg/owasp/html/I;ZLcom/google/common/collect/ImmutableSet;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, Lorg/owasp/html/J;->cJq:Lorg/owasp/html/I;

    iput-boolean p2, p0, Lorg/owasp/html/J;->cJo:Z

    iput-object p3, p0, Lorg/owasp/html/J;->cJp:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lorg/owasp/html/J;->cJo:Z

    if-eqz v0, :cond_0

    invoke-static {p3}, Lorg/owasp/html/W;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 709
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/J;->cJp:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p3

    :cond_1
    const/4 p3, 0x0

    goto :goto_0
.end method

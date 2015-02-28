.class final Lorg/owasp/html/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic vb:Z


# instance fields
.field final cHM:Ljava/lang/String;

.field final cHN:Z

.field final cHO:Lorg/owasp/html/p;

.field final cHP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/b;",
            ">;"
        }
    .end annotation
.end field

.field final cHQ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/owasp/html/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/owasp/html/n;->vb:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Lorg/owasp/html/p;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/owasp/html/p;",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Lorg/owasp/html/b;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/owasp/html/n;->cHM:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lorg/owasp/html/HtmlTextEscapingMode;->iA(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/owasp/html/n;->cHN:Z

    .line 57
    iput-object p2, p0, Lorg/owasp/html/n;->cHO:Lorg/owasp/html/p;

    .line 58
    invoke-static {p3}, Lcom/google/common/collect/ImmutableMap;->q(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/n;->cHP:Lcom/google/common/collect/ImmutableMap;

    .line 59
    iput-boolean p4, p0, Lorg/owasp/html/n;->cHQ:Z

    .line 60
    return-void
.end method

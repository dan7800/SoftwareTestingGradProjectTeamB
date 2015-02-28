.class public Lcom/google/android/mail/common/html/parser/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/m;


# static fields
.field private static final cuU:Ljava/util/logging/Logger;


# instance fields
.field private final cvj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field

.field private final cvk:Lcom/google/android/mail/common/html/parser/w;

.field private cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

.field private cvm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/android/mail/common/html/parser/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/v;->cuU:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvj:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/google/android/mail/common/html/parser/w;

    invoke-direct {v0, p0}, Lcom/google/android/mail/common/html/parser/w;-><init>(Lcom/google/android/mail/common/html/parser/v;)V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvk:Lcom/google/android/mail/common/html/parser/w;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvm:Z

    .line 184
    return-void
.end method

.method private Ww()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/v;->Wx()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 146
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/g;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/v;->cvk:Lcom/google/android/mail/common/html/parser/w;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/w;->d(Lcom/google/android/mail/common/html/parser/g;)V

    .line 148
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->c(Lcom/google/android/mail/common/html/parser/g;)V

    .line 149
    return-void
.end method

.method private Wx()Lcom/google/android/mail/common/html/parser/HTML$Element;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvj:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/v;->cvj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HTML$Element;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/mail/common/html/parser/v;)Lcom/google/android/mail/common/html/parser/HtmlTree;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    return-object v0
.end method

.method private a(Lcom/google/android/mail/common/html/parser/HTML$Element;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/google/android/mail/common/html/parser/v;Lcom/google/android/mail/common/html/parser/HTML$Element;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/mail/common/html/parser/v;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;)V

    return-void
.end method


# virtual methods
.method public final Wv()Lcom/google/android/mail/common/html/parser/HtmlTree;
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvm:Z

    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 47
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    return-object v0
.end method

.method public final a(Lcom/google/android/mail/common/html/parser/e;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public final a(Lcom/google/android/mail/common/html/parser/k;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvk:Lcom/google/android/mail/common/html/parser/w;

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/html/parser/w;->c(Lcom/google/android/mail/common/html/parser/k;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->b(Lcom/google/android/mail/common/html/parser/k;)V

    .line 121
    return-void
.end method

.method public final b(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvk:Lcom/google/android/mail/common/html/parser/w;

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/html/parser/w;->e(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 72
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->d(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 92
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wh()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wg()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlTree;->c(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 85
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/g;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/v;->cvk:Lcom/google/android/mail/common/html/parser/w;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/w;->d(Lcom/google/android/mail/common/html/parser/g;)V

    .line 87
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->c(Lcom/google/android/mail/common/html/parser/g;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v1, p1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->c(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V

    .line 90
    invoke-direct {p0, v0}, Lcom/google/android/mail/common/html/parser/v;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;)V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/mail/common/html/parser/g;)V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/g;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    .line 99
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvj:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HTML$Element;

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 100
    :goto_1
    if-ltz v0, :cond_3

    .line 103
    :goto_2
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/v;->cvj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/v;->Ww()V

    goto :goto_2

    .line 99
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/v;->Wx()Lcom/google/android/mail/common/html/parser/HTML$Element;

    .line 108
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvk:Lcom/google/android/mail/common/html/parser/w;

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/html/parser/w;->d(Lcom/google/android/mail/common/html/parser/g;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->c(Lcom/google/android/mail/common/html/parser/g;)V

    .line 115
    :goto_3
    return-void

    .line 113
    :cond_3
    sget-object v0, Lcom/google/android/mail/common/html/parser/v;->cuU:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring end tag: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final finish()V
    .locals 1

    .prologue
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/v;->Ww()V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvk:Lcom/google/android/mail/common/html/parser/w;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/w;->finish()V

    .line 63
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->finish()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvm:Z

    .line 66
    return-void
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    .line 53
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/v;->cvl:Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->start()V

    .line 54
    return-void
.end method

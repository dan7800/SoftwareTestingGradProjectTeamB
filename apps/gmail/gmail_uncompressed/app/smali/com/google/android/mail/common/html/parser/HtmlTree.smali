.class public Lcom/google/android/mail/common/html/parser/HtmlTree;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cuM:Lcom/google/android/mail/common/base/j;

.field private static final cuN:Lcom/google/android/mail/common/html/parser/t;

.field private static final cuU:Ljava/util/logging/Logger;


# instance fields
.field private Wr:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final cuO:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final cuP:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cuQ:Ljava/lang/String;

.field private cuR:Landroid/text/Spanned;

.field private cuS:[I

.field private cuT:Lcom/google/android/mail/common/html/parser/t;

.field private cuV:I

.field private final cub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, " \t\u000c\u200b\r\n"

    invoke-static {v0}, Lcom/google/android/mail/common/base/j;->x(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuM:Lcom/google/android/mail/common/base/j;

    .line 93
    new-instance v0, Lcom/google/android/mail/common/html/parser/q;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/q;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuN:Lcom/google/android/mail/common/html/parser/t;

    .line 125
    const-class v0, Lcom/google/android/mail/common/html/parser/HtmlTree;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuU:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cub:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuO:Ljava/util/Stack;

    .line 106
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuP:Ljava/util/Stack;

    .line 120
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuN:Lcom/google/android/mail/common/html/parser/t;

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuT:Lcom/google/android/mail/common/html/parser/t;

    .line 131
    return-void
.end method

.method private a(Lcom/google/android/mail/common/html/parser/i;II)V
    .locals 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cub:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuO:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1039
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuP:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1040
    return-void
.end method


# virtual methods
.method public final Wm()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuQ:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuQ:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuS:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuS:[I

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuT:Lcom/google/android/mail/common/html/parser/t;

    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/t;->sJ()Lcom/google/android/mail/common/html/parser/s;

    move-result-object v4

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuS:[I

    invoke-interface {v4}, Lcom/google/android/mail/common/html/parser/s;->AS()I

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cub:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/i;

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuP:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v0, v2, v1}, Lcom/google/android/mail/common/html/parser/s;->a(Lcom/google/android/mail/common/html/parser/i;II)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuS:[I

    invoke-interface {v4}, Lcom/google/android/mail/common/html/parser/s;->AS()I

    move-result v1

    aput v1, v0, v3

    invoke-interface {v4}, Lcom/google/android/mail/common/html/parser/s;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuQ:Ljava/lang/String;

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuQ:Ljava/lang/String;

    return-object v0
.end method

.method public final Wn()Landroid/text/Spanned;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 599
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuR:Landroid/text/Spanned;

    if-nez v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuR:Landroid/text/Spanned;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuT:Lcom/google/android/mail/common/html/parser/t;

    invoke-interface {v0}, Lcom/google/android/mail/common/html/parser/t;->sJ()Lcom/google/android/mail/common/html/parser/s;

    move-result-object v4

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cub:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/i;

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuP:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v0, v2, v1}, Lcom/google/android/mail/common/html/parser/s;->a(Lcom/google/android/mail/common/html/parser/i;II)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Lcom/google/android/mail/common/html/parser/s;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuR:Landroid/text/Spanned;

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuR:Landroid/text/Spanned;

    return-object v0
.end method

.method public final a(Lcom/google/android/mail/common/html/parser/t;)V
    .locals 2

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuT:Lcom/google/android/mail/common/html/parser/t;

    .line 142
    return-void
.end method

.method final b(Lcom/google/android/mail/common/html/parser/k;)V
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1032
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->a(Lcom/google/android/mail/common/html/parser/i;II)V

    .line 1033
    return-void
.end method

.method final c(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1000
    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->a(Lcom/google/android/mail/common/html/parser/i;II)V

    .line 1002
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->Wr:Ljava/util/Stack;

    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 1003
    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuV:I

    .line 1004
    return-void
.end method

.method final c(Lcom/google/android/mail/common/html/parser/g;)V
    .locals 3

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1011
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuV:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->a(Lcom/google/android/mail/common/html/parser/i;II)V

    .line 1013
    iget v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuV:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuP:Ljava/util/Stack;

    iget v2, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuV:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuV:I

    .line 1018
    return-void
.end method

.method final d(Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;)V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cub:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1023
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->a(Lcom/google/android/mail/common/html/parser/i;II)V

    .line 1024
    return-void
.end method

.method final finish()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 990
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->Wr:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 991
    iget v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuV:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 992
    return-void

    :cond_0
    move v0, v2

    .line 990
    goto :goto_0

    :cond_1
    move v1, v2

    .line 991
    goto :goto_1
.end method

.method final start()V
    .locals 1

    .prologue
    .line 984
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->Wr:Ljava/util/Stack;

    .line 985
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlTree;->cuV:I

    .line 986
    return-void
.end method

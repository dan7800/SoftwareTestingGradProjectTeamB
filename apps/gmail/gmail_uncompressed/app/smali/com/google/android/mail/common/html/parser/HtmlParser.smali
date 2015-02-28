.class public final Lcom/google/android/mail/common/html/parser/HtmlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DEBUG:Z

.field public static final cuo:Lcom/google/android/mail/common/html/parser/x;

.field static cus:Ljava/util/regex/Pattern;

.field private static final cut:Ljava/util/regex/Pattern;


# instance fields
.field private aBx:Z

.field private cub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/i;",
            ">;"
        }
    .end annotation
.end field

.field private cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

.field private cum:I

.field private cun:Ljava/lang/String;

.field private cup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/x;",
            ">;"
        }
    .end annotation
.end field

.field private final cuq:Z

.field private final cur:Z

.field private final cuu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field

.field private final cuv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mail/common/html/parser/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEBUG:Z

    .line 67
    invoke-static {}, Lcom/google/android/mail/common/html/parser/b;->Wd()Lcom/google/android/mail/common/html/parser/x;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuo:Lcom/google/android/mail/common/html/parser/x;

    .line 175
    const-string v0, "[\"\'&<>=\\s]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cus:Ljava/util/regex/Pattern;

    .line 312
    const-string v0, "\\& \\#? [0-9a-zA-Z]{0,8} $"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cut:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->cuC:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    invoke-direct {p0, v0}, Lcom/google/android/mail/common/html/parser/HtmlParser;-><init>(Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;)V

    .line 103
    return-void
.end method

.method private constructor <init>(Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cum:I

    .line 70
    new-array v0, v1, [Lcom/google/android/mail/common/html/parser/x;

    sget-object v3, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuo:Lcom/google/android/mail/common/html/parser/x;

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cup:Ljava/util/List;

    .line 593
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuu:Ljava/util/HashMap;

    .line 599
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuv:Ljava/util/HashMap;

    .line 111
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->cuE:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    .line 112
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;->cuD:Lcom/google/android/mail/common/html/parser/HtmlParser$ParseStyle;

    if-ne p1, v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cur:Z

    .line 113
    return-void

    :cond_2
    move v0, v2

    .line 111
    goto :goto_0
.end method

.method private static T(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/i;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 257
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/i;

    .line 258
    instance-of v4, v0, Lcom/google/android/mail/common/html/parser/k;

    if-eqz v4, :cond_0

    .line 259
    check-cast v0, Lcom/google/android/mail/common/html/parser/k;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {v2, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->a(Ljava/util/LinkedList;Ljava/util/List;)V

    .line 262
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_1
    invoke-static {v2, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->a(Ljava/util/LinkedList;Ljava/util/List;)V

    .line 266
    return-object v1
.end method

.method private a(Lcom/google/android/mail/common/html/parser/HTML$Element;III)V
    .locals 6

    .prologue
    const/16 v5, 0x3e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 913
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 914
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3c

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 915
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 917
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    if-eqz v0, :cond_4

    .line 919
    if-ge p2, p4, :cond_3

    :goto_3
    invoke-static {v1}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 920
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v0, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 921
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/g;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    :goto_4
    return-void

    :cond_0
    move v0, v2

    .line 913
    goto :goto_0

    :cond_1
    move v0, v2

    .line 914
    goto :goto_1

    :cond_2
    move v0, v2

    .line 915
    goto :goto_2

    :cond_3
    move v1, v2

    .line 919
    goto :goto_3

    .line 922
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cur:Z

    if-eqz v0, :cond_8

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "</"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 931
    if-ge p2, p3, :cond_6

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 932
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    invoke-virtual {v0, v4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VT()Lcom/google/android/mail/common/base/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/mail/common/base/a;->gF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    if-gt p3, p4, :cond_7

    :goto_6
    invoke-static {v1}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    .line 938
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v0, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_5

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 944
    :cond_5
    const-string v1, "\\S+.*>"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move v0, v2

    .line 931
    goto :goto_5

    :cond_7
    move v1, v2

    .line 937
    goto :goto_6

    .line 949
    :cond_8
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private static a(Ljava/util/LinkedList;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/mail/common/html/parser/k;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/mail/common/html/parser/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 280
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/k;

    .line 285
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/k;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 286
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/k;->Wl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 287
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/k;->Wl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2
    move v1, v0

    .line 289
    goto :goto_1

    .line 290
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 292
    :cond_3
    :goto_3
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 293
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/k;

    .line 294
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/k;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/k;->Wl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 296
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/k;->Wl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 299
    :cond_4
    if-lez v1, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->au(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/k;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private af(II)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1090
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 1091
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v7

    .line 1092
    sget-object v0, Lcom/google/android/mail/common/html/parser/b;->crq:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v0, v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/mail/common/html/parser/b;->crw:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v0, v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move v6, p1

    .line 1095
    :goto_1
    if-ge v6, p2, :cond_3

    .line 1096
    add-int/lit8 v0, v6, 0x2

    if-ge v0, p2, :cond_1

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    add-int/lit8 v2, v6, 0x2

    invoke-virtual {v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/mail/common/html/parser/HTML$Element;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1101
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    move v0, v4

    .line 1092
    goto :goto_0

    .line 1106
    :cond_3
    if-le v6, p1, :cond_4

    .line 1107
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v0, p1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/mail/common/html/parser/d;

    invoke-direct {v1, v0, v4}, Lcom/google/android/mail/common/html/parser/d;-><init>(Ljava/lang/String;B)V

    .line 1109
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    :cond_4
    sget-object v0, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->cuH:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 1113
    return v6
.end method

.method private gM(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/a;
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cup:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 825
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/x;

    invoke-interface {v0, p1}, Lcom/google/android/mail/common/html/parser/x;->gM(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/a;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_0

    .line 831
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gO(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 607
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 608
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuu:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/html/parser/HTML$Element;

    .line 609
    if-nez v0, :cond_0

    .line 610
    new-instance v0, Lcom/google/android/mail/common/html/parser/HTML$Element;

    const/4 v4, 0x1

    sget-object v6, Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;->cpU:Lcom/google/android/mail/common/html/parser/HTML$Element$Flow;

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/mail/common/html/parser/HTML$Element;-><init>(Ljava/lang/String;IZZZLcom/google/android/mail/common/html/parser/HTML$Element$Flow;)V

    .line 616
    iget-object v2, p0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuu:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final gN(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument;
    .locals 22

    .prologue
    .line 188
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    .line 191
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    .line 192
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->cuG:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 194
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->aBx:Z

    .line 195
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 196
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cum:I

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 198
    const/4 v13, 0x0

    :goto_0
    if-ge v13, v8, :cond_48

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->aBx:Z

    if-nez v2, :cond_48

    .line 202
    sget-object v2, Lcom/google/android/mail/common/html/parser/n;->cuw:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    invoke-virtual {v3}, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 226
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Unknown state!"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move v4, v13

    .line 205
    :goto_1
    if-ge v4, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, v4, 0x1

    if-ge v2, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x21

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_6

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    const-string v5, "!--"

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v2, v3, v5, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->cuI:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    :cond_1
    :goto_2
    if-le v4, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v2, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cum:I

    if-ne v4, v2, :cond_4e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cum:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4e

    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser;->cut:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    add-int v2, v13, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-le v2, v13, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    if-eqz v5, :cond_7

    move-object v2, v3

    :cond_2
    :goto_4
    invoke-static {v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->av(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/k;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_3
    if-gt v4, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    sget-object v3, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->cuG:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    if-eq v2, v3, :cond_8

    :cond_4
    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move v2, v4

    .line 232
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cum:I

    if-lt v2, v3, :cond_47

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->aBx:Z

    move v13, v2

    .line 233
    goto/16 :goto_0

    .line 205
    :cond_5
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->cuH:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cur:Z

    if-eqz v5, :cond_2

    const/16 v2, 0x3c

    invoke-static {v2}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    const-string v5, "&lt;"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/mail/common/base/j;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 206
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 210
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    add-int/lit8 v3, v13, 0x1

    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->cuG:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_4d

    const/4 v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v21, v2

    move v2, v3

    move/from16 v3, v21

    :goto_9
    new-instance v4, Lcom/google/android/mail/common/html/parser/p;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/google/android/mail/common/html/parser/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v8}, Lcom/google/android/mail/common/html/parser/p;->ag(II)I

    move-result v11

    invoke-virtual {v4}, Lcom/google/android/mail/common/html/parser/p;->getTagName()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    if-nez v5, :cond_e

    if-nez v3, :cond_b

    const-string v4, "<"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    if-eqz v3, :cond_a

    const-string v3, "<"

    :goto_a
    invoke-static {v4, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->au(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/k;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->cuG:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move v3, v2

    .line 211
    :goto_b
    if-le v3, v13, :cond_40

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move v2, v3

    .line 212
    goto/16 :goto_6

    .line 210
    :cond_9
    const/4 v2, 0x0

    goto :goto_8

    :cond_a
    const/4 v3, 0x0

    goto :goto_a

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    if-eqz v2, :cond_c

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->gO(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    move-object v4, v2

    :cond_c
    :goto_d
    const/4 v9, 0x0

    const/4 v2, 0x0

    new-instance v15, Lcom/google/android/mail/common/html/parser/o;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-direct {v15, v5}, Lcom/google/android/mail/common/html/parser/o;-><init>(Ljava/lang/String;)V

    move v10, v11

    move v7, v11

    :goto_e
    if-ge v7, v8, :cond_4b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v7, 0x1

    if-ge v6, v8, :cond_12

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v12, 0x3e

    if-ne v6, v12, :cond_12

    const/4 v5, 0x1

    add-int/lit8 v7, v7, 0x1

    move v6, v7

    move v7, v5

    :goto_f
    if-ne v6, v8, :cond_2c

    if-ge v13, v8, :cond_2a

    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v2, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    if-eqz v4, :cond_2b

    move-object v2, v3

    :cond_d
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-static {v3, v2}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->av(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/k;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v8

    goto :goto_b

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cup:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cup:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mail/common/html/parser/x;

    invoke-interface {v2, v5}, Lcom/google/android/mail/common/html/parser/x;->gL(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    if-eqz v2, :cond_f

    :goto_12
    if-nez v2, :cond_4c

    sget-boolean v4, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEBUG:Z

    if-eqz v4, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Unknown element: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    if-eqz v4, :cond_4c

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/mail/common/html/parser/HtmlParser;->gO(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v2

    move-object v4, v2

    goto/16 :goto_d

    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    :cond_12
    const/16 v6, 0x3e

    if-eq v5, v6, :cond_4b

    if-eqz v3, :cond_14

    const/16 v6, 0x3c

    if-ne v6, v5, :cond_14

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v11, v7}, Lcom/google/android/mail/common/html/parser/HtmlParser;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;III)V

    :cond_13
    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->cuG:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move v2, v7

    :goto_13
    move v3, v2

    goto/16 :goto_b

    :cond_14
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_15

    add-int/lit8 v12, v7, 0x1

    move v5, v10

    move-object v6, v2

    move v10, v12

    :goto_14
    if-le v10, v7, :cond_29

    const/4 v2, 0x1

    :goto_15
    invoke-static {v2}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move-object v2, v6

    move v7, v10

    move v10, v5

    goto/16 :goto_e

    :cond_15
    invoke-virtual {v15}, Lcom/google/android/mail/common/html/parser/o;->reset()V

    invoke-virtual {v15, v7, v8}, Lcom/google/android/mail/common/html/parser/o;->ag(II)I

    move-result v12

    if-le v12, v7, :cond_19

    const/4 v5, 0x1

    :goto_16
    invoke-static {v5}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    invoke-virtual {v15}, Lcom/google/android/mail/common/html/parser/o;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4a

    invoke-virtual {v15, v12, v8}, Lcom/google/android/mail/common/html/parser/o;->ah(II)I

    move-result v12

    if-eqz v4, :cond_18

    if-nez v2, :cond_49

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_17
    if-ge v10, v12, :cond_1a

    const/4 v2, 0x1

    :goto_18
    invoke-static {v2}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    invoke-virtual {v15}, Lcom/google/android/mail/common/html/parser/o;->getName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1b

    const/4 v2, 0x1

    :goto_19
    invoke-static {v2}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mail/common/html/parser/HtmlParser;->gM(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/a;

    move-result-object v17

    invoke-virtual {v15}, Lcom/google/android/mail/common/html/parser/o;->getValue()Ljava/lang/String;

    move-result-object v18

    if-nez v17, :cond_1c

    sget-boolean v2, Lcom/google/android/mail/common/html/parser/HtmlParser;->DEBUG:Z

    if-eqz v2, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unknown attribute: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuv:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/mail/common/html/parser/a;

    if-nez v2, :cond_17

    new-instance v2, Lcom/google/android/mail/common/html/parser/a;

    invoke-direct {v2, v10}, Lcom/google/android/mail/common/html/parser/a;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuv:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    move-object/from16 v0, v18

    invoke-static {v2, v0, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v6

    :cond_18
    :goto_1a
    move v5, v12

    move-object v6, v2

    move v10, v12

    goto/16 :goto_14

    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_16

    :cond_1a
    const/4 v2, 0x0

    goto :goto_18

    :cond_1b
    const/4 v2, 0x0

    goto :goto_19

    :cond_1c
    if-nez v18, :cond_1d

    const/4 v2, 0x0

    :goto_1b
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v0, v2, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v6

    goto :goto_1a

    :cond_1d
    invoke-static/range {v18 .. v18}, Lcom/google/android/mail/common/base/StringUtil;->gH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cur:Z

    if-eqz v5, :cond_27

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v15, Lcom/google/android/mail/common/html/parser/o;->cux:I

    if-gt v10, v5, :cond_20

    const/4 v5, 0x1

    :goto_1c
    invoke-static {v5}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    iget v0, v15, Lcom/google/android/mail/common/html/parser/o;->cux:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v10, "\\S+"

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1f

    const-string v5, " "

    :cond_1f
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v18, :cond_22

    iget v5, v15, Lcom/google/android/mail/common/html/parser/o;->cux:I

    if-ge v5, v12, :cond_21

    const/4 v5, 0x1

    :goto_1d
    invoke-static {v5}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    iget v10, v15, Lcom/google/android/mail/common/html/parser/o;->cux:I

    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/android/mail/common/base/d;->VT()Lcom/google/android/mail/common/base/a;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/google/android/mail/common/base/a;->gF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v0, v2, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v6

    goto/16 :goto_1a

    :cond_20
    const/4 v5, 0x0

    goto :goto_1c

    :cond_21
    const/4 v5, 0x0

    goto :goto_1d

    :cond_22
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VT()Lcom/google/android/mail/common/base/a;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/google/android/mail/common/base/a;->gF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/google/android/mail/common/html/parser/o;->cuy:I

    iget v10, v15, Lcom/google/android/mail/common/html/parser/o;->cuz:I

    if-ge v5, v10, :cond_23

    const/4 v5, 0x1

    :goto_1f
    invoke-static {v5}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    iget v10, v15, Lcom/google/android/mail/common/html/parser/o;->cuy:I

    iget v0, v15, Lcom/google/android/mail/common/html/parser/o;->cuz:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v15, Lcom/google/android/mail/common/html/parser/o;->cuB:Z

    if-eqz v5, :cond_24

    const-string v5, "<"

    const-string v10, "&lt;"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_20
    iget v5, v15, Lcom/google/android/mail/common/html/parser/o;->cuA:I

    if-gt v5, v12, :cond_26

    const/4 v5, 0x1

    :goto_21
    invoke-static {v5}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    iget v10, v15, Lcom/google/android/mail/common/html/parser/o;->cuA:I

    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_23
    const/4 v5, 0x0

    goto :goto_1f

    :cond_24
    sget-object v5, Lcom/google/android/mail/common/html/parser/HtmlParser;->cus:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_25

    const/16 v5, 0x22

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "\""

    const-string v10, "&quot;"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x22

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_25
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_26
    const/4 v5, 0x0

    goto :goto_21

    :cond_27
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v5}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/j;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    move-object v2, v6

    goto/16 :goto_1a

    :cond_29
    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_2a
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cur:Z

    if-eqz v4, :cond_d

    const/16 v2, 0x3c

    invoke-static {v2}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v4, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "&lt;"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/mail/common/base/j;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_11

    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x3e

    if-ne v5, v9, :cond_2d

    const/4 v5, 0x1

    :goto_22
    invoke-static {v5}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    add-int/lit8 v5, v6, 0x1

    if-eqz v4, :cond_3e

    if-eqz v3, :cond_2e

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v11, v5}, Lcom/google/android/mail/common/html/parser/HtmlParser;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;III)V

    move v2, v5

    goto/16 :goto_13

    :cond_2d
    const/4 v5, 0x0

    goto :goto_22

    :cond_2e
    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->crq:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v4}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    sget-object v3, Lcom/google/android/mail/common/html/parser/b;->crw:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v3, v4}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_2f
    sget-object v3, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->cuJ:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    :cond_30
    if-ge v13, v11, :cond_31

    const/4 v3, 0x1

    :goto_23
    invoke-static {v3}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    if-gt v11, v10, :cond_32

    const/4 v3, 0x1

    :goto_24
    invoke-static {v3}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    if-gt v10, v5, :cond_33

    const/4 v3, 0x1

    :goto_25
    invoke-static {v3}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v3, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v6, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_34

    invoke-static {v4, v2, v3, v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->b(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v2

    :goto_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto/16 :goto_13

    :cond_31
    const/4 v3, 0x0

    goto :goto_23

    :cond_32
    const/4 v3, 0x0

    goto :goto_24

    :cond_33
    const/4 v3, 0x0

    goto :goto_25

    :cond_34
    invoke-static {v4, v2, v3, v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v2

    goto :goto_26

    :cond_35
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cur:Z

    if-eqz v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3c

    if-ne v3, v6, :cond_37

    const/4 v3, 0x1

    :goto_27
    invoke-static {v3}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    add-int/lit8 v6, v13, 0x1

    invoke-virtual {v3, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/mail/common/base/d;->VT()Lcom/google/android/mail/common/base/a;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/mail/common/base/a;->gF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v5, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v11, 0x3e

    if-ne v3, v11, :cond_38

    const/4 v3, 0x1

    :goto_28
    invoke-static {v3}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    if-eqz v7, :cond_36

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v11, 0x2f

    if-ne v3, v11, :cond_39

    const/4 v3, 0x1

    :goto_29
    invoke-static {v3}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    :cond_36
    move v3, v6

    if-gt v10, v3, :cond_3a

    const/4 v3, 0x1

    :goto_2a
    invoke-static {v3}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    if-ge v10, v5, :cond_3b

    const/4 v3, 0x1

    :goto_2b
    invoke-static {v3}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_3c

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->b(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v2

    :goto_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto/16 :goto_13

    :cond_37
    const/4 v3, 0x0

    goto :goto_27

    :cond_38
    const/4 v3, 0x0

    goto :goto_28

    :cond_39
    const/4 v3, 0x0

    goto :goto_29

    :cond_3a
    const/4 v3, 0x0

    goto :goto_2a

    :cond_3b
    const/4 v3, 0x0

    goto :goto_2b

    :cond_3c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v6, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v2

    goto :goto_2c

    :cond_3d
    if-eqz v7, :cond_3f

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v2, v3, v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->b(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v2

    :goto_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    move v2, v5

    goto/16 :goto_13

    :cond_3f
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v2, v3, v6}, Lcom/google/android/mail/common/html/parser/HtmlDocument;->a(Lcom/google/android/mail/common/html/parser/HTML$Element;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    move-result-object v2

    goto :goto_2d

    .line 211
    :cond_40
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 215
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    const-string v3, "<!--"

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v2, v13, v3, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    const-string v3, "-->"

    add-int/lit8 v4, v13, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42

    add-int/lit8 v2, v2, 0x3

    :goto_2e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cuq:Z

    if-eqz v3, :cond_41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    invoke-virtual {v4, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/mail/common/html/parser/e;

    invoke-direct {v5, v4}, Lcom/google/android/mail/common/html/parser/e;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_41
    sget-object v3, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->cuG:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    .line 217
    if-le v2, v13, :cond_44

    const/4 v3, 0x1

    :goto_2f
    invoke-static {v3}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    goto/16 :goto_6

    .line 215
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cun:Ljava/lang/String;

    const/16 v3, 0x3e

    add-int/lit8 v4, v13, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_43

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_43
    move v2, v8

    goto :goto_2e

    .line 217
    :cond_44
    const/4 v3, 0x0

    goto :goto_2f

    .line 221
    :pswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lcom/google/android/mail/common/html/parser/HtmlParser;->af(II)I

    move-result v3

    .line 222
    if-gt v3, v13, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cul:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    sget-object v4, Lcom/google/android/mail/common/html/parser/HtmlParser$State;->cuJ:Lcom/google/android/mail/common/html/parser/HtmlParser$State;

    if-eq v2, v4, :cond_46

    :cond_45
    const/4 v2, 0x1

    :goto_30
    invoke-static {v2}, Lcom/google/android/mail/common/base/M;->assertTrue(Z)V

    move v2, v3

    .line 223
    goto/16 :goto_6

    .line 222
    :cond_46
    const/4 v2, 0x0

    goto :goto_30

    .line 232
    :cond_47
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 235
    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/mail/common/html/parser/HtmlParser;->T(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    .line 237
    new-instance v2, Lcom/google/android/mail/common/html/parser/HtmlDocument;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/google/android/mail/common/html/parser/HtmlDocument;-><init>(Ljava/util/List;)V

    .line 238
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/mail/common/html/parser/HtmlParser;->cub:Ljava/util/List;

    .line 239
    return-object v2

    :cond_49
    move-object v6, v2

    goto/16 :goto_17

    :cond_4a
    move v5, v10

    move-object v6, v2

    move v10, v12

    goto/16 :goto_14

    :cond_4b
    move v6, v7

    move v7, v9

    goto/16 :goto_f

    :cond_4c
    move-object v4, v2

    goto/16 :goto_d

    :cond_4d
    move/from16 v21, v2

    move v2, v3

    move/from16 v3, v21

    goto/16 :goto_9

    :cond_4e
    move v2, v4

    goto/16 :goto_3

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

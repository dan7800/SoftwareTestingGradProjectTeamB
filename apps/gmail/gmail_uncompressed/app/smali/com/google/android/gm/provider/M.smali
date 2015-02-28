.class public Lcom/google/android/gm/provider/M;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final bfI:Ljava/util/regex/Pattern;

.field public static final bfJ:Ljava/util/regex/Pattern;

.field public static final bfK:Ljava/util/regex/Pattern;

.field public static final bfL:Ljava/util/regex/Pattern;

.field public static final bfM:Ljava/util/regex/Pattern;

.field private static final bfN:Ljava/util/regex/Pattern;

.field private static final bfO:Ljava/util/regex/Pattern;

.field private static final bfP:Ljava/util/regex/Pattern;

.field private static final bfQ:Ljava/util/regex/Pattern;

.field private static final bfR:Ljava/util/regex/Pattern;

.field private static final bfS:Ljava/util/regex/Pattern;

.field private static final bfT:Ljava/util/regex/Pattern;

.field protected static final bfU:Ljava/util/regex/Pattern;

.field static final bfV:[Ljava/lang/String;

.field static final bfW:[Ljava/lang/String;

.field private static final bfX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bfY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bfZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final bga:Lcom/google/android/gm/provider/aj;

.field protected final bgb:Ljava/lang/String;

.field final bgc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final bgd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final bge:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final bgf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bgg:Z

.field bgh:Z

.field protected bgi:Ljava/lang/String;

.field private final bgj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bgk:Z

.field protected final mAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    const-string v0, "\\b(is|in|label):\\s*unread\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfI:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "\\b(is|in|label):\\s*starred\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfJ:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "\\b(is|in|label):\\s*chat\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfK:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "\\b(is|in|label):\\s*important\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfL:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "\\bhas:attachment\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfM:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "(^|\\s+)to:\\s*(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfN:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "(^|\\s+)from:\\s*(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfO:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "\\b(in|label):\\s*(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfP:Ljava/util/regex/Pattern;

    .line 61
    const-string v0, "\\bcategory:\\s*(social|promotions|updates|forums)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfQ:Ljava/util/regex/Pattern;

    .line 65
    const-string v0, "\\bsubject:\\s*(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfR:Ljava/util/regex/Pattern;

    .line 69
    const-string v0, "\\bis:\\s*(starred|chat|important|unread|muted)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfS:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "\\bis:read\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfT:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "\\\"(.*)\\\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfU:Ljava/util/regex/Pattern;

    .line 104
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "conversations.subject"

    aput-object v1, v0, v2

    const-string v1, "conversations.snippet"

    aput-object v1, v0, v3

    const-string v1, "conversations.fromAddress"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/M;->bfV:[Ljava/lang/String;

    .line 108
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "subject"

    aput-object v1, v0, v2

    const-string v1, "snippet"

    aput-object v1, v0, v3

    const-string v1, "body"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/M;->bfW:[Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0}, Lcom/google/common/collect/y;-><init>()V

    const-string v1, "starred"

    const-string v2, "^t"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "chat"

    const-string v2, "^b"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "chats"

    const-string v2, "^b"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "important"

    const-string v2, "^io_im"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "unread"

    const-string v2, "^u"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "muted"

    const-string v2, "^g"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^iim"

    const-string v2, "^iim"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "inbox"

    const-string v2, "^i"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "all"

    const-string v2, "^all"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "sent"

    const-string v2, "^f"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "drafts"

    const-string v2, "^r"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "imp"

    const-string v2, "^io_im"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "spam"

    const-string v2, "^s"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "trash"

    const-string v2, "^k"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfX:Ljava/util/Map;

    .line 133
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0}, Lcom/google/common/collect/y;-><init>()V

    const-string v1, "social"

    const-string v2, "^smartlabel_social"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "promotions"

    const-string v2, "^smartlabel_promo"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "updates"

    const-string v2, "^smartlabel_notification"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "forums"

    const-string v2, "^smartlabel_group"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfY:Ljava/util/Map;

    .line 141
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0}, Lcom/google/common/collect/y;-><init>()V

    const-string v1, "^iim"

    const-string v2, "^iim"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^i"

    const-string v2, "inbox"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^all"

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^f"

    const-string v2, "sent"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^r"

    const-string v2, "drafts"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^t"

    const-string v2, "starred"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^im"

    const-string v2, "imp"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^io_im"

    const-string v2, "imp"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^b"

    const-string v2, "chats"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^s"

    const-string v2, "spam"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    const-string v1, "^k"

    const-string v2, "trash"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/M;->bfZ:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gm/provider/aj;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p1, p0, Lcom/google/android/gm/provider/M;->bga:Lcom/google/android/gm/provider/aj;

    .line 289
    iput-object p2, p0, Lcom/google/android/gm/provider/M;->mAccount:Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/M;->bgc:Ljava/util/Set;

    .line 292
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/M;->bgd:Ljava/util/Set;

    .line 293
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/M;->bge:Ljava/util/Set;

    .line 294
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/M;->bgf:Ljava/util/Set;

    .line 295
    iput-boolean v1, p0, Lcom/google/android/gm/provider/M;->bgg:Z

    .line 296
    iput-boolean v1, p0, Lcom/google/android/gm/provider/M;->bgh:Z

    .line 297
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/M;->bgj:Ljava/util/Set;

    .line 298
    iput-object p3, p0, Lcom/google/android/gm/provider/M;->bgb:Ljava/lang/String;

    .line 299
    iput-boolean p4, p0, Lcom/google/android/gm/provider/M;->bgk:Z

    .line 301
    sget-object v0, Lcom/google/android/gm/provider/M;->bfN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/android/gm/provider/M;->bgc:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/Pattern;Ljava/util/Set;)V

    sget-object v0, Lcom/google/android/gm/provider/M;->bfO:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/android/gm/provider/M;->bgd:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/Pattern;Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/google/android/gm/provider/M;->EN()V

    sget-object v0, Lcom/google/android/gm/provider/M;->bfR:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/android/gm/provider/M;->bgf:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/M;->b(Ljava/util/regex/Pattern;Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/google/android/gm/provider/M;->EO()V

    invoke-direct {p0}, Lcom/google/android/gm/provider/M;->EP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/M;->bgi:Ljava/lang/String;

    .line 302
    return-void
.end method

.method private EM()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 569
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 571
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 574
    sget-object v0, Lcom/google/android/gm/provider/M;->bfU:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/google/android/gm/provider/M;->bgi:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 576
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/MatchResult;

    .line 577
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-interface {v0}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bgi:Ljava/lang/String;

    .line 586
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 588
    const-string v4, " "

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 589
    goto :goto_1

    .line 592
    :cond_1
    const-string v0, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 593
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v0, v3, v1

    .line 595
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 596
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 597
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 595
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 601
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private EN()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 639
    sget-object v0, Lcom/google/android/gm/provider/M;->bfP:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    .line 640
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/MatchResult;

    .line 641
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 642
    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/MatchResult;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/M;->bfQ:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    .line 647
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/MatchResult;

    .line 648
    invoke-interface {v0, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 650
    sget-object v3, Lcom/google/android/gm/provider/M;->bfY:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 652
    if-eqz v1, :cond_1

    .line 653
    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/MatchResult;Ljava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_2
    sget-object v0, Lcom/google/android/gm/provider/M;->bfS:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    .line 659
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/MatchResult;

    .line 660
    invoke-interface {v0, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 662
    sget-object v3, Lcom/google/android/gm/provider/M;->bfX:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 664
    if-eqz v1, :cond_3

    .line 665
    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/MatchResult;Ljava/lang/String;)V

    goto :goto_2

    .line 669
    :cond_4
    sget-object v0, Lcom/google/android/gm/provider/M;->bfT:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    .line 670
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/MatchResult;

    .line 671
    iget-object v2, p0, Lcom/google/android/gm/provider/M;->bgj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 672
    iput-boolean v4, p0, Lcom/google/android/gm/provider/M;->bgh:Z

    goto :goto_3

    .line 674
    :cond_5
    return-void
.end method

.method private EO()V
    .locals 3

    .prologue
    .line 677
    sget-object v0, Lcom/google/android/gm/provider/M;->bfM:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    .line 678
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/MatchResult;

    .line 679
    iget-object v2, p0, Lcom/google/android/gm/provider/M;->bgj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/M;->bgg:Z

    goto :goto_0

    .line 682
    :cond_0
    return-void
.end method

.method private EP()Ljava/lang/String;
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bgb:Ljava/lang/String;

    .line 733
    iget-object v1, p0, Lcom/google/android/gm/provider/M;->bgj:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 735
    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 736
    goto :goto_0

    .line 737
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/regex/Pattern;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/MatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bgb:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/MatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 714
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 716
    const/4 v0, 0x0

    .line 717
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_0

    .line 724
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/util/Collection;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 555
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_1
    return-void
.end method

.method private a(Ljava/util/regex/MatchResult;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bga:Lcom/google/android/gm/provider/aj;

    invoke-interface {v0, p2}, Lcom/google/android/gm/provider/aj;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    .line 690
    if-nez v0, :cond_0

    .line 693
    sget-object v0, Lcom/google/android/gm/provider/M;->bfX:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 694
    iget-object v1, p0, Lcom/google/android/gm/provider/M;->bga:Lcom/google/android/gm/provider/aj;

    invoke-interface {v1, v0}, Lcom/google/android/gm/provider/aj;->eE(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    .line 697
    :cond_0
    if-eqz v0, :cond_1

    .line 698
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object v1

    .line 699
    iget-object v2, p0, Lcom/google/android/gm/provider/M;->bge:Ljava/util/Set;

    iget-wide v4, v0, Lcom/google/android/gm/provider/af;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 700
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bgj:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_1
    return-void
.end method

.method private a(Ljava/util/regex/Pattern;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    .line 606
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/MatchResult;

    .line 607
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-interface {v0}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object v3

    .line 611
    const-string v0, "me"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/M;->mAccount:Ljava/lang/String;

    .line 613
    :goto_1
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bgj:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 611
    goto :goto_1

    .line 616
    :cond_1
    return-void
.end method

.method private static b([Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 474
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 476
    :goto_0
    if-ge v2, p1, :cond_1

    .line 477
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 478
    array-length v6, p0

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, p0, v0

    .line 479
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LIKE ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 481
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 482
    const-string v0, "conversations._id IN (SELECT conversation FROM messages WHERE "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v0, " OR "

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 489
    :cond_1
    return-object v3
.end method

.method private b(Ljava/util/regex/Pattern;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/M;->a(Ljava/util/regex/Pattern;)Ljava/util/List;

    move-result-object v0

    .line 626
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/MatchResult;

    .line 627
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-interface {v0}, Ljava/util/regex/MatchResult;->group()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v2, p0, Lcom/google/android/gm/provider/M;->bgj:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 633
    :cond_0
    return-void
.end method

.method private static z([Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v11, 0x29

    const/4 v1, 0x0

    .line 441
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 443
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 445
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 446
    sget-object v6, Lcom/google/android/gm/provider/M;->bfV:[Ljava/lang/String;

    array-length v7, v6

    move v2, v1

    :goto_1
    if-ge v2, v7, :cond_0

    aget-object v8, v6, v2

    .line 447
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE ?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 452
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 453
    sget-object v7, Lcom/google/android/gm/provider/M;->bfW:[Ljava/lang/String;

    array-length v8, v7

    move v2, v1

    :goto_2
    if-ge v2, v8, :cond_1

    aget-object v9, v7, v2

    .line 454
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " LIKE ?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 456
    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 457
    const-string v2, "conversations._id IN (SELECT conversation FROM messages WHERE "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v2, " OR "

    invoke-static {v2, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 464
    const/16 v2, 0x28

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    const-string v2, " OR "

    invoke-static {v2, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 469
    :cond_2
    return-object v3
.end method


# virtual methods
.method EK()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 347
    invoke-direct {p0}, Lcom/google/android/gm/provider/M;->EM()[Ljava/lang/String;

    move-result-object v2

    .line 348
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 350
    iget-boolean v0, p0, Lcom/google/android/gm/provider/M;->bgk:Z

    if-eqz v0, :cond_1

    .line 351
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "conversations._id IN (SELECT docid FROM conversation_fts_table WHERE conversation_fts_table MATCH ? )"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "conversations._id IN (SELECT conversation FROM message_fts_table WHERE message_fts_table MATCH ? )"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v7, 0x28

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, " OR "

    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 357
    :goto_1
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bib:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/M;->bgc:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/M;->b([Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 361
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->bic:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/M;->bgd:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/M;->b([Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v0, v1

    .line 365
    :goto_2
    iget-object v2, p0, Lcom/google/android/gm/provider/M;->bge:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 366
    const-string v2, "conversation_labels.conversation_id IN\n(SELECT conversation_labels.conversation_id\n   FROM conversation_labels\n   LEFT OUTER JOIN conversations\n     ON conversation_labels.conversation_id = conversations._id\n     AND conversation_labels.queryId = conversations.queryId\n WHERE conversation_labels.labels_id = ?)\n   AND conversation_labels.labels_id = ? "

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 353
    :cond_1
    invoke-static {v2}, Lcom/google/android/gm/provider/M;->z([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 377
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gm/provider/M;->bgh:Z

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bga:Lcom/google/android/gm/provider/aj;

    const-string v2, "^u"

    invoke-interface {v0, v2}, Lcom/google/android/gm/provider/aj;->eF(Ljava/lang/String;)Lcom/google/android/gm/provider/af;

    move-result-object v0

    iget-wide v4, v0, Lcom/google/android/gm/provider/af;->id:J

    .line 382
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "conversations.labelIds NOT LIKE \'%,"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",%\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bgf:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 388
    const-string v0, "conversations.subject LIKE ?"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 392
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gm/provider/M;->bgg:Z

    if-eqz v0, :cond_5

    .line 393
    const-string v0, "conversations.hasAttachments != 0"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_5
    const-string v0, " AND "

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method EL()Ljava/util/List;
    .locals 6
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
    .line 496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 498
    invoke-direct {p0}, Lcom/google/android/gm/provider/M;->EM()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 500
    iget-boolean v2, p0, Lcom/google/android/gm/provider/M;->bgk:Z

    if-eqz v2, :cond_1

    .line 501
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->bia:[Ljava/lang/String;

    array-length v2, v2

    .line 502
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_1
    sget-object v2, Lcom/google/android/gm/provider/M;->bfV:[Ljava/lang/String;

    array-length v2, v2

    sget-object v3, Lcom/google/android/gm/provider/M;->bfW:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v2, v3

    .line 507
    invoke-static {v0, v2, v1}, Lcom/google/android/gm/provider/M;->a(Ljava/util/Collection;ILjava/util/List;)V

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bgc:Ljava/util/Set;

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->bib:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2, v1}, Lcom/google/android/gm/provider/M;->a(Ljava/util/Collection;ILjava/util/List;)V

    .line 514
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bgd:Ljava/util/Set;

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->bic:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2, v1}, Lcom/google/android/gm/provider/M;->a(Ljava/util/Collection;ILjava/util/List;)V

    .line 518
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bge:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 519
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/M;->bgf:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/google/android/gm/provider/M;->a(Ljava/util/Collection;ILjava/util/List;)V

    .line 527
    return-object v1
.end method

.method dO(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return-object v0
.end method

.method o(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    .prologue
    .line 402
    return-object p1
.end method

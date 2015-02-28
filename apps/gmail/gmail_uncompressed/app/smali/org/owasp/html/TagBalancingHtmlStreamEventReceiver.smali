.class public final Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/owasp/html/N;


# static fields
.field static final cKp:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/owasp/html/aa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cKm:Lorg/owasp/html/N;

.field private cKn:I

.field private final cKo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/owasp/html/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 294
    new-instance v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships;-><init>(B)V

    invoke-static {v0}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships;->a(Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKp:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public constructor <init>(Lorg/owasp/html/N;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKn:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    .line 57
    return-void
.end method

.method private Z(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/owasp/html/aa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/aa;

    .line 208
    iget-object v2, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKn:I

    if-ge v2, v3, :cond_0

    .line 209
    iget-object v2, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    iget-object v3, v0, Lorg/owasp/html/aa;->cHM:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3, v4}, Lorg/owasp/html/N;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 211
    :cond_0
    iget-object v2, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_1
    return-void
.end method

.method private a(Lorg/owasp/html/aa;)V
    .locals 6

    .prologue
    .line 101
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 102
    if-eqz v2, :cond_5

    .line 103
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/aa;

    .line 104
    iget v1, v0, Lorg/owasp/html/aa;->cKs:I

    iget v3, p1, Lorg/owasp/html/aa;->cKr:I

    and-int/2addr v1, v3

    if-nez v1, :cond_6

    .line 105
    iget-object v1, v0, Lorg/owasp/html/aa;->cKt:Lorg/owasp/html/aa;

    .line 107
    if-eqz v1, :cond_6

    iget v3, v1, Lorg/owasp/html/aa;->cKs:I

    iget v4, p1, Lorg/owasp/html/aa;->cKr:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    .line 109
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    iget-object v3, v1, Lorg/owasp/html/aa;->cHM:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Lorg/owasp/html/N;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 111
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v0, v2, 0x1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    .line 118
    :goto_0
    const/4 v2, 0x0

    move-object v5, v2

    move v2, v1

    move-object v1, v0

    move-object v0, v5

    .line 120
    :goto_1
    iget v3, v1, Lorg/owasp/html/aa;->cKs:I

    iget v4, p1, Lorg/owasp/html/aa;->cKr:I

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 121
    iget-object v3, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKn:I

    if-ge v3, v4, :cond_0

    .line 122
    iget-object v3, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    iget-object v4, v1, Lorg/owasp/html/aa;->cHM:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/owasp/html/N;->ip(Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v3, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 125
    iget-boolean v3, v1, Lorg/owasp/html/aa;->cKq:Z

    if-eqz v3, :cond_2

    .line 126
    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v1, v0

    .line 131
    if-eqz v2, :cond_4

    .line 132
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/aa;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 135
    :cond_4
    if-eqz v1, :cond_5

    .line 136
    invoke-direct {p0, v1}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->Z(Ljava/util/List;)V

    .line 139
    :cond_5
    return-void

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method private static iC(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static iD(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 992
    sget-object v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKp:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/aa;

    .line 994
    if-eqz v0, :cond_0

    iget v0, v0, Lorg/owasp/html/aa;->cKs:I

    invoke-static {}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships;->ack()Lorg/owasp/html/aa;

    move-result-object v3

    iget v3, v3, Lorg/owasp/html/aa;->cKr:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 998
    :cond_0
    sget-object v0, Lorg/owasp/html/Z;->cJx:[I

    invoke-static {p0}, Lorg/owasp/html/HtmlTextEscapingMode;->ix(Ljava/lang/String;)Lorg/owasp/html/HtmlTextEscapingMode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/owasp/html/HtmlTextEscapingMode;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :cond_1
    move v0, v2

    .line 1009
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 999
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1000
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1001
    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 1002
    goto :goto_0

    .line 1005
    :pswitch_4
    const-string v0, "xmp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "listing"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 998
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final abZ()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    invoke-interface {v0}, Lorg/owasp/html/N;->abZ()V

    .line 68
    return-void
.end method

.method public final aca()V
    .locals 3

    .prologue
    .line 71
    iget v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKn:I

    iget-object v1, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_0

    .line 72
    iget-object v2, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/aa;

    iget-object v0, v0, Lorg/owasp/html/aa;->cHM:Ljava/lang/String;

    invoke-interface {v2, v0}, Lorg/owasp/html/N;->ip(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    invoke-interface {v0}, Lorg/owasp/html/N;->aca()V

    .line 76
    return-void
.end method

.method public final acj()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 60
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 63
    :cond_0
    iput v1, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKn:I

    .line 64
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p1}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    sget-object v1, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKp:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/aa;

    .line 83
    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKn:I

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    invoke-interface {v0, p1, p2}, Lorg/owasp/html/N;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-direct {p0, v0}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->a(Lorg/owasp/html/aa;)V

    .line 92
    iget-object v1, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKn:I

    if-ge v1, v2, :cond_2

    .line 93
    iget-object v1, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    iget-object v2, v0, Lorg/owasp/html/aa;->cHM:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lorg/owasp/html/N;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 95
    :cond_2
    iget-boolean v1, v0, Lorg/owasp/html/aa;->cHN:Z

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final io(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-gt v3, v4, :cond_0

    const-wide v4, 0x100003600L

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v3

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 235
    invoke-static {}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver$ElementContainmentRelationships;->ack()Lorg/owasp/html/aa;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->a(Lorg/owasp/html/aa;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKn:I

    if-ge v0, v1, :cond_2

    .line 239
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    invoke-interface {v0, p1}, Lorg/owasp/html/N;->io(Ljava/lang/String;)V

    .line 241
    :cond_2
    return-void

    .line 234
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final ip(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 142
    invoke-static {p1}, Lorg/owasp/html/HtmlLexer;->iu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    sget-object v0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKp:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/aa;

    .line 145
    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKn:I

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    invoke-interface {v0, p1}, Lorg/owasp/html/N;->ip(Ljava/lang/String;)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    .line 153
    invoke-static {v1}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->iC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 154
    iget-object v1, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-lt v2, v4, :cond_9

    .line 155
    iget-object v1, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/owasp/html/aa;

    .line 156
    iget-object v5, v1, Lorg/owasp/html/aa;->cHM:Ljava/lang/String;

    invoke-static {v5}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->iC(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    iget-object v0, v1, Lorg/owasp/html/aa;->cHM:Ljava/lang/String;

    move v3, v2

    move-object v4, v1

    .line 164
    :goto_1
    if-ltz v3, :cond_0

    .line 172
    iget v2, v4, Lorg/owasp/html/aa;->cKu:I

    .line 173
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-le v1, v3, :cond_3

    .line 174
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/aa;

    iget v0, v0, Lorg/owasp/html/aa;->cKv:I

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_2

    .line 179
    :cond_3
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 181
    const/4 v1, 0x0

    .line 182
    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-le v2, v3, :cond_7

    .line 183
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/aa;

    .line 184
    add-int/lit8 v5, v2, 0x1

    iget v6, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKn:I

    if-ge v5, v6, :cond_4

    .line 185
    iget-object v5, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    iget-object v6, v0, Lorg/owasp/html/aa;->cHM:Ljava/lang/String;

    invoke-interface {v5, v6}, Lorg/owasp/html/N;->ip(Ljava/lang/String;)V

    .line 187
    :cond_4
    iget-boolean v5, v0, Lorg/owasp/html/aa;->cKq:Z

    if-eqz v5, :cond_6

    .line 188
    if-nez v1, :cond_5

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v0, v2

    .line 193
    goto :goto_3

    .line 194
    :cond_7
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKn:I

    if-ge v0, v2, :cond_8

    .line 195
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKm:Lorg/owasp/html/N;

    iget-object v2, v4, Lorg/owasp/html/aa;->cHM:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/owasp/html/N;->ip(Ljava/lang/String;)V

    .line 197
    :cond_8
    iget-object v0, p0, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->cKo:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 198
    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0, v1}, Lorg/owasp/html/TagBalancingHtmlStreamEventReceiver;->Z(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_9
    move-object v4, v0

    goto :goto_1
.end method

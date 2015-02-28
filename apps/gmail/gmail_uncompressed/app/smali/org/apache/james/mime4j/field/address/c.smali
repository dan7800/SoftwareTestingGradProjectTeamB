.class final Lorg/apache/james/mime4j/field/address/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cEs:Lorg/apache/james/mime4j/field/address/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/apache/james/mime4j/field/address/c;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/c;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/c;->cEs:Lorg/apache/james/mime4j/field/address/c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method

.method private a(Lorg/apache/james/mime4j/field/address/parser/t;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/t;->cFy:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 193
    iget-object v1, p1, Lorg/apache/james/mime4j/field/address/parser/t;->cFz:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 194
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    :cond_0
    :goto_0
    if-eq v0, v1, :cond_1

    .line 197
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/u;->cGa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/u;->cGb:Lorg/apache/james/mime4j/field/address/parser/u;

    .line 199
    if-nez p2, :cond_0

    .line 200
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/u;->cGc:Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {p0, v2, v3}, Lorg/apache/james/mime4j/field/address/c;->a(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/u;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, v1, Lorg/apache/james/mime4j/field/address/parser/u;->cGa:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/apache/james/mime4j/field/address/e;Lorg/apache/james/mime4j/field/address/parser/a;)Lorg/apache/james/mime4j/field/address/g;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 184
    new-instance v1, Lorg/apache/james/mime4j/field/address/d;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/field/address/d;-><init>(Lorg/apache/james/mime4j/field/address/parser/t;)V

    .line 185
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/g;

    invoke-direct {p0, v0, v3}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/parser/t;Z)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/e;

    invoke-direct {p0, v0, v3}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/parser/t;Z)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Lorg/apache/james/mime4j/field/address/g;

    invoke-direct {v1, p1, v2, v0}, Lorg/apache/james/mime4j/field/address/g;-><init>(Lorg/apache/james/mime4j/field/address/e;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Lorg/apache/james/mime4j/field/address/parser/d;)Lorg/apache/james/mime4j/field/address/g;
    .locals 5

    .prologue
    .line 149
    new-instance v2, Lorg/apache/james/mime4j/field/address/d;

    invoke-direct {v2, p1}, Lorg/apache/james/mime4j/field/address/d;-><init>(Lorg/apache/james/mime4j/field/address/parser/t;)V

    .line 150
    const/4 v1, 0x0

    .line 151
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    .line 152
    instance-of v3, v0, Lorg/apache/james/mime4j/field/address/parser/k;

    if-eqz v3, :cond_3

    .line 153
    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/k;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/k;->abm()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lorg/apache/james/mime4j/field/address/d;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/d;-><init>(Lorg/apache/james/mime4j/field/address/parser/t;)V

    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    instance-of v4, v0, Lorg/apache/james/mime4j/field/address/parser/e;

    if-eqz v4, :cond_0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/e;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/parser/t;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v1, Lorg/apache/james/mime4j/field/address/e;

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/e;-><init>(Ljava/util/ArrayList;)V

    .line 154
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    .line 161
    :cond_2
    instance-of v2, v0, Lorg/apache/james/mime4j/field/address/parser/a;

    if-eqz v2, :cond_4

    .line 162
    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/a;

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/e;Lorg/apache/james/mime4j/field/address/parser/a;)Lorg/apache/james/mime4j/field/address/g;

    move-result-object v0

    return-object v0

    .line 156
    :cond_3
    instance-of v2, v0, Lorg/apache/james/mime4j/field/address/parser/a;

    if-nez v2, :cond_2

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 164
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private a(Lorg/apache/james/mime4j/field/address/parser/f;)Lorg/apache/james/mime4j/field/address/h;
    .locals 5

    .prologue
    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v3, Lorg/apache/james/mime4j/field/address/d;

    invoke-direct {v3, p1}, Lorg/apache/james/mime4j/field/address/d;-><init>(Lorg/apache/james/mime4j/field/address/parser/t;)V

    .line 100
    :goto_0
    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    .line 102
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/h;

    if-eqz v1, :cond_5

    .line 103
    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/h;

    new-instance v1, Lorg/apache/james/mime4j/field/address/d;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/d;-><init>(Lorg/apache/james/mime4j/field/address/parser/t;)V

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/a;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/a;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/e;Lorg/apache/james/mime4j/field/address/parser/a;)Lorg/apache/james/mime4j/field/address/g;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/d;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/d;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/parser/d;)Lorg/apache/james/mime4j/field/address/g;

    move-result-object v0

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/i;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/i;

    new-instance v1, Lorg/apache/james/mime4j/field/address/d;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/d;-><init>(Lorg/apache/james/mime4j/field/address/parser/t;)V

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    instance-of v4, v0, Lorg/apache/james/mime4j/field/address/parser/j;

    if-eqz v4, :cond_2

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/j;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/parser/t;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/d;

    if-eqz v1, :cond_3

    invoke-static {v4}, Lorg/apache/james/mime4j/a/c;->hV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lorg/apache/james/mime4j/field/address/i;

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/d;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/parser/d;)Lorg/apache/james/mime4j/field/address/g;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lorg/apache/james/mime4j/field/address/i;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/g;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 106
    :cond_6
    new-instance v0, Lorg/apache/james/mime4j/field/address/h;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lorg/apache/james/mime4j/field/address/h;-><init>(Ljava/util/ArrayList;Z)V

    return-object v0
.end method

.method private a(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/u;)V
    .locals 1

    .prologue
    .line 208
    if-eqz p2, :cond_0

    .line 209
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/u;->cGc:Lorg/apache/james/mime4j/field/address/parser/u;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/c;->a(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/u;)V

    .line 210
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/u;->cGa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :cond_0
    return-void
.end method

.method public static aaJ()Lorg/apache/james/mime4j/field/address/c;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/apache/james/mime4j/field/address/c;->cEs:Lorg/apache/james/mime4j/field/address/c;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/apache/james/mime4j/field/address/parser/c;)Lorg/apache/james/mime4j/field/address/b;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 59
    :goto_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/c;->abm()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 60
    invoke-virtual {p1, v1}, Lorg/apache/james/mime4j/field/address/parser/c;->fZ(I)Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/b;

    .line 61
    new-instance v3, Lorg/apache/james/mime4j/field/address/d;

    invoke-direct {v3, v0}, Lorg/apache/james/mime4j/field/address/d;-><init>(Lorg/apache/james/mime4j/field/address/parser/t;)V

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    instance-of v5, v0, Lorg/apache/james/mime4j/field/address/parser/a;

    if-eqz v5, :cond_0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/a;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/e;Lorg/apache/james/mime4j/field/address/parser/a;)Lorg/apache/james/mime4j/field/address/g;

    move-result-object v0

    .line 62
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 61
    :cond_0
    instance-of v5, v0, Lorg/apache/james/mime4j/field/address/parser/d;

    if-eqz v5, :cond_1

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/d;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/parser/d;)Lorg/apache/james/mime4j/field/address/g;

    move-result-object v0

    goto :goto_1

    :cond_1
    instance-of v5, v0, Lorg/apache/james/mime4j/field/address/parser/j;

    if-eqz v5, :cond_4

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/j;

    invoke-direct {p0, v0, v2}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/parser/t;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/d;->aaK()Lorg/apache/james/mime4j/field/address/parser/r;

    move-result-object v0

    instance-of v3, v0, Lorg/apache/james/mime4j/field/address/parser/f;

    if-eqz v3, :cond_2

    new-instance v3, Lorg/apache/james/mime4j/field/address/f;

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/f;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/parser/f;)Lorg/apache/james/mime4j/field/address/h;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Lorg/apache/james/mime4j/field/address/f;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/h;)V

    move-object v0, v3

    goto :goto_1

    :cond_2
    instance-of v3, v0, Lorg/apache/james/mime4j/field/address/parser/d;

    if-eqz v3, :cond_3

    invoke-static {v5}, Lorg/apache/james/mime4j/a/c;->hV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Lorg/apache/james/mime4j/field/address/i;

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/d;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/c;->a(Lorg/apache/james/mime4j/field/address/parser/d;)Lorg/apache/james/mime4j/field/address/g;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Lorg/apache/james/mime4j/field/address/i;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/g;)V

    move-object v0, v3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 64
    :cond_5
    new-instance v0, Lorg/apache/james/mime4j/field/address/b;

    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/address/b;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

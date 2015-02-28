.class public final Lcom/google/api/client/http/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cwW:Ljava/util/regex/Pattern;

.field private static final cwX:Ljava/util/regex/Pattern;

.field private static final cwY:Ljava/util/regex/Pattern;

.field private static final cwZ:Ljava/util/regex/Pattern;


# instance fields
.field private cxa:Ljava/lang/String;

.field private final cxb:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cxc:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 69
    const-string v0, "[\\w!#$&.+\\-\\^_]+|[*]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/s;->cwW:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/s;->cwX:Ljava/util/regex/Pattern;

    .line 79
    const-string v0, "[^\\s/=;\"]+"

    .line 80
    const-string v1, ";.*"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\s*("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")/("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\\s*("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/google/api/client/http/s;->cwY:Ljava/util/regex/Pattern;

    .line 88
    const-string v1, "\"([^\"]*)\""

    .line 89
    const-string v2, "[^\\s;\"]*"

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\s*;\\s*("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/s;->cwZ:Ljava/util/regex/Pattern;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "application"

    iput-object v0, p0, Lcom/google/api/client/http/s;->type:Ljava/lang/String;

    .line 57
    const-string v0, "octet-stream"

    iput-object v0, p0, Lcom/google/api/client/http/s;->cxa:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/s;->cxb:Ljava/util/SortedMap;

    .line 111
    invoke-direct {p0, p1}, Lcom/google/api/client/http/s;->hn(Ljava/lang/String;)Lcom/google/api/client/http/s;

    .line 112
    return-void
.end method

.method private a(Lcom/google/api/client/http/s;)Z
    .locals 2

    .prologue
    .line 292
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/api/client/http/s;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/api/client/http/s;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/http/s;->cxa:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/api/client/http/s;->cxa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 302
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/api/client/http/s;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/s;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/api/client/http/s;

    invoke-direct {v1, p1}, Lcom/google/api/client/http/s;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/api/client/http/s;->a(Lcom/google/api/client/http/s;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hn(Ljava/lang/String;)Lcom/google/api/client/http/s;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 166
    sget-object v0, Lcom/google/api/client/http/s;->cwY:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Type must be in the \'maintype/subtype; parameter=value\' format"

    invoke-static {v1, v2}, Lcom/google/api/client/util/H;->c(ZLjava/lang/Object;)V

    .line 170
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/http/s;->cwW:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "Type contains reserved characters"

    invoke-static {v2, v3}, Lcom/google/api/client/util/H;->c(ZLjava/lang/Object;)V

    iput-object v1, p0, Lcom/google/api/client/http/s;->type:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/api/client/http/s;->cxc:Ljava/lang/String;

    .line 171
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/http/s;->cwW:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "Subtype contains reserved characters"

    invoke-static {v2, v3}, Lcom/google/api/client/util/H;->c(ZLjava/lang/Object;)V

    iput-object v1, p0, Lcom/google/api/client/http/s;->cxa:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/api/client/http/s;->cxc:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_1

    .line 174
    sget-object v1, Lcom/google/api/client/http/s;->cwZ:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 175
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    .line 180
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/google/api/client/http/s;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/s;

    goto :goto_0

    .line 185
    :cond_1
    return-object p0
.end method

.method static ho(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/google/api/client/http/s;->cwX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final Xn()Ljava/lang/String;
    .locals 5

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/api/client/http/s;->cxc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/api/client/http/s;->cxc:Ljava/lang/String;

    .line 279
    :goto_0
    return-object v0

    .line 265
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    iget-object v0, p0, Lcom/google/api/client/http/s;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    iget-object v0, p0, Lcom/google/api/client/http/s;->cxa:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v0, p0, Lcom/google/api/client/http/s;->cxb:Ljava/util/SortedMap;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/google/api/client/http/s;->cxb:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {v1}, Lcom/google/api/client/http/s;->ho(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v4, "\\\""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 278
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/s;->cxc:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/google/api/client/http/s;->cxc:Ljava/lang/String;

    goto :goto_0
.end method

.method public final Xx()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 320
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/s;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/nio/charset/Charset;)Lcom/google/api/client/http/s;
    .locals 2

    .prologue
    .line 312
    const-string v1, "charset"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/api/client/http/s;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/s;

    .line 313
    return-object p0

    .line 312
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final ax(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/s;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    if-nez p2, :cond_0

    .line 196
    iput-object v2, p0, Lcom/google/api/client/http/s;->cxc:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/api/client/http/s;->cxb:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_0
    return-object p0

    .line 200
    :cond_0
    sget-object v0, Lcom/google/api/client/http/s;->cwX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Name contains reserved characters"

    invoke-static {v0, v1}, Lcom/google/api/client/util/H;->c(ZLjava/lang/Object;)V

    .line 202
    iput-object v2, p0, Lcom/google/api/client/http/s;->cxc:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/google/api/client/http/s;->cxb:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 331
    instance-of v1, p1, Lcom/google/api/client/http/s;

    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    check-cast p1, Lcom/google/api/client/http/s;

    .line 337
    invoke-direct {p0, p1}, Lcom/google/api/client/http/s;->a(Lcom/google/api/client/http/s;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/api/client/http/s;->cxb:Ljava/util/SortedMap;

    iget-object v2, p1, Lcom/google/api/client/http/s;->cxb:Ljava/util/SortedMap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/api/client/http/s;->cxb:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/api/client/http/s;->Xn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/api/client/http/s;->Xn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

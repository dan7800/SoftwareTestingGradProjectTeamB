.class public Lorg/apache/james/mime4j/field/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/james/mime4j/field/l;


# static fields
.field private static cDh:Lorg/apache/james/mime4j/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lorg/apache/james/mime4j/f;

    invoke-direct {v0}, Lorg/apache/james/mime4j/f;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/f;->cDh:Lorg/apache/james/mime4j/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 212
    .line 213
    const-string v1, ""

    .line 216
    new-instance v2, Lorg/apache/james/mime4j/field/contenttype/parser/a;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/a;-><init>(Ljava/io/Reader;)V

    .line 218
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->abq()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    .line 234
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->getType()Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->abn()Ljava/lang/String;

    move-result-object v4

    .line 237
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->abn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->abo()Ljava/util/ArrayList;

    move-result-object v3

    .line 241
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/a;->abp()Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 243
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 244
    const/4 v2, 0x0

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 245
    if-nez v0, :cond_1

    .line 246
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-double v8, v7

    const-wide v10, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    double-to-int v7, v8

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    .line 247
    :goto_2
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 248
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 244
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v5

    goto :goto_1

    .line 220
    :catch_0
    move-exception v6

    .line 221
    sget-object v3, Lorg/apache/james/mime4j/field/f;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isDebugEnabled()Z

    goto :goto_0

    .line 226
    :catch_1
    move-exception v3

    .line 227
    sget-object v4, Lorg/apache/james/mime4j/field/f;->cDh:Lorg/apache/james/mime4j/f;

    invoke-static {}, Lorg/apache/james/mime4j/f;->isDebugEnabled()Z

    .line 228
    new-instance v6, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    move-object v5, v0

    move-object v4, v1

    .line 256
    :goto_3
    new-instance v0, Lorg/apache/james/mime4j/field/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/field/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;)V

    return-object v0

    :catch_2
    move-exception v2

    move-object v5, v0

    move-object v4, v1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v4, v1

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v5, v0

    move-object v4, v1

    goto :goto_3

    :cond_1
    move-object v5, v0

    goto :goto_2
.end method

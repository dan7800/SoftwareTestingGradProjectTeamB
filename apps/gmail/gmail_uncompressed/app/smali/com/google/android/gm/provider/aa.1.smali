.class public final Lcom/google/android/gm/provider/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aaL:I

.field private bcJ:Landroid/database/sqlite/SQLiteDatabase;

.field private bht:Z

.field private bhu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bhv:Landroid/database/sqlite/SQLiteQueryBuilder;

.field private bhw:Z

.field private eN:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/aa;->bhv:Landroid/database/sqlite/SQLiteQueryBuilder;

    .line 43
    iput-object p2, p0, Lcom/google/android/gm/provider/aa;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    iput-object p3, p0, Lcom/google/android/gm/provider/aa;->eN:[Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/google/android/gm/provider/aa;->bhv:Landroid/database/sqlite/SQLiteQueryBuilder;

    const-string v1, "labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gm/provider/aa;->bhv:Landroid/database/sqlite/SQLiteQueryBuilder;

    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->bjk:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 47
    const-string v0, "name"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p3, v0, v1}, Lcom/google/android/gm/provider/bw;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->n([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/aa;->bhu:Ljava/util/List;

    .line 51
    const-string v0, "( canonicalName != \'\' OR name != \'\' )"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/aa;->v(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method private v(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/gm/provider/aa;->bht:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/android/gm/provider/aa;->bhv:Landroid/database/sqlite/SQLiteQueryBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/provider/aa;->bhv:Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 172
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aa;->bht:Z

    goto :goto_0
.end method


# virtual methods
.method public final F(Ljava/util/List;)Lcom/google/android/gm/provider/aa;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gm/provider/aa;"
        }
    .end annotation

    .prologue
    .line 58
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    if-eqz v1, :cond_0

    .line 63
    const-string v1, "canonicalName IN ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const/4 v1, 0x0

    .line 68
    :goto_1
    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v4, p0, Lcom/google/android/gm/provider/aa;->bhu:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 71
    :cond_1
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/aa;->v(Ljava/lang/CharSequence;)V

    .line 74
    :cond_2
    return-object p0
.end method

.method public final Fl()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/google/android/gm/provider/aa;->bhu:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gm/provider/aa;->bhu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/google/android/gm/provider/aa;->bhv:Landroid/database/sqlite/SQLiteQueryBuilder;

    iget-object v1, p0, Lcom/google/android/gm/provider/aa;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/gm/provider/aa;->eN:[Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gm/provider/aa;->bhw:Z

    if-eqz v5, :cond_0

    const-string v7, "lastTouched DESC"

    :goto_0
    iget v5, p0, Lcom/google/android/gm/provider/aa;->aaL:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/google/android/gm/provider/aa;->aaL:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    :goto_1
    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v7, "systemLabel DESC, sortOrder ASC"

    goto :goto_0

    :cond_1
    move-object v8, v3

    goto :goto_1
.end method

.method public final al(J)Lcom/google/android/gm/provider/aa;
    .locals 3

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "_id = ?"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/aa;->v(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/gm/provider/aa;->bhu:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-object p0
.end method

.method public final am(J)Lcom/google/android/gm/provider/aa;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gm/provider/aa;->bhv:Landroid/database/sqlite/SQLiteQueryBuilder;

    const-string v1, "labels, conversation_labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 125
    const-string v0, "labels._id = conversation_labels.labels_id AND\n        conversation_labels.isZombie = 0 AND\n        conversation_labels.queryId = 0 AND\n        conversation_labels.conversation_id = ?"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/aa;->v(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/gm/provider/aa;->bhu:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-object p0
.end method

.method public final bU(Z)Lcom/google/android/gm/provider/aa;
    .locals 1

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    const-string v0, "hidden = 0"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/aa;->v(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    return-object p0
.end method

.method public final g(JI)Lcom/google/android/gm/provider/aa;
    .locals 3

    .prologue
    .line 107
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lastTouched"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    const-string v1, " != 0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "lastTouched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, " < ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lcom/google/android/gm/provider/aa;->bhu:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iput p3, p0, Lcom/google/android/gm/provider/aa;->aaL:I

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/aa;->v(Ljava/lang/CharSequence;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/aa;->bhw:Z

    .line 117
    :cond_0
    return-object p0
.end method

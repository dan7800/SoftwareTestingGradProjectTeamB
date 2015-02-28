.class public Lcom/android/mail/b/l;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/android/mail/b/m;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final GD:Lcom/android/a/a;

.field private final Hb:Landroid/content/ContentResolver;

.field private final akP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/mail/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private final akQ:Lcom/android/mail/b/j;


# direct methods
.method public constructor <init>(Ljava/util/Set;Landroid/content/ContentResolver;Lcom/android/a/a;Lcom/android/mail/b/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/mail/b/i;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Lcom/android/a/a;",
            "Lcom/android/mail/b/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/android/mail/b/l;->akP:Ljava/util/Set;

    .line 169
    iput-object p2, p0, Lcom/android/mail/b/l;->Hb:Landroid/content/ContentResolver;

    .line 170
    iput-object p3, p0, Lcom/android/mail/b/l;->GD:Lcom/android/a/a;

    .line 171
    iput-object p4, p0, Lcom/android/mail/b/l;->akQ:Lcom/android/mail/b/j;

    .line 172
    return-void
.end method


# virtual methods
.method protected d(Ljava/util/Set;)Lcom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/mail/b/l;->Hb:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 248
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/b/l;->Hb:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/mail/j;->a(Landroid/content/ContentResolver;Ljava/util/Set;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    const/16 v3, 0x60

    const/4 v11, 0x0

    const/16 v2, 0x30

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 158
    const-string v0, "set up"

    invoke-static {v0}, Lcom/android/ex/photo/util/f;->beginSection(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/mail/b/l;->akP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lcom/android/mail/b/l;->akP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/b/i;

    iget-object v0, v0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    invoke-virtual {v0}, Lcom/android/mail/b/h;->hQ()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/ex/photo/util/f;->endSection()V

    const-string v0, "load contact photo bytes"

    invoke-static {v0}, Lcom/android/ex/photo/util/f;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/mail/b/l;->d(Ljava/util/Set;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    invoke-static {}, Lcom/android/ex/photo/util/f;->endSection()V

    iget-object v0, p0, Lcom/android/mail/b/l;->akP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/b/i;

    const-string v1, "decode"

    invoke-static {v1}, Lcom/android/ex/photo/util/f;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    invoke-virtual {v1}, Lcom/android/mail/b/h;->hQ()Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_1

    invoke-static {}, Lcom/android/mail/b/j;->oA()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ContactResolver -- failed  %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-static {v1, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v1, v10, [Lcom/android/mail/b/m;

    new-instance v4, Lcom/android/mail/b/m;

    invoke-direct {v4, v0, v11, v9}, Lcom/android/mail/b/m;-><init>(Lcom/android/mail/b/i;Lcom/android/a/i;B)V

    aput-object v4, v1, v9

    invoke-virtual {p0, v1}, Lcom/android/mail/b/l;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/ex/photo/util/f;->endSection()V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/a;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/mail/b/j;->oA()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContactResolver  = skipped %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v0, v1, v7}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Lcom/android/ex/photo/util/f;->endSection()V

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/android/mail/a;->ajP:[B

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mail/b/j;->oA()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ContactResolver -- failed  %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-static {v1, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-array v1, v10, [Lcom/android/mail/b/m;

    new-instance v4, Lcom/android/mail/b/m;

    invoke-direct {v4, v0, v11, v9}, Lcom/android/mail/b/m;-><init>(Lcom/android/mail/b/i;Lcom/android/a/i;B)V

    aput-object v4, v1, v9

    invoke-virtual {p0, v1}, Lcom/android/mail/b/l;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/ex/photo/util/f;->endSection()V

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    iput-object v1, v7, Lcom/android/mail/b/h;->akI:[B

    invoke-static {}, Lcom/android/mail/b/j;->oA()Ljava/lang/String;

    move-result-object v1

    const-string v7, "ContactResolver ++ found   %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-static {v1, v7, v8}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/android/mail/b/i;->akK:Lcom/android/mail/b/k;

    invoke-interface {v1}, Lcom/android/mail/b/k;->ot()I

    move-result v1

    if-lt v2, v1, :cond_4

    move v1, v2

    :goto_2
    iget-object v4, v0, Lcom/android/mail/b/i;->akK:Lcom/android/mail/b/k;

    invoke-interface {v4}, Lcom/android/mail/b/k;->ou()I

    move-result v4

    if-lt v2, v4, :cond_5

    move v4, v2

    :goto_3
    new-instance v7, Lcom/android/a/d;

    invoke-direct {v7, v1, v4}, Lcom/android/a/d;-><init>(II)V

    new-instance v1, Lcom/android/a/b;

    iget-object v4, v0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    iget-object v8, p0, Lcom/android/mail/b/l;->GD:Lcom/android/a/a;

    invoke-direct {v1, v4, v7, v8}, Lcom/android/a/b;-><init>(Lcom/android/a/g;Lcom/android/a/d;Lcom/android/a/a;)V

    invoke-virtual {v1}, Lcom/android/a/b;->fT()Lcom/android/a/i;

    move-result-object v1

    iget-object v4, v0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    iput-object v11, v4, Lcom/android/mail/b/h;->akI:[B

    new-array v4, v10, [Lcom/android/mail/b/m;

    new-instance v7, Lcom/android/mail/b/m;

    invoke-direct {v7, v0, v1, v9}, Lcom/android/mail/b/m;-><init>(Lcom/android/mail/b/i;Lcom/android/a/i;B)V

    aput-object v7, v4, v9

    invoke-virtual {p0, v4}, Lcom/android/mail/b/l;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/ex/photo/util/f;->endSection()V

    goto/16 :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_3

    :cond_6
    return-object v11
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/mail/b/l;->akQ:Lcom/android/mail/b/j;

    invoke-static {v0}, Lcom/android/mail/b/j;->b(Lcom/android/mail/b/j;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 158
    check-cast p1, [Lcom/android/mail/b/m;

    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/android/mail/b/m;->akR:Lcom/android/mail/b/i;

    aget-object v1, p1, v1

    iget-object v1, v1, Lcom/android/mail/b/m;->akS:Lcom/android/a/i;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/mail/b/l;->GD:Lcom/android/a/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mail/b/l;->GD:Lcom/android/a/a;

    iget-object v3, v0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/a/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lcom/android/mail/b/i;->akK:Lcom/android/mail/b/k;

    iget-object v0, v0, Lcom/android/mail/b/i;->akJ:Lcom/android/mail/b/h;

    invoke-interface {v2, v0, v1}, Lcom/android/mail/b/k;->b(Lcom/android/a/g;Lcom/android/a/i;)V

    return-void
.end method

.class public final Lcom/google/android/gms/b/d;
.super Lcom/android/ex/chips/a;
.source "SourceFile"


# instance fields
.field private ace:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bBE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation
.end field

.field private final bbm:Lcom/google/android/gms/common/api/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/b/b;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/ex/chips/a;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/google/android/gms/b/d;->a(Landroid/accounts/Account;)V

    .line 65
    iput-object p3, p0, Lcom/google/android/gms/b/d;->bbm:Lcom/google/android/gms/common/api/n;

    .line 66
    invoke-virtual {p0, p4}, Lcom/google/android/gms/b/d;->a(Lcom/android/ex/chips/q;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/d;)Lcom/google/android/gms/common/api/n;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/b/d;->bbm:Lcom/google/android/gms/common/api/n;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/b/d;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gms/b/d;->aci:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/b/d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gms/b/d;->bBE:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/b/d;Ljava/util/Set;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/d;->b(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/b/d;II)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/b/d;->D(II)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/d;Ljava/lang/CharSequence;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/b/d;->a(Ljava/lang/CharSequence;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/b/d;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/gms/b/d;->ace:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/b/d;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/b/d;->mp()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/b/d;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/d;->h(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/b/d;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/b/d;->mp()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/b/d;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/gms/b/d;->h(Ljava/util/List;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/b/d;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/b/d;->mp()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/b/d;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/gms/b/d;->aca:I

    return v0
.end method


# virtual methods
.method protected final a(Lcom/android/ex/chips/i;Z)V
    .locals 12

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gms/b/d;->bBE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/b/d;->aca:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/b/d;->ace:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/ex/chips/i;->acz:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/b/d;->ace:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/ex/chips/i;->acz:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p1, Lcom/android/ex/chips/i;->acv:Ljava/lang/String;

    iget v1, p1, Lcom/android/ex/chips/i;->acG:I

    iget-object v2, p1, Lcom/android/ex/chips/i;->acz:Ljava/lang/String;

    iget v3, p1, Lcom/android/ex/chips/i;->acA:I

    iget-object v4, p1, Lcom/android/ex/chips/i;->acB:Ljava/lang/String;

    iget-wide v5, p1, Lcom/android/ex/chips/i;->acC:J

    iget-object v7, p1, Lcom/android/ex/chips/i;->acD:Ljava/lang/Long;

    iget-wide v8, p1, Lcom/android/ex/chips/i;->acE:J

    iget-object v10, p1, Lcom/android/ex/chips/i;->acF:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/ex/chips/i;->acH:Ljava/lang/String;

    invoke-static/range {v0 .. v11}, Lcom/android/ex/chips/ae;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;Ljava/lang/String;)Lcom/android/ex/chips/ae;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/google/android/gms/b/d;->bBE:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0}, Lcom/google/android/gms/b/d;->mm()Lcom/android/ex/chips/q;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/android/ex/chips/q;->b(Lcom/android/ex/chips/ae;Lcom/android/ex/chips/r;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;Lcom/android/ex/chips/H;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/ex/chips/H;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v4, 0x0

    .line 247
    const/16 v0, 0x32

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 249
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v1, v4

    .line 250
    :goto_0
    if-ge v1, v3, :cond_1

    .line 251
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 252
    array-length v5, v0

    if-lez v5, :cond_0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 255
    :cond_1
    const-string v0, "GmsRecipientAdapter"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    const-string v0, "GmsRecipientAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Doing reverse lookup for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/gms/b/d;->mr()Landroid/accounts/Account;

    move-result-object v3

    .line 261
    new-instance v0, Lcom/google/android/gms/people/c;

    invoke-direct {v0}, Lcom/google/android/gms/people/c;-><init>()V

    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/people/c;->gy(Ljava/lang/String;)Lcom/google/android/gms/people/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/c;->UJ()Lcom/google/android/gms/people/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/c;->UK()Lcom/google/android/gms/people/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/people/c;->UL()Lcom/google/android/gms/people/b;

    move-result-object v5

    .line 269
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    sget-object v7, Lcom/google/android/gms/people/q;->cgM:Lcom/google/android/gms/people/a;

    iget-object v8, p0, Lcom/google/android/gms/b/d;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v7, v8, v0, v5}, Lcom/google/android/gms/people/a;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/people/b;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    .line 272
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v7}, Lcom/google/android/gms/common/api/r;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/t;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/d;

    .line 275
    invoke-interface {v0}, Lcom/google/android/gms/people/d;->Jk()Lcom/google/android/gms/common/api/Status;

    move-result-object v7

    .line 276
    invoke-interface {v0}, Lcom/google/android/gms/people/d;->Sb()Lcom/google/android/gms/people/model/a;

    move-result-object v8

    .line 277
    const-string v0, "GmsRecipientAdapter"

    invoke-static {v0, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    const-string v0, "GmsRecipientAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Autocomplete list loaded: status="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " list="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_4
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v9, 0xf

    if-ne v0, v9, :cond_5

    .line 282
    const-string v0, "GmsRecipientAdapter"

    const-string v9, "Autocomplete query timed out."

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_5
    invoke-virtual {v7}, Lcom/google/android/gms/common/api/Status;->Kk()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/common/data/b;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 287
    invoke-virtual {v8, v4}, Lcom/google/android/gms/common/data/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/model/b;

    .line 288
    invoke-interface {v0}, Lcom/google/android/gms/people/model/b;->RV()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/google/android/gms/b/g;

    invoke-direct {v9, v0}, Lcom/google/android/gms/b/g;-><init>(Lcom/google/android/gms/people/model/b;)V

    invoke-interface {v1, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_6
    if-eqz v8, :cond_3

    .line 292
    invoke-virtual {v8}, Lcom/google/android/gms/common/data/b;->close()V

    goto :goto_2

    .line 297
    :cond_7
    invoke-interface {p2, v1}, Lcom/android/ex/chips/H;->b(Ljava/util/Map;)V

    .line 299
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 302
    invoke-virtual {p0}, Lcom/google/android/gms/b/d;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/ex/chips/F;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Landroid/accounts/Account;Ljava/util/Set;Lcom/android/ex/chips/H;)V

    .line 306
    invoke-static {v4, p2}, Lcom/android/ex/chips/F;->a(Ljava/util/Set;Lcom/android/ex/chips/H;)V

    .line 309
    return-void
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/gms/b/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/e;-><init>(Lcom/google/android/gms/b/d;)V

    return-object v0
.end method

.method public final mn()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method protected final mo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/gms/b/d;->bBE:Ljava/util/List;

    return-object v0
.end method

.class public final Lcom/android/mail/ui/cN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aML:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Nc:Lcom/android/mail/providers/Account;

.field private final aMK:Lcom/android/mail/utils/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/utils/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/ui/cQ;",
            ">;"
        }
    .end annotation
.end field

.field private final atL:Lcom/android/mail/providers/d;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/android/mail/ui/cP;

    invoke-direct {v0}, Lcom/android/mail/ui/cP;-><init>()V

    sput-object v0, Lcom/android/mail/ui/cN;->aML:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    .line 71
    new-instance v0, Lcom/android/mail/ui/cO;

    invoke-direct {v0, p0}, Lcom/android/mail/ui/cO;-><init>(Lcom/android/mail/ui/cN;)V

    iput-object v0, p0, Lcom/android/mail/ui/cN;->atL:Lcom/android/mail/providers/d;

    .line 132
    new-instance v0, Lcom/android/mail/utils/LruCache;

    invoke-direct {v0}, Lcom/android/mail/utils/LruCache;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/cN;->aMK:Lcom/android/mail/utils/LruCache;

    .line 134
    iput-object p1, p0, Lcom/android/mail/ui/cN;->mContext:Landroid/content/Context;

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/cN;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mail/ui/cN;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/android/mail/ui/cN;Lcom/android/mail/providers/Account;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cN;->v(Lcom/android/mail/providers/Account;)V

    return-void
.end method

.method private v(Lcom/android/mail/providers/Account;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, p1}, Lcom/android/mail/providers/Account;->j(Lcom/android/mail/providers/Account;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 154
    :goto_0
    iput-object p1, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    .line 156
    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/mail/ui/cN;->aMK:Lcom/android/mail/utils/LruCache;

    invoke-virtual {v0}, Lcom/android/mail/utils/LruCache;->clear()V

    .line 159
    :cond_1
    return-void

    .line 153
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Account;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v0, p2}, Lcom/android/mail/providers/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    if-eqz p2, :cond_3

    .line 197
    invoke-direct {p0, p2}, Lcom/android/mail/ui/cN;->v(Lcom/android/mail/providers/Account;)V

    .line 204
    :cond_1
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->uQ()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->cA(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    :cond_2
    const-string v0, "RecentFolderList"

    const-string v1, "Not touching recent folder because it\'s provider or search folder"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    :goto_0
    return-void

    .line 199
    :cond_3
    const-string v0, "RecentFolderList"

    const-string v1, "No account set for setting recent folders?"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 209
    :cond_4
    new-instance v0, Lcom/android/mail/ui/cQ;

    invoke-direct {v0, p1}, Lcom/android/mail/ui/cQ;-><init>(Lcom/android/mail/providers/Folder;)V

    .line 210
    iget-object v1, p0, Lcom/android/mail/ui/cN;->aMK:Lcom/android/mail/utils/LruCache;

    iget-object v2, p1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v2, v2, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/utils/LruCache;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    new-instance v0, Lcom/android/mail/ui/cR;

    iget-object v1, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/mail/ui/cR;-><init>(Lcom/android/mail/ui/cN;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cR;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final d(Lcom/android/mail/ui/as;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mail/ui/cN;->atL:Lcom/android/mail/providers/d;

    invoke-interface {p1}, Lcom/android/mail/ui/as;->yd()Lcom/android/mail/ui/O;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/d;->a(Lcom/android/mail/ui/O;)Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/cN;->v(Lcom/android/mail/providers/Account;)V

    .line 143
    return-void
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/mail/ui/cN;->atL:Lcom/android/mail/providers/d;

    invoke-virtual {v0}, Lcom/android/mail/providers/d;->um()V

    .line 257
    return-void
.end method

.method public final f(Lcom/android/mail/c/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/c/b",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    iget-object v0, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 167
    :cond_0
    const-string v0, "RecentFolderList"

    const-string v1, "RecentFolderList.loadFromUiProvider: bad input. mAccount=%s,cursor=%s"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v0, "RecentFolderList"

    const-string v1, "Number of recents = %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mail/c/b;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 172
    invoke-virtual {p1}, Lcom/android/mail/c/b;->moveToLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    const-string v0, "RecentFolderList"

    const-string v1, "Not able to move to last in recent labels cursor"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p1}, Lcom/android/mail/c/b;->sW()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 181
    new-instance v1, Lcom/android/mail/ui/cQ;

    invoke-direct {v1, v0}, Lcom/android/mail/ui/cQ;-><init>(Lcom/android/mail/providers/Folder;)V

    .line 182
    iget-object v2, p0, Lcom/android/mail/ui/cN;->aMK:Lcom/android/mail/utils/LruCache;

    iget-object v3, v0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v3, v3, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/mail/utils/LruCache;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    const-string v1, "RecentFolderList"

    const-string v2, "Account %s, Recent: %s"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {v4}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v0, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    invoke-virtual {p1}, Lcom/android/mail/c/b;->moveToPrevious()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method public final zW()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-object v0, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/mail/utils/p;->aPi:Lcom/android/mail/utils/p;

    .line 229
    :goto_0
    sget-object v2, Lcom/android/mail/utils/p;->aPi:Lcom/android/mail/utils/p;

    invoke-virtual {v0, v2}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    iget-object v2, p0, Lcom/android/mail/ui/cN;->aMK:Lcom/android/mail/utils/LruCache;

    invoke-virtual {v2}, Lcom/android/mail/utils/LruCache;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/cQ;

    .line 238
    invoke-static {v0}, Lcom/android/mail/ui/cQ;->a(Lcom/android/mail/ui/cQ;)Lcom/android/mail/providers/Folder;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 239
    invoke-static {v0}, Lcom/android/mail/ui/cQ;->a(Lcom/android/mail/ui/cQ;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    .line 242
    :cond_3
    sget-object v0, Lcom/android/mail/ui/cN;->aML:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    return-object v2

    .line 223
    :cond_4
    new-instance v0, Lcom/android/mail/utils/p;

    iget-object v2, p0, Lcom/android/mail/ui/cN;->Nc:Lcom/android/mail/providers/Account;

    iget-object v2, v2, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    invoke-static {v2}, Lcom/android/mail/providers/Settings;->a(Lcom/android/mail/providers/Settings;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/mail/utils/p;-><init>(Landroid/net/Uri;)V

    goto :goto_0
.end method

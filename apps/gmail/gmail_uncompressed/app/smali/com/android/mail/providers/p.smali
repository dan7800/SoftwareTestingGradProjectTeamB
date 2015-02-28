.class public final Lcom/android/mail/providers/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final aAN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final aAO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private final aAP:Lcom/android/mail/ui/cS;

.field private final aAQ:Lcom/android/mail/providers/r;

.field private aAR:Lcom/android/mail/providers/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/mail/utils/E;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/mail/providers/p;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/ui/cS;Lcom/android/mail/providers/q;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/providers/p;->aAN:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mail/providers/p;->aAO:Ljava/util/Map;

    .line 51
    new-instance v0, Lcom/android/mail/providers/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mail/providers/r;-><init>(Lcom/android/mail/providers/p;B)V

    iput-object v0, p0, Lcom/android/mail/providers/p;->aAQ:Lcom/android/mail/providers/r;

    .line 72
    iput-object p1, p0, Lcom/android/mail/providers/p;->aAP:Lcom/android/mail/ui/cS;

    .line 73
    iput-object p2, p0, Lcom/android/mail/providers/p;->aAR:Lcom/android/mail/providers/q;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/android/mail/providers/p;)Lcom/android/mail/ui/cS;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mail/providers/p;->aAP:Lcom/android/mail/ui/cS;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/providers/p;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mail/providers/p;->aAO:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/providers/p;)Lcom/android/mail/providers/q;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mail/providers/p;->aAR:Lcom/android/mail/providers/q;

    return-object v0
.end method

.method private u(Landroid/net/Uri;)I
    .locals 4

    .prologue
    .line 128
    const/4 v2, -0x1

    .line 129
    iget-object v0, p0, Lcom/android/mail/providers/p;->aAN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/mail/providers/p;->aAN:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 132
    if-nez v0, :cond_0

    move v0, v1

    .line 138
    :goto_1
    if-gez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/mail/providers/p;->aAN:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/android/mail/providers/p;->aAN:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 145
    :goto_2
    return v0

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/mail/providers/p;->aAN:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a([Lcom/android/mail/providers/Account;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 82
    if-nez p1, :cond_1

    .line 103
    :cond_0
    return-void

    .line 86
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, p1, v0

    .line 88
    iget-object v4, v4, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v4, v4, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/mail/providers/p;->aAN:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 93
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 94
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/mail/providers/p;->aAN:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    iget-object v5, p0, Lcom/android/mail/providers/p;->aAP:Lcom/android/mail/ui/cS;

    invoke-interface {v5}, Lcom/android/mail/ui/cS;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    add-int/lit8 v6, v4, 0x23

    invoke-virtual {v5, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    iget-object v5, p0, Lcom/android/mail/providers/p;->aAO:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/mail/providers/p;->aAN:Ljava/util/List;

    invoke-interface {v0, v4, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 98
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 99
    iget-object v3, p0, Lcom/android/mail/providers/p;->aAN:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 100
    invoke-direct {p0, v0}, Lcom/android/mail/providers/p;->u(Landroid/net/Uri;)I

    move-result v3

    sget-object v4, Lcom/android/mail/providers/p;->mW:Ljava/lang/String;

    const-string v5, "Watching %s, at position %d."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v4, p0, Lcom/android/mail/providers/p;->aAO:Ljava/util/Map;

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mail/providers/p;->aAP:Lcom/android/mail/ui/cS;

    invoke-interface {v4}, Lcom/android/mail/ui/cS;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "FOLDER-URI"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x23

    iget-object v3, p0, Lcom/android/mail/providers/p;->aAQ:Lcom/android/mail/providers/r;

    invoke-virtual {v4, v0, v5, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2
.end method

.method public final k(Lcom/android/mail/providers/Account;)I
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/android/mail/providers/p;->l(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 190
    iget v0, v0, Lcom/android/mail/providers/Folder;->aAf:I

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l(Lcom/android/mail/providers/Account;)Lcom/android/mail/providers/Folder;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p1, Lcom/android/mail/providers/Account;->ayw:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    .line 197
    iget-object v1, p0, Lcom/android/mail/providers/p;->aAO:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/mail/providers/p;->aAO:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 199
    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

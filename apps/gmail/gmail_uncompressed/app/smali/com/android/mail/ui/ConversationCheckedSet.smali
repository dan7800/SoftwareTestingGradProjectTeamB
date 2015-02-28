.class public Lcom/android/mail/ui/ConversationCheckedSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/android/mail/ui/ConversationCheckedSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aGA:Lcom/google/common/collect/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final aGB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/mail/ui/aK;",
            ">;"
        }
    .end annotation
.end field

.field private final aGz:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private final fK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/android/mail/ui/at;

    invoke-direct {v0}, Lcom/android/mail/ui/at;-><init>()V

    sput-object v0, Lcom/android/mail/ui/ConversationCheckedSet;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    .line 70
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->Zg()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGA:Lcom/google/common/collect/k;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGB:Ljava/util/Set;

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    .line 70
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->Zg()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGA:Lcom/google/common/collect/k;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGB:Ljava/util/Set;

    .line 83
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 84
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 85
    check-cast v0, Lcom/android/mail/providers/Conversation;

    .line 86
    iget-wide v4, v0, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/mail/ui/ConversationCheckedSet;->a(Ljava/lang/Long;Lcom/android/mail/providers/Conversation;)V

    .line 84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/ConversationCheckedSet;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private a(Ljava/lang/Long;Lcom/android/mail/providers/Conversation;)V
    .locals 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .line 185
    iget-object v2, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v2, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGA:Lcom/google/common/collect/k;

    iget-object v3, p2, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/google/common/collect/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v2, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGB:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 189
    invoke-direct {p0, v2}, Lcom/android/mail/ui/ConversationCheckedSet;->g(Ljava/util/ArrayList;)V

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0, v2}, Lcom/android/mail/ui/ConversationCheckedSet;->f(Ljava/util/ArrayList;)V

    .line 193
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/Long;)Z
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/aK;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aK;

    .line 149
    invoke-interface {v0, p0}, Lcom/android/mail/ui/aK;->a(Lcom/android/mail/ui/ConversationCheckedSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private g(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/aK;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aK;

    .line 159
    invoke-interface {v0, p0}, Lcom/android/mail/ui/aK;->b(Lcom/android/mail/ui/ConversationCheckedSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private h(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/aK;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/aK;

    .line 167
    invoke-interface {v0}, Lcom/android/mail/ui/aK;->pC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private s(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGA:Lcom/google/common/collect/k;

    invoke-interface {v0}, Lcom/google/common/collect/k;->YQ()Lcom/google/common/collect/k;

    move-result-object v3

    .line 209
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 210
    iget-object v5, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-interface {v3, v0}, Lcom/google/common/collect/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 214
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGB:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 215
    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationCheckedSet;->g(Ljava/util/ArrayList;)V

    .line 216
    iget-object v3, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 217
    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationCheckedSet;->h(Ljava/util/ArrayList;)V

    .line 219
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/aK;)V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGB:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Lcom/android/mail/ui/aK;)V
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGB:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 230
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Lcom/android/mail/ui/ConversationCheckedSet;)V
    .locals 3

    .prologue
    .line 280
    if-nez p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .line 285
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 287
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGB:Ljava/util/Set;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 288
    invoke-direct {p0, v1}, Lcom/android/mail/ui/ConversationCheckedSet;->g(Ljava/util/ArrayList;)V

    .line 289
    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0, v1}, Lcom/android/mail/ui/ConversationCheckedSet;->f(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final clear()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 108
    iget-object v2, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGA:Lcom/google/common/collect/k;

    invoke-interface {v2}, Lcom/google/common/collect/k;->clear()V

    .line 110
    iget-object v2, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGB:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->f(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationCheckedSet;->g(Ljava/util/ArrayList;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationCheckedSet;->h(Ljava/util/ArrayList;)V

    .line 115
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final m(Lcom/android/mail/providers/Conversation;)Z
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    iget-wide v2, p1, Lcom/android/mail/providers/Conversation;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationCheckedSet;->a(Ljava/lang/Long;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final n(Lcom/android/mail/providers/Conversation;)V
    .locals 3

    .prologue
    .line 250
    iget-wide v0, p1, Lcom/android/mail/providers/Conversation;->id:J

    .line 251
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mail/ui/ConversationCheckedSet;->a(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ConversationCheckedSet;->s(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 255
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/mail/ui/ConversationCheckedSet;->a(Ljava/lang/Long;Lcom/android/mail/providers/Conversation;)V

    goto :goto_0
.end method

.method public final o(Lcom/android/mail/browse/u;)V
    .locals 5

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationCheckedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    monitor-exit v1

    .line 362
    :goto_0
    return-void

    .line 320
    :cond_0
    if-nez p1, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationCheckedSet;->clear()V

    .line 322
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 326
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mail/browse/u;->oZ()Ljava/util/Set;

    move-result-object v0

    .line 329
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 330
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    iget-object v4, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGA:Lcom/google/common/collect/k;

    invoke-interface {v4, v0}, Lcom/google/common/collect/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 332
    if-eqz v0, :cond_2

    .line 333
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/android/mail/ui/ConversationCheckedSet;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 342
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 348
    invoke-virtual {p1}, Lcom/android/mail/browse/u;->oX()Ljava/util/Set;

    move-result-object v3

    .line 353
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    .line 354
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 359
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 361
    invoke-direct {p0, v2}, Lcom/android/mail/ui/ConversationCheckedSet;->s(Ljava/util/Collection;)V

    .line 362
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final size()I
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_0
    const-string v0, "%s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/mail/ui/ConversationCheckedSet;->fK:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/ui/ConversationCheckedSet;->aGz:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationCheckedSet;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mail/ui/ConversationCheckedSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/mail/providers/Conversation;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mail/providers/Conversation;

    .line 297
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 298
    return-void
.end method

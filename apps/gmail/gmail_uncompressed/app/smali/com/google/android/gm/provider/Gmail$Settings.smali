.class public Lcom/google/android/gm/provider/Gmail$Settings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private transient bff:Ljava/util/BitSet;

.field private mConversationAgeDays:J

.field private mLabelsIncluded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelsPartial:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxAttachmentSizeMb:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1901
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->bff:Ljava/util/BitSet;

    return-void
.end method

.method private declared-synchronized EC()Z
    .locals 2

    .prologue
    .line 1934
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->ED()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ED()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->bff:Ljava/util/BitSet;

    if-nez v0, :cond_0

    .line 1939
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->bff:Ljava/util/BitSet;

    .line 1941
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->bff:Ljava/util/BitSet;

    return-object v0
.end method

.method private declared-synchronized EE()Z
    .locals 2

    .prologue
    .line 1953
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->ED()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized EF()Z
    .locals 2

    .prologue
    .line 1964
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->ED()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized EG()Z
    .locals 2

    .prologue
    .line 1975
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->ED()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/Gmail$Settings;J)J
    .locals 1

    .prologue
    .line 1881
    iput-wide p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    return-wide p1
.end method

.method static synthetic a(Lcom/google/android/gm/provider/Gmail$Settings;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .prologue
    .line 1881
    iput-object p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    return-object p1
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2034
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2035
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2036
    const/4 v0, 0x0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 2037
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2036
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2040
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/gm/provider/Gmail$Settings;J)J
    .locals 1

    .prologue
    .line 1881
    iput-wide p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    return-wide p1
.end method

.method static synthetic b(Lcom/google/android/gm/provider/Gmail$Settings;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .prologue
    .line 1881
    iput-object p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gm/provider/Gmail$Settings;)Z
    .locals 1

    .prologue
    .line 1881
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->EF()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/android/gm/provider/Gmail$Settings;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gm/provider/Gmail$Settings;)Z
    .locals 1

    .prologue
    .line 1881
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->EG()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/google/android/gm/provider/Gmail$Settings;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gm/provider/Gmail$Settings;)Z
    .locals 1

    .prologue
    .line 1881
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->EC()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/google/android/gm/provider/Gmail$Settings;)J
    .locals 2

    .prologue
    .line 1881
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    return-wide v0
.end method

.method public static h(Lorg/json/JSONObject;)Lcom/google/android/gm/provider/Gmail$Settings;
    .locals 4

    .prologue
    .line 2020
    new-instance v0, Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-direct {v0}, Lcom/google/android/gm/provider/Gmail$Settings;-><init>()V

    .line 2021
    const-string v1, "conversation_age_days"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    .line 2022
    const-string v1, "max_attachment_size_mb"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    .line 2023
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    .line 2024
    const-string v1, "labels_included"

    iget-object v2, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    invoke-static {p0, v1, v2}, Lcom/google/android/gm/provider/Gmail$Settings;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 2025
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    .line 2026
    const-string v1, "labels_partial"

    iget-object v2, v0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    invoke-static {p0, v1, v2}, Lcom/google/android/gm/provider/Gmail$Settings;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Collection;)V

    .line 2028
    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gm/provider/Gmail$Settings;)Z
    .locals 1

    .prologue
    .line 1881
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->EE()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/google/android/gm/provider/Gmail$Settings;)J
    .locals 2

    .prologue
    .line 1881
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    return-wide v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 2002
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    .line 2003
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    .line 2004
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 2005
    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    .line 2006
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 2007
    invoke-static {v0}, Lcom/google/common/collect/Sets;->p([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    .line 2008
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 1992
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1993
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1994
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1995
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1996
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1997
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1998
    return-void
.end method


# virtual methods
.method public final declared-synchronized EA()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1918
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->f([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized EB()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1924
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->f([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Ey()J
    .locals 2

    .prologue
    .line 1909
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Ez()J
    .locals 2

    .prologue
    .line 1913
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ai(J)V
    .locals 3

    .prologue
    .line 1928
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1929
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->ED()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1930
    iput-wide p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1932
    :cond_0
    monitor-exit p0

    return-void

    .line 1928
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized aj(J)V
    .locals 3

    .prologue
    .line 1946
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1947
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->ED()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1948
    iput-wide p1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1950
    :cond_0
    monitor-exit p0

    return-void

    .line 1946
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final lC()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 2011
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2012
    const-string v1, "conversation_age_days"

    iget-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2013
    const-string v1, "max_attachment_size_mb"

    iget-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2014
    const-string v1, "labels_included"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2015
    const-string v1, "labels_partial"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2016
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Settings{mConversationAgeDays="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mConversationAgeDays:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mMaxAttachmentSizeMb="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mMaxAttachmentSizeMb:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLabelsIncluded="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLabelsPartial="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDirtyBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->ED()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v5, [Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    aput-object v3, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v1, v5, [Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method public final declared-synchronized y(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1957
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/collect/Sets;->g(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 1958
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1959
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->ED()Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1960
    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsIncluded:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1962
    :cond_0
    monitor-exit p0

    return-void

    .line 1957
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1968
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/collect/Sets;->g(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 1969
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1970
    invoke-direct {p0}, Lcom/google/android/gm/provider/Gmail$Settings;->ED()Ljava/util/BitSet;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1971
    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$Settings;->mLabelsPartial:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1973
    :cond_0
    monitor-exit p0

    return-void

    .line 1968
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

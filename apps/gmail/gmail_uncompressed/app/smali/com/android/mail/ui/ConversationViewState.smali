.class public Lcom/android/mail/ui/ConversationViewState;
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
            "Lcom/android/mail/ui/ConversationViewState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aIG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mail/ui/ConversationViewState$MessageViewState;",
            ">;"
        }
    .end annotation
.end field

.field private aIH:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/android/mail/ui/bi;

    invoke-direct {v0}, Lcom/android/mail/ui/bi;-><init>()V

    sput-object v0, Lcom/android/mail/ui/ConversationViewState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 5

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    .line 164
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 167
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIH:[B

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/mail/ui/ConversationViewState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/ui/ConversationViewState;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    .line 67
    iget-object v0, p1, Lcom/android/mail/ui/ConversationViewState;->aIH:[B

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIH:[B

    .line 68
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Message;Z)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 77
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    invoke-direct {v0}, Lcom/android/mail/ui/ConversationViewState$MessageViewState;-><init>()V

    .line 80
    :cond_0
    iput-boolean p2, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->aza:Z

    .line 81
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public final b(Lcom/android/mail/providers/Message;I)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 112
    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    invoke-direct {v0}, Lcom/android/mail/ui/ConversationViewState$MessageViewState;-><init>()V

    .line 115
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->aIL:Ljava/lang/Integer;

    .line 116
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public final b(Lcom/android/mail/providers/Message;Z)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 91
    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    invoke-direct {v0}, Lcom/android/mail/ui/ConversationViewState$MessageViewState;-><init>()V

    .line 94
    :cond_0
    iput-boolean p2, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->aIM:Z

    .line 95
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Lcom/android/mail/providers/Message;)Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 72
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->aza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(Lcom/android/mail/providers/Message;)Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 86
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->aIM:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i(Lcom/android/mail/providers/Message;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 107
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->aIL:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public final j(Lcom/android/mail/providers/Message;)Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final r(Lcom/android/mail/providers/Conversation;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p1, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    invoke-virtual {v0}, Lcom/android/mail/providers/ConversationInfo;->uN()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIH:[B

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 154
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 155
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 156
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 157
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIH:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 161
    return-void
.end method

.method public final zc()[B
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIH:[B

    return-object v0
.end method

.method public final zd()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 135
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewState;->aIG:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mail/ui/ConversationViewState$MessageViewState;

    .line 136
    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/mail/ui/ConversationViewState$MessageViewState;->aza:Z

    if-nez v1, :cond_0

    .line 137
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_1
    return-object v2
.end method

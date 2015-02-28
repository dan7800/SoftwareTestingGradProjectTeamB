.class public final Lcom/android/mail/browse/ConversationMessage;
.super Lcom/android/mail/providers/Message;
.source "SourceFile"


# static fields
.field public static final aqh:Lcom/android/mail/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/a",
            "<",
            "Lcom/android/mail/browse/ConversationMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient aqg:Lcom/android/mail/browse/aD;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/android/mail/browse/U;

    invoke-direct {v0}, Lcom/android/mail/browse/U;-><init>()V

    sput-object v0, Lcom/android/mail/browse/ConversationMessage;->aqh:Lcom/android/mail/c/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/a/f;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mail/providers/Message;-><init>(Landroid/content/Context;Lcom/android/emailcommon/a/f;Landroid/net/Uri;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/mail/providers/Message;-><init>(Landroid/database/Cursor;)V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;B)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/mail/browse/ConversationMessage;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/browse/aD;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mail/browse/ConversationMessage;->aqg:Lcom/android/mail/browse/aD;

    .line 63
    return-void
.end method

.method public final ax(Z)V
    .locals 4

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/mail/browse/ConversationMessage;->azc:Z

    .line 105
    iget-object v0, p0, Lcom/android/mail/browse/ConversationMessage;->aqg:Lcom/android/mail/browse/aD;

    invoke-interface {v0}, Lcom/android/mail/browse/aD;->rB()Lcom/android/mail/browse/aC;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    iget-wide v2, p0, Lcom/android/mail/browse/ConversationMessage;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/android/mail/browse/aC;->Q(J)Lcom/android/mail/browse/ConversationMessage;

    move-result-object v0

    .line 108
    iput-boolean p1, v0, Lcom/android/mail/browse/ConversationMessage;->azc:Z

    .line 110
    :cond_0
    return-void
.end method

.method public final ay(Z)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mail/browse/ConversationMessage;->aqg:Lcom/android/mail/browse/aD;

    invoke-interface {v0}, Lcom/android/mail/browse/aD;->rA()Lcom/android/mail/ui/aP;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p0, p1}, Lcom/android/mail/ui/aP;->a(Lcom/android/mail/browse/ConversationMessage;Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public final pg()Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/mail/browse/ConversationMessage;->aqg:Lcom/android/mail/browse/aD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/browse/ConversationMessage;->aqg:Lcom/android/mail/browse/aD;

    invoke-interface {v0}, Lcom/android/mail/browse/aD;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ql()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 80
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/mail/browse/ConversationMessage;->uri:Landroid/net/Uri;

    aput-object v0, v3, v2

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/mail/browse/ConversationMessage;->vC()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uA()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final qm()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mail/browse/ConversationMessage;->aqg:Lcom/android/mail/browse/aD;

    invoke-interface {v0}, Lcom/android/mail/browse/aD;->rB()Lcom/android/mail/browse/aC;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/browse/aC;->qm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public final Lcom/android/mail/browse/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Zr:I

.field final synthetic amq:Lcom/android/mail/browse/u;

.field private final amr:Lcom/android/mail/providers/Conversation;

.field private final ams:Landroid/content/ContentValues;

.field private final amt:Lcom/android/mail/browse/be;

.field private final amu:Z

.field private amv:Z

.field private final amw:Z

.field private final eM:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/u;ILcom/android/mail/providers/Conversation;Landroid/content/ContentValues;Lcom/android/mail/browse/be;)V
    .locals 1

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/z;->amv:Z

    .line 1742
    iput p2, p0, Lcom/android/mail/browse/z;->Zr:I

    .line 1743
    iget-object v0, p3, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    .line 1744
    iput-object p3, p0, Lcom/android/mail/browse/z;->amr:Lcom/android/mail/providers/Conversation;

    .line 1745
    iput-object p4, p0, Lcom/android/mail/browse/z;->ams:Landroid/content/ContentValues;

    .line 1746
    iput-object p5, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    .line 1747
    iget-boolean v0, p3, Lcom/android/mail/providers/Conversation;->azn:Z

    iput-boolean v0, p0, Lcom/android/mail/browse/z;->amu:Z

    .line 1748
    invoke-virtual {p3}, Lcom/android/mail/providers/Conversation;->uF()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/browse/z;->amw:Z

    .line 1749
    return-void
.end method

.method public constructor <init>(Lcom/android/mail/browse/u;ILcom/android/mail/providers/Conversation;Lcom/android/mail/browse/be;)V
    .locals 6

    .prologue
    .line 1737
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mail/browse/z;-><init>(Lcom/android/mail/browse/u;ILcom/android/mail/providers/Conversation;Landroid/content/ContentValues;Lcom/android/mail/browse/be;)V

    .line 1738
    return-void
.end method

.method static synthetic a(Lcom/android/mail/browse/z;Landroid/net/Uri;)Landroid/content/ContentProviderOperation;
    .locals 6

    .prologue
    .line 1703
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "seq"

    invoke-static {}, Lcom/android/mail/browse/u;->pk()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/mail/browse/z;->Zr:I

    sparse-switch v2, :sswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such ConversationOperation type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/mail/browse/z;->Zr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-boolean v2, p0, Lcom/android/mail/browse/z;->amu:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v3, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    iget-object v5, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    :goto_0
    iget-boolean v2, p0, Lcom/android/mail/browse/z;->amw:Z

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/z;->ams:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    sget-object v2, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v2, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/browse/z;->ams:Landroid/content/ContentValues;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    invoke-static {v2, v3, v4}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/mail/browse/u;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mail/browse/z;->amv:Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v1, p0, Lcom/android/mail/browse/z;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v2, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    invoke-static {v1, v2}, Lcom/android/mail/browse/A;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/u;)V

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v2, p0, Lcom/android/mail/browse/z;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v3, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mail/browse/A;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/z;->ams:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    sget-object v0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v0, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mail/browse/z;->ams:Landroid/content/ContentValues;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/z;->ams:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    sget-object v2, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v3, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    iget-object v5, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    iget-boolean v2, p0, Lcom/android/mail/browse/z;->amw:Z

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v1, p0, Lcom/android/mail/browse/z;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v2, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    invoke-static {v1, v2}, Lcom/android/mail/browse/A;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/u;)V

    goto :goto_1

    :sswitch_4
    sget-object v0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v2, p0, Lcom/android/mail/browse/z;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v3, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mail/browse/A;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_1

    :sswitch_5
    sget-object v2, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v3, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    iget-object v5, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    iget-boolean v2, p0, Lcom/android/mail/browse/z;->amw:Z

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "operation"

    const-string v2, "archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    sget-object v1, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v1, p0, Lcom/android/mail/browse/z;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v2, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    invoke-static {v1, v2}, Lcom/android/mail/browse/A;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/u;)V

    goto/16 :goto_1

    :sswitch_6
    sget-object v0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v2, p0, Lcom/android/mail/browse/z;->amr:Lcom/android/mail/providers/Conversation;

    iget-object v3, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mail/browse/A;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "operation"

    const-string v2, "archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_7
    iget-boolean v0, p0, Lcom/android/mail/browse/z;->amu:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v2, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    :cond_4
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "operation"

    const-string v2, "mute"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_8
    sget-object v0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v2, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    iget v0, p0, Lcom/android/mail/browse/z;->Zr:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    const-string v0, "report_spam"

    :goto_2
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "operation"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    const-string v0, "report_not_spam"

    goto :goto_2

    :sswitch_9
    sget-object v0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v2, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "operation"

    const-string v2, "report_phishing"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_a
    sget-object v0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v2, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "operation"

    const-string v2, "discard_drafts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_b
    sget-object v0, Lcom/android/mail/browse/u;->alT:Lcom/android/mail/browse/A;

    iget-object v2, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/browse/z;->amq:Lcom/android/mail/browse/u;

    iget-object v4, p0, Lcom/android/mail/browse/z;->amt:Lcom/android/mail/browse/be;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mail/browse/A;->a(Landroid/net/Uri;Lcom/android/mail/browse/u;Lcom/android/mail/browse/be;)V

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "operation"

    const-string v2, "move_failed_to_drafts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_5
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0x80 -> :sswitch_4
        0x82 -> :sswitch_1
        0x83 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic a(Lcom/android/mail/browse/z;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/mail/browse/z;->eM:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/browse/z;)Z
    .locals 1

    .prologue
    .line 1703
    iget-boolean v0, p0, Lcom/android/mail/browse/z;->amv:Z

    return v0
.end method

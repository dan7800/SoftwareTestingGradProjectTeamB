.class public final Lcom/android/mail/browse/aR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static anD:Landroid/content/BroadcastReceiver;

.field private static anm:Ljava/lang/String;

.field private static final atO:Ljava/lang/Integer;

.field private static atP:Ljava/lang/CharSequence;

.field private static atQ:Ljava/lang/CharSequence;

.field private static atR:Ljava/lang/CharSequence;

.field private static atS:Ljava/lang/CharSequence;

.field private static atT:Ljava/lang/CharSequence;

.field private static atU:Ljava/lang/String;

.field private static atV:Landroid/text/style/CharacterStyle;

.field private static atW:Landroid/text/style/CharacterStyle;

.field private static atX:Landroid/text/style/CharacterStyle;

.field private static atY:Landroid/text/style/CharacterStyle;

.field private static atZ:Landroid/text/style/TextAppearanceSpan;

.field private static aua:Landroid/text/style/CharacterStyle;

.field private static aub:Ljava/lang/String;

.field private static auc:Ljava/lang/String;

.field private static aud:Ljava/lang/String;

.field private static aue:Ljava/lang/String;

.field public static auf:Ljava/lang/CharSequence;

.field private static aug:Landroid/text/style/TextAppearanceSpan;

.field private static auh:Landroid/text/style/TextAppearanceSpan;

.field private static aui:Landroid/support/v4/e/a;

.field private static final auj:Lcom/android/mail/utils/V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/utils/V",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/aR;->atO:Ljava/lang/Integer;

    .line 86
    new-instance v0, Lcom/android/mail/utils/V;

    new-instance v1, Lcom/android/mail/browse/aS;

    invoke-direct {v1}, Lcom/android/mail/browse/aS;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mail/utils/V;-><init>(Lcom/android/mail/utils/W;)V

    sput-object v0, Lcom/android/mail/browse/aR;->auj:Lcom/android/mail/utils/V;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Conversation;)Landroid/text/SpannableStringBuilder;
    .locals 11

    .prologue
    .line 146
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 149
    :try_start_0
    iget-object v2, p1, Lcom/android/mail/providers/Conversation;->azk:Lcom/android/mail/providers/ConversationInfo;

    .line 150
    iget v5, p1, Lcom/android/mail/providers/Conversation;->ayZ:I

    .line 151
    const/4 v1, 0x0

    .line 154
    iget-object v0, v2, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ParticipantInfo;

    .line 155
    iget-object v0, v0, Lcom/android/mail/providers/ParticipantInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x1

    move v3, v0

    .line 160
    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/mail/browse/aR;->a(Landroid/content/Context;Z)V

    .line 161
    iget v6, v2, Lcom/android/mail/providers/ConversationInfo;->azM:I

    .line 162
    iget v7, v2, Lcom/android/mail/providers/ConversationInfo;->azN:I

    .line 163
    const/4 v0, 0x1

    if-le v6, v0, :cond_1

    .line 164
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p1, Lcom/android/mail/providers/Conversation;->aza:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/mail/browse/aR;->aug:Landroid/text/style/TextAppearanceSpan;

    :goto_1
    invoke-static {v0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    const/4 v2, 0x0

    iget-boolean v8, p1, Lcom/android/mail/providers/Conversation;->aza:Z

    invoke-static {v4, v1, v0, v2, v8}, Lcom/android/mail/browse/aR;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;ZZ)V

    .line 169
    :cond_1
    if-nez v3, :cond_2

    const/4 v0, 0x1

    if-le v6, v0, :cond_a

    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .line 170
    :goto_2
    if-lez v7, :cond_3

    .line 172
    const/4 v0, 0x1

    if-ne v7, v0, :cond_b

    .line 173
    sget-object v0, Lcom/android/mail/browse/aR;->atP:Ljava/lang/CharSequence;

    .line 179
    :goto_3
    sget-object v2, Lcom/android/mail/browse/aR;->atV:Landroid/text/style/CharacterStyle;

    iget-boolean v8, p1, Lcom/android/mail/providers/Conversation;->aza:Z

    invoke-static {v4, v0, v2, v1, v8}, Lcom/android/mail/browse/aR;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;ZZ)V

    .line 183
    :cond_3
    const/4 v0, 0x2

    if-eq v5, v0, :cond_4

    const/4 v0, 0x4

    if-eq v5, v0, :cond_4

    const/4 v0, -0x1

    if-ne v5, v0, :cond_c

    :cond_4
    const/4 v0, 0x1

    move v2, v0

    .line 186
    :goto_4
    if-eqz v2, :cond_5

    .line 187
    if-lez v7, :cond_d

    const/4 v0, 0x1

    :goto_5
    or-int v8, v1, v0

    .line 191
    const/4 v0, 0x2

    if-ne v5, v0, :cond_e

    .line 192
    sget-object v1, Lcom/android/mail/browse/aR;->atR:Ljava/lang/CharSequence;

    .line 193
    sget-object v0, Lcom/android/mail/browse/aR;->atW:Landroid/text/style/CharacterStyle;

    .line 202
    :goto_6
    iget-boolean v5, p1, Lcom/android/mail/providers/Conversation;->aza:Z

    invoke-static {v4, v1, v0, v8, v5}, Lcom/android/mail/browse/aR;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;ZZ)V

    .line 206
    :cond_5
    const/4 v0, 0x1

    if-gt v6, v0, :cond_7

    if-lez v7, :cond_6

    if-nez v3, :cond_7

    :cond_6
    if-eqz v2, :cond_8

    .line 207
    :cond_7
    const/4 v0, 0x0

    sget-object v1, Lcom/android/mail/browse/aR;->aue:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 215
    :cond_8
    return-object v4

    .line 164
    :cond_9
    sget-object v0, Lcom/android/mail/browse/aR;->auh:Landroid/text/style/TextAppearanceSpan;

    goto :goto_1

    .line 169
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    .line 175
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/mail/browse/aR;->atQ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/mail/browse/aR;->atU:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 183
    :cond_c
    const/4 v0, 0x0

    move v2, v0

    goto :goto_4

    .line 187
    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    .line 194
    :cond_e
    const/4 v0, 0x4

    if-ne v5, v0, :cond_f

    .line 195
    sget-object v1, Lcom/android/mail/browse/aR;->atR:Ljava/lang/CharSequence;

    .line 196
    sget-object v0, Lcom/android/mail/browse/aR;->atW:Landroid/text/style/CharacterStyle;

    goto :goto_6

    .line 198
    :cond_f
    sget-object v1, Lcom/android/mail/browse/aR;->atT:Ljava/lang/CharSequence;

    .line 199
    sget-object v0, Lcom/android/mail/browse/aR;->atY:Landroid/text/style/CharacterStyle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 211
    :catchall_0
    move-exception v0

    throw v0

    :cond_10
    move v3, v1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/mail/browse/S;Lcom/android/mail/providers/Account;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;ZZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/providers/ConversationInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/mail/browse/S;",
            "Lcom/android/mail/providers/Account;",
            "Landroid/text/style/TextAppearanceSpan;",
            "Landroid/text/style/CharacterStyle;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-static {v0, v1}, Lcom/android/mail/browse/aR;->a(Landroid/content/Context;Z)V

    .line 259
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    move v15, v3

    :goto_0
    if-eqz p6, :cond_1

    const/4 v3, 0x1

    move v14, v3

    :goto_1
    const/4 v7, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p3

    if-le v6, v0, :cond_20

    sub-int v3, v6, p3

    move v13, v3

    :goto_2
    sget-object v3, Lcom/android/mail/browse/aR;->auj:Lcom/android/mail/utils/V;

    invoke-virtual {v3}, Lcom/android/mail/utils/V;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v9, v4

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mail/providers/ParticipantInfo;

    iget-object v8, v4, Lcom/android/mail/providers/ParticipantInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    :goto_4
    iget v11, v4, Lcom/android/mail/providers/ParticipantInfo;->priority:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v4, Lcom/android/mail/providers/ParticipantInfo;->priority:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v9, v4

    goto :goto_3

    :cond_0
    const/4 v3, 0x0

    move v15, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v14, v3

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_4

    :goto_5
    if-ge v12, v9, :cond_4

    add-int/lit8 v4, v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    add-int/lit8 v4, v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    add-int/2addr v4, v6

    if-lez v6, :cond_1d

    add-int/lit8 v6, v4, 0x2

    :goto_6
    move/from16 v0, p3

    if-le v6, v0, :cond_3

    const/4 v4, 0x2

    if-ge v5, v4, :cond_4

    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v6

    :goto_7
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move v6, v5

    move v5, v4

    goto :goto_5

    :cond_4
    :try_start_2
    sget-object v4, Lcom/android/mail/browse/aR;->auj:Lcom/android/mail/utils/V;

    invoke-virtual {v4, v3}, Lcom/android/mail/utils/V;->V(Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v16

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/google/common/collect/Lists;->fn(I)Ljava/util/ArrayList;

    move-result-object v17

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    :goto_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v9, v3, :cond_14

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mail/providers/ParticipantInfo;

    iget-object v6, v3, Lcom/android/mail/providers/ParticipantInfo;->aBF:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/mail/providers/ParticipantInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object v4, v5

    :goto_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    invoke-static/range {p10 .. p10}, Lcom/android/mail/browse/aR;->aP(Z)Ljava/lang/String;

    move-result-object v4

    :cond_5
    if-eqz v13, :cond_1c

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v18, v18, v13

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    :goto_a
    iget v0, v3, Lcom/android/mail/providers/ParticipantInfo;->priority:I

    move/from16 v18, v0

    iget-boolean v4, v3, Lcom/android/mail/providers/ParticipantInfo;->aBG:Z

    if-eqz v4, :cond_c

    move-object/from16 v4, p9

    :goto_b
    invoke-static {v4}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v19

    move/from16 v0, v18

    if-gt v0, v12, :cond_e

    new-instance v18, Landroid/text/SpannableString;

    sget-object v4, Lcom/android/mail/browse/aR;->aui:Landroid/support/v4/e/a;

    invoke-virtual {v4, v8}, Landroid/support/v4/e/a;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    :goto_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/android/mail/browse/aR;->atO:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v4, v8, :cond_6

    iget-boolean v8, v3, Lcom/android/mail/providers/ParticipantInfo;->aBG:Z

    if-nez v8, :cond_8

    :cond_6
    sget-object v8, Lcom/android/mail/browse/aR;->atO:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v4, v8, :cond_7

    if-lez v9, :cond_7

    add-int/lit8 v8, v9, -0x1

    if-ne v4, v8, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v15, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v4, v8, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual/range {p7 .. p7}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v4

    :goto_e
    if-eqz v15, :cond_13

    if-nez v9, :cond_11

    move-object v6, v5

    move-object v8, v4

    :goto_f
    if-eqz v14, :cond_9

    invoke-virtual/range {p6 .. p6}, Lcom/android/mail/browse/S;->qk()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-boolean v3, v3, Lcom/android/mail/providers/ParticipantInfo;->aBG:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p6

    invoke-virtual {v0, v5, v4}, Lcom/android/mail/browse/S;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move-object v10, v6

    move-object v11, v8

    goto/16 :goto_8

    :catchall_0
    move-exception v4

    sget-object v5, Lcom/android/mail/browse/aR;->auj:Lcom/android/mail/utils/V;

    invoke-virtual {v5, v3}, Lcom/android/mail/utils/V;->V(Ljava/lang/Object;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 263
    :catchall_1
    move-exception v3

    if-nez p11, :cond_a

    .line 264
    const/4 v4, 0x0

    sput-object v4, Lcom/android/mail/browse/aR;->atP:Ljava/lang/CharSequence;

    :cond_a
    throw v3

    .line 259
    :cond_b
    :try_start_3
    const-string v4, ""

    goto/16 :goto_9

    :cond_c
    move-object/from16 v4, p8

    goto/16 :goto_b

    :cond_d
    sget-object v4, Lcom/android/mail/browse/aR;->atO:Ljava/lang/Integer;

    goto/16 :goto_c

    :cond_e
    if-nez v7, :cond_8

    new-instance v7, Landroid/text/SpannableString;

    sget-object v4, Lcom/android/mail/browse/aR;->auf:Ljava/lang/CharSequence;

    invoke-direct {v7, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v18, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v7, v0, v4, v8, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v4

    goto :goto_d

    :cond_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v4, v5

    goto :goto_e

    :cond_10
    move-object v4, v6

    goto :goto_e

    :cond_11
    invoke-static {v11, v4}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_12

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_12
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x4

    if-le v6, v8, :cond_13

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_13
    move-object v6, v10

    move-object v8, v11

    goto/16 :goto_f

    :cond_14
    if-eqz v15, :cond_15

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_19

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_15
    :goto_10
    if-eqz v14, :cond_17

    invoke-virtual/range {p6 .. p6}, Lcom/android/mail/browse/S;->qk()Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    :goto_11
    if-ltz v4, :cond_16

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mail/providers/ParticipantInfo;

    iget-object v5, v3, Lcom/android/mail/providers/ParticipantInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    iget-object v4, v3, Lcom/android/mail/providers/ParticipantInfo;->aBF:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v3, Lcom/android/mail/providers/ParticipantInfo;->name:Ljava/lang/String;

    :goto_12
    iget-object v3, v3, Lcom/android/mail/providers/ParticipantInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Lcom/android/mail/browse/S;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-virtual/range {p6 .. p6}, Lcom/android/mail/browse/S;->qk()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual/range {p7 .. p7}, Lcom/android/mail/providers/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Lcom/android/mail/browse/S;->z(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    :cond_17
    if-nez p11, :cond_18

    .line 264
    const/4 v3, 0x0

    sput-object v3, Lcom/android/mail/browse/aR;->atP:Ljava/lang/CharSequence;

    .line 267
    :cond_18
    return-void

    .line 259
    :cond_19
    const/4 v3, 0x0

    :try_start_4
    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_1a
    iget-object v4, v3, Lcom/android/mail/providers/ParticipantInfo;->aBF:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_12

    :cond_1b
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_11

    :cond_1c
    move-object v8, v4

    goto/16 :goto_a

    :cond_1d
    move v6, v4

    goto/16 :goto_6

    :cond_1e
    move v4, v5

    move v5, v6

    goto/16 :goto_7

    :cond_1f
    move v12, v7

    goto/16 :goto_5

    :cond_20
    move v13, v3

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/mail/browse/S;Lcom/android/mail/providers/Account;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/providers/ConversationInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/SpannableString;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/mail/browse/S;",
            "Lcom/android/mail/providers/Account;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/android/mail/browse/aR;->a(Landroid/content/Context;Z)V

    .line 240
    sget-object v8, Lcom/android/mail/browse/aR;->atZ:Landroid/text/style/TextAppearanceSpan;

    sget-object v9, Lcom/android/mail/browse/aR;->aua:Landroid/text/style/CharacterStyle;

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v11}, Lcom/android/mail/browse/aR;->a(Landroid/content/Context;Lcom/android/mail/providers/ConversationInfo;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/mail/browse/S;Lcom/android/mail/providers/Account;Landroid/text/style/TextAppearanceSpan;Landroid/text/style/CharacterStyle;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    return-void

    .line 245
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    .line 105
    const-class v1, Lcom/android/mail/browse/aR;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mail/browse/aR;->anD:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    new-instance v0, Lcom/android/mail/browse/aT;

    invoke-direct {v0}, Lcom/android/mail/browse/aT;-><init>()V

    sput-object v0, Lcom/android/mail/browse/aR;->anD:Landroid/content/BroadcastReceiver;

    .line 113
    sget-object v0, Lcom/android/mail/browse/aR;->anD:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    :cond_0
    sget-object v0, Lcom/android/mail/browse/aR;->atP:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    const v2, 0x7f09015d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/aR;->anm:Ljava/lang/String;

    .line 119
    const v2, 0x7f09015f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/aR;->auf:Ljava/lang/CharSequence;

    .line 120
    const/high16 v2, 0x7f110000

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/aR;->atP:Ljava/lang/CharSequence;

    .line 121
    const/high16 v2, 0x7f110000

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/aR;->atQ:Ljava/lang/CharSequence;

    .line 122
    const v2, 0x7f09015e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/aR;->atU:Ljava/lang/String;

    .line 123
    const v2, 0x7f0900fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/aR;->aub:Ljava/lang/String;

    .line 124
    const v2, 0x7f0900f9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/aR;->auc:Ljava/lang/String;

    .line 125
    const v2, 0x7f090114

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/aR;->aud:Ljava/lang/String;

    .line 126
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0801a3

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/mail/browse/aR;->auh:Landroid/text/style/TextAppearanceSpan;

    .line 128
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0801a4

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/mail/browse/aR;->aug:Landroid/text/style/TextAppearanceSpan;

    .line 130
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0801a5

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/mail/browse/aR;->atV:Landroid/text/style/CharacterStyle;

    .line 131
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f08019d

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/mail/browse/aR;->atZ:Landroid/text/style/TextAppearanceSpan;

    .line 132
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0801a6

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/mail/browse/aR;->atW:Landroid/text/style/CharacterStyle;

    .line 133
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0801a7

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/mail/browse/aR;->atX:Landroid/text/style/CharacterStyle;

    .line 134
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0801a8

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/mail/browse/aR;->atY:Landroid/text/style/CharacterStyle;

    .line 135
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f08019e

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    sput-object v2, Lcom/android/mail/browse/aR;->aua:Landroid/text/style/CharacterStyle;

    .line 136
    const v2, 0x7f090161

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/aR;->aue:Ljava/lang/String;

    .line 137
    const v2, 0x7f0900f5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/aR;->atR:Ljava/lang/CharSequence;

    .line 138
    const v2, 0x7f0900f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mail/browse/aR;->atS:Ljava/lang/CharSequence;

    .line 139
    const v2, 0x7f0900f7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/aR;->atT:Ljava/lang/CharSequence;

    .line 140
    invoke-static {}, Landroid/support/v4/e/a;->aC()Landroid/support/v4/e/a;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/aR;->aui:Landroid/support/v4/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_1
    monitor-exit v1

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Object;ZZ)V
    .locals 4

    .prologue
    const/16 v3, 0x21

    .line 220
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 221
    if-eqz p3, :cond_0

    .line 222
    sget-object v0, Lcom/android/mail/browse/aR;->anm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 223
    if-eqz p4, :cond_1

    sget-object v0, Lcom/android/mail/browse/aR;->aug:Landroid/text/style/TextAppearanceSpan;

    :goto_0
    invoke-static {v0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 229
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 230
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 231
    return-void

    .line 223
    :cond_1
    sget-object v0, Lcom/android/mail/browse/aR;->auh:Landroid/text/style/TextAppearanceSpan;

    goto :goto_0
.end method

.method public static aO(Z)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 100
    if-eqz p0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method static aP(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/mail/browse/aR;->auc:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mail/browse/aR;->aub:Ljava/lang/String;

    goto :goto_0
.end method

.method public static am(Landroid/content/Context;)Landroid/text/SpannableString;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 450
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/mail/browse/aR;->a(Landroid/content/Context;Z)V

    .line 451
    new-instance v0, Landroid/text/SpannableString;

    sget-object v1, Lcom/android/mail/browse/aR;->atP:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 452
    sget-object v1, Lcom/android/mail/browse/aR;->atV:Landroid/text/style/CharacterStyle;

    invoke-static {v1}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    .line 453
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 454
    return-object v0
.end method

.method static synthetic an(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/mail/browse/aR;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static rV()Landroid/text/SpannableString;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 443
    new-instance v0, Landroid/text/SpannableString;

    sget-object v1, Lcom/android/mail/browse/aR;->aud:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 444
    sget-object v1, Lcom/android/mail/browse/aR;->aua:Landroid/text/style/CharacterStyle;

    invoke-static {v1}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    .line 445
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 446
    return-object v0
.end method

.method static synthetic rW()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/browse/aR;->atP:Ljava/lang/CharSequence;

    return-object v0
.end method

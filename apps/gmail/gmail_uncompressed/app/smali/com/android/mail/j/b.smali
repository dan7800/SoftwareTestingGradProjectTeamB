.class public final Lcom/android/mail/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/mail/providers/Message;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 253
    iget-boolean v1, p2, Lcom/android/mail/providers/Message;->ayX:Z

    if-nez v1, :cond_0

    .line 254
    const-string v0, ""

    .line 297
    :goto_0
    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p2, v0}, Lcom/android/mail/providers/Message;->bj(Z)I

    move-result v1

    .line 260
    if-nez v1, :cond_1

    .line 261
    const-string v0, ""

    goto :goto_0

    .line 264
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "<br clear=all><div style=\"width:50%;border-top:2px #AAAAAA solid\"></div><table class=att cellspacing=0 cellpadding=5 border=0>"

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    if-le v1, v5, :cond_2

    .line 270
    const-string v2, "<tr><td colspan=2><b style=\"padding-left:3\">"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f110014

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {p1, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b></td></tr>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_2
    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->vC()Ljava/util/List;

    move-result-object v4

    .line 277
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_12

    .line 278
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 280
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uB()Z

    move-result v1

    if-nez v1, :cond_4

    .line 281
    const-string v1, "<tr><td><table cellspacing=\"0\" cellpadding=\"0\"><tr>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, "<td><img width=\"16\" height=\"16\" src=\"file:///android_asset/images/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v7, "application/msword"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "application/vnd.oasis.opendocument.text"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "application/rtf"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    const-string v1, "doc.gif"

    :goto_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\"></td><td width=\"7\"></td><td><b>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "</b><br>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v6, v0

    invoke-static {p0, v6, v7}, Lcom/android/mail/utils/b;->E(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</td></tr></table></td></tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 286
    :cond_5
    const-string v7, "image/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v1, "graphic.gif"

    goto :goto_2

    :cond_6
    const-string v7, "text/html"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v1, "html.gif"

    goto :goto_2

    :cond_7
    const-string v7, "application/pdf"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v1, "pdf.gif"

    goto :goto_2

    :cond_8
    const-string v7, "powerpoint"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "application/vnd.oasis.opendocument.presentation"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    const-string v1, "ppt.gif"

    goto :goto_2

    :cond_a
    const-string v7, "audio/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "music/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    const-string v1, "sound.gif"

    goto :goto_2

    :cond_c
    const-string v7, "text/plain"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v1, "txt.gif"

    goto/16 :goto_2

    :cond_d
    const-string v7, "excel"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_e
    const-string v1, "xls.gif"

    goto/16 :goto_2

    :cond_f
    const-string v7, "zip"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "/x-compress"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    const-string v7, "/x-compressed"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    const-string v1, "zip.gif"

    goto/16 :goto_2

    :cond_11
    const-string v1, "generic.gif"

    goto/16 :goto_2

    .line 295
    :cond_12
    const-string v0, "</table>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/res/Resources;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 229
    :cond_0
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 231
    :cond_1
    array-length v0, p1

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 232
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 233
    aget-object v3, p1, v0

    invoke-static {p2, v3}, Lcom/android/mail/utils/ag;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Address;->lj()Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    aput-object v3, v2, v0

    .line 232
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_2
    const v5, 0x7f0901a0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const/4 v4, 0x1

    aput-object v3, v6, v4

    invoke-virtual {p0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_2

    .line 245
    :cond_3
    const v0, 0x7f090129

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/mail/providers/Message;Ljava/util/Map;Lcom/android/mail/j/a;Lcom/android/mail/e;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Lcom/android/mail/providers/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Lcom/android/mail/j/a;",
            "Lcom/android/mail/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->vq()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/mail/utils/ag;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 161
    iget-wide v2, p2, Lcom/android/mail/providers/Message;->aBf:J

    .line 162
    invoke-virtual {p5, v2, v3}, Lcom/android/mail/e;->L(J)Ljava/lang/String;

    move-result-object v9

    .line 164
    if-nez v1, :cond_0

    const-string v0, ""

    move-object v8, v0

    :goto_0
    if-nez v1, :cond_1

    const-string v0, ""

    move-object v7, v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->vA()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/android/mail/j/b;->a(Landroid/content/res/Resources;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<div class=\"replyto\">"

    const-string v4, "</div>"

    const v5, 0x7f090113

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mail/j/b;->a(Landroid/content/res/Resources;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p2, Lcom/android/mail/providers/Message;->aBk:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->vu()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, p3}, Lcom/android/mail/j/b;->a(Landroid/content/res/Resources;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    const-string v0, "<div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0901a3

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</div>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->vw()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/android/mail/j/b;->a(Landroid/content/res/Resources;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<div>"

    const-string v4, "</div>"

    const v5, 0x7f090116

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mail/j/b;->a(Landroid/content/res/Resources;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->vy()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/android/mail/j/b;->a(Landroid/content/res/Resources;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<div>"

    const-string v4, "</div>"

    const v5, 0x7f090117

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mail/j/b;->a(Landroid/content/res/Resources;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/mail/providers/Message;->vF()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p2}, Lcom/android/mail/j/b;->a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/mail/providers/Message;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p4

    move-object v1, v8

    move-object v2, v7

    move-object v3, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/mail/j/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 164
    :cond_0
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->lj()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const-string v3, "<div>"

    const-string v4, "</div>"

    if-eqz v0, :cond_4

    const v5, 0x7f0901a2

    :goto_4
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mail/j/b;->a(Landroid/content/res/Resources;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    const v5, 0x7f090115

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/browse/aC;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/browse/aC;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v4, Lcom/android/mail/j/a;

    invoke-direct {v4, p0}, Lcom/android/mail/j/a;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/mail/e;

    invoke-direct {v5, p0}, Lcom/android/mail/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trying to print without a conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v0

    iget-object v1, v0, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mail/providers/Conversation;->uH()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lcom/android/mail/j/a;->e(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->qL()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/mail/j/b;->a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/mail/providers/Message;Ljava/util/Map;Lcom/android/mail/j/a;Lcom/android/mail/e;)V

    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Lcom/android/mail/j/a;->ub()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/android/mail/browse/aC;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mail/providers/Conversation;->ayV:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, p3, v1, v2}, Lcom/android/mail/j/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Message;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/providers/Message;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v4, Lcom/android/mail/j/a;

    invoke-direct {v4, p0}, Lcom/android/mail/j/a;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/mail/e;

    invoke-direct {v5, p0}, Lcom/android/mail/e;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v4, p2, v0}, Lcom/android/mail/j/a;->e(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/mail/j/b;->a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/mail/providers/Message;Ljava/util/Map;Lcom/android/mail/j/a;Lcom/android/mail/e;)V

    if-eqz p5, :cond_0

    invoke-virtual {v4}, Lcom/android/mail/j/a;->ub()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    invoke-static {p0, v0, p4, p2, p5}, Lcom/android/mail/j/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    return-void

    .line 72
    :cond_0
    invoke-virtual {v4}, Lcom/android/mail/j/a;->uc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 93
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 94
    invoke-virtual {v1, p4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "print"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    .line 99
    invoke-static {p0, p3}, Lcom/android/mail/j/b;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {}, Lcom/android/mail/utils/ag;->Bh()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    :goto_0
    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 105
    return-void

    .line 100
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->createPrintDocumentAdapter()Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/res/Resources;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 216
    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_0
    return-void
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090079

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0901a6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

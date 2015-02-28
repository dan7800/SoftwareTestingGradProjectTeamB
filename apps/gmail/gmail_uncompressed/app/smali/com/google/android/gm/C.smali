.class public final Lcom/google/android/gm/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/a/d;


# instance fields
.field private aXP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 53
    invoke-static {}, Lcom/android/mail/a/a;->or()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "GmailAnalytics"

    const-string v1, "sendTiming: cat=%s time=%d ms name=%s label=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->BF()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/analytics/tracking/android/ah;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Lcom/android/mail/a/a;->or()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "GmailAnalytics"

    const-string v1, "sendEvent: cat=%s action=%s label=%s value=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 48
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->BF()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/analytics/tracking/android/ah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 62
    invoke-static {}, Lcom/android/mail/a/a;->or()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 64
    :cond_0
    const v0, 0x7f0d0276

    if-ne p2, v0, :cond_2

    const-string v2, "archive"

    .line 65
    :goto_1
    if-nez v2, :cond_1

    .line 66
    const v0, 0x7f0d026e

    if-ne p2, v0, :cond_38

    .line 67
    const-string v2, "delete_ad"

    .line 76
    :cond_1
    :goto_2
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/C;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 64
    :cond_2
    const v0, 0x7f0d0277

    if-ne p2, v0, :cond_3

    const-string v2, "remove_folder"

    goto :goto_1

    :cond_3
    const v0, 0x7f0d0278

    if-ne p2, v0, :cond_4

    const-string v2, "delete"

    goto :goto_1

    :cond_4
    const v0, 0x7f0d0279

    if-ne p2, v0, :cond_5

    const-string v2, "discard_drafts"

    goto :goto_1

    :cond_5
    const v0, 0x7f0d027a

    if-ne p2, v0, :cond_6

    const-string v2, "discard_outbox"

    goto :goto_1

    :cond_6
    const v0, 0x7f0d027f

    if-ne p2, v0, :cond_7

    const-string v2, "mark important"

    goto :goto_1

    :cond_7
    const v0, 0x7f0d0280

    if-ne p2, v0, :cond_8

    const-string v2, "mark not important"

    goto :goto_1

    :cond_8
    const v0, 0x7f0d0281

    if-ne p2, v0, :cond_9

    const-string v2, "mute"

    goto :goto_1

    :cond_9
    const v0, 0x7f0d0286

    if-ne p2, v0, :cond_a

    const-string v2, "report_phishing"

    goto :goto_1

    :cond_a
    const v0, 0x7f0d0284

    if-ne p2, v0, :cond_b

    const-string v2, "report_spam"

    goto :goto_1

    :cond_b
    const v0, 0x7f0d0285

    if-ne p2, v0, :cond_c

    const-string v2, "mark_not_spam"

    goto :goto_1

    :cond_c
    const v0, 0x7f0d010f

    if-ne p2, v0, :cond_d

    const-string v2, "compose"

    goto :goto_1

    :cond_d
    const v0, 0x7f0d028c

    if-ne p2, v0, :cond_e

    const-string v2, "refresh"

    goto :goto_1

    :cond_e
    const v0, 0x7f0d0288

    if-ne p2, v0, :cond_f

    const-string v2, "toggle_drawer"

    goto :goto_1

    :cond_f
    const v0, 0x7f0d026c

    if-ne p2, v0, :cond_10

    const-string v2, "settings"

    goto/16 :goto_1

    :cond_10
    const v0, 0x7f0d026d

    if-ne p2, v0, :cond_11

    const-string v2, "help"

    goto/16 :goto_1

    :cond_11
    const v0, 0x7f0d0010

    if-ne p2, v0, :cond_12

    const-string v2, "feedback"

    goto/16 :goto_1

    :cond_12
    const v0, 0x7f0d027c

    if-ne p2, v0, :cond_13

    const-string v2, "move_to"

    goto/16 :goto_1

    :cond_13
    const v0, 0x7f0d027d

    if-ne p2, v0, :cond_14

    const-string v2, "change_folders"

    goto/16 :goto_1

    :cond_14
    const v0, 0x7f0d027e

    if-ne p2, v0, :cond_15

    const-string v2, "move_to_inbox"

    goto/16 :goto_1

    :cond_15
    const v0, 0x7f0d0289

    if-ne p2, v0, :cond_16

    const-string v2, "empty_trash"

    goto/16 :goto_1

    :cond_16
    const v0, 0x7f0d028a

    if-ne p2, v0, :cond_17

    const-string v2, "empty_spam"

    goto/16 :goto_1

    :cond_17
    const v0, 0x102002c

    if-ne p2, v0, :cond_18

    const-string v2, "home"

    goto/16 :goto_1

    :cond_18
    const v0, 0x7f0d027b

    if-ne p2, v0, :cond_19

    const-string v2, "inside_conversation_unread"

    goto/16 :goto_1

    :cond_19
    const v0, 0x7f0d028b

    if-ne p2, v0, :cond_1a

    const-string v2, "mark_read"

    goto/16 :goto_1

    :cond_1a
    const v0, 0x7f0d00d8

    if-ne p2, v0, :cond_1b

    const-string v2, "mark_unread"

    goto/16 :goto_1

    :cond_1b
    const v0, 0x7f0d0287

    if-ne p2, v0, :cond_1c

    const-string v2, "toggle_read_unread"

    goto/16 :goto_1

    :cond_1c
    const v0, 0x7f0d0283

    if-ne p2, v0, :cond_1d

    const-string v2, "show_original"

    goto/16 :goto_1

    :cond_1d
    const v0, 0x7f0d0270

    if-ne p2, v0, :cond_1e

    const-string v2, "add_file_attachment"

    goto/16 :goto_1

    :cond_1e
    const v0, 0x7f0d0271

    if-ne p2, v0, :cond_1f

    const-string v2, "add_photo_attachment"

    goto/16 :goto_1

    :cond_1f
    const v0, 0x7f0d0125

    if-ne p2, v0, :cond_20

    const-string v2, "add_cc_bcc"

    goto/16 :goto_1

    :cond_20
    const v0, 0x7f0d0274

    if-ne p2, v0, :cond_21

    const-string v2, "save_draft"

    goto/16 :goto_1

    :cond_21
    const v0, 0x7f0d0273

    if-ne p2, v0, :cond_22

    const-string v2, "send_message"

    goto/16 :goto_1

    :cond_22
    const v0, 0x7f0d0275

    if-ne p2, v0, :cond_23

    const-string v2, "compose_discard_draft"

    goto/16 :goto_1

    :cond_23
    const v0, 0x7f0d028d

    if-ne p2, v0, :cond_24

    const-string v2, "search"

    goto/16 :goto_1

    :cond_24
    const v0, 0x7f0d0282

    if-ne p2, v0, :cond_25

    const-string v2, "print_all"

    goto/16 :goto_1

    :cond_25
    const v0, 0x7f0d0292

    if-ne p2, v0, :cond_26

    const-string v2, "print_message"

    goto/16 :goto_1

    :cond_26
    const v0, 0x7f0d0136

    if-ne p2, v0, :cond_27

    const-string v2, "star"

    goto/16 :goto_1

    :cond_27
    const v0, 0x7f0d028e

    if-ne p2, v0, :cond_28

    const-string v2, "unstar"

    goto/16 :goto_1

    :cond_28
    const v0, 0x7f0d0169

    if-ne p2, v0, :cond_29

    const-string v2, "reply"

    goto/16 :goto_1

    :cond_29
    const v0, 0x7f0d016a

    if-ne p2, v0, :cond_2a

    const-string v2, "reply_all"

    goto/16 :goto_1

    :cond_2a
    const v0, 0x7f0d016b

    if-ne p2, v0, :cond_2b

    const-string v2, "forward"

    goto/16 :goto_1

    :cond_2b
    const v0, 0x7f0d0168

    if-ne p2, v0, :cond_2c

    const-string v2, "edit_draft"

    goto/16 :goto_1

    :cond_2c
    const v0, 0x7f0d0170

    if-ne p2, v0, :cond_2d

    const-string v2, "expand_message_details"

    goto/16 :goto_1

    :cond_2d
    const v0, 0x7f0d0151

    if-eq p2, v0, :cond_2e

    const v0, 0x7f0d0171

    if-ne p2, v0, :cond_2f

    :cond_2e
    const-string v2, "collapse_message_details"

    goto/16 :goto_1

    :cond_2f
    const v0, 0x7f0d014f

    if-ne p2, v0, :cond_30

    const-string v2, "message_upper_header"

    goto/16 :goto_1

    :cond_30
    const v0, 0x7f0d029e

    if-eq p2, v0, :cond_31

    const v0, 0x7f0d02a8

    if-ne p2, v0, :cond_32

    :cond_31
    const-string v2, "download_again"

    goto/16 :goto_1

    :cond_32
    const v0, 0x7f0d02a3

    if-ne p2, v0, :cond_33

    const-string v2, "photo_save"

    goto/16 :goto_1

    :cond_33
    const v0, 0x7f0d02a4

    if-ne p2, v0, :cond_34

    const-string v2, "photo_save_all"

    goto/16 :goto_1

    :cond_34
    const v0, 0x7f0d02a5

    if-ne p2, v0, :cond_35

    const-string v2, "photo_share"

    goto/16 :goto_1

    :cond_35
    const v0, 0x7f0d02a6

    if-ne p2, v0, :cond_36

    const-string v2, "photo_share_all"

    goto/16 :goto_1

    :cond_36
    const v0, 0x7f0d0163

    if-ne p2, v0, :cond_37

    const-string v2, "show_pictures"

    goto/16 :goto_1

    :cond_37
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 68
    :cond_38
    const v0, 0x7f0d00e0

    if-ne p2, v0, :cond_39

    .line 69
    const-string v2, "star_ad"

    goto/16 :goto_2

    .line 70
    :cond_39
    const v0, 0x7f0d00e1

    if-ne p2, v0, :cond_3a

    .line 71
    const-string v2, "forward_ad"

    goto/16 :goto_2

    .line 73
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2
.end method

.method public final ba(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 81
    invoke-static {}, Lcom/android/mail/a/a;->or()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "GmailAnalytics"

    const-string v1, "sendView=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->BF()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/ah;->ba(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 28
    invoke-static {}, Lcom/android/mail/a/a;->or()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v0, "GmailAnalytics"

    const-string v1, "activityStart=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 31
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->BE()Lcom/google/analytics/tracking/android/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/m;->e(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public final f(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 89
    invoke-static {}, Lcom/android/mail/a/a;->or()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "GmailAnalytics"

    const-string v1, "setCustomDim #%d val=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->BF()Lcom/google/analytics/tracking/android/ah;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/analytics/tracking/android/ah;->f(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final f(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 36
    invoke-static {}, Lcom/android/mail/a/a;->or()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string v0, "GmailAnalytics"

    const-string v1, "activityStop=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    invoke-static {}, Lcom/google/analytics/tracking/android/m;->BE()Lcom/google/analytics/tracking/android/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/m;->f(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gm/C;->aXP:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iput-object p1, p0, Lcom/google/android/gm/C;->aXP:Ljava/lang/String;

    .line 114
    invoke-static {p1}, Lcom/google/android/gm/c/c;->ft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    const/4 v1, 0x1

    invoke-static {v0}, Lcom/google/android/gm/c/c;->fs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/C;->f(ILjava/lang/String;)V

    .line 118
    const-string v1, "set_account"

    invoke-static {v0}, Lcom/google/android/gm/c/c;->fu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/C;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 121
    :cond_0
    return-void
.end method

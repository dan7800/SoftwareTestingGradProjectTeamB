.class public final Lcom/android/mail/utils/NotificationActionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aPJ:J

.field public static final aPK:Lcom/android/mail/utils/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/utils/X",
            "<",
            "Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final aPL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/mail/providers/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field public static final aPM:Lcom/android/mail/utils/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mail/utils/NotificationActionUtils;->aPJ:J

    .line 66
    new-instance v0, Lcom/android/mail/utils/X;

    invoke-direct {v0}, Lcom/android/mail/utils/X;-><init>()V

    sput-object v0, Lcom/android/mail/utils/NotificationActionUtils;->aPK:Lcom/android/mail/utils/X;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mail/utils/NotificationActionUtils;->aPL:Ljava/util/Set;

    .line 81
    new-instance v0, Lcom/android/mail/utils/Z;

    invoke-direct {v0}, Lcom/android/mail/utils/Z;-><init>()V

    sput-object v0, Lcom/android/mail/utils/NotificationActionUtils;->aPM:Lcom/android/mail/utils/Z;

    return-void
.end method

.method private static B(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "wear"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 475
    invoke-static {p0, p1, p2, p3}, Lcom/android/mail/compose/g;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 477
    const-string v1, "notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    return-object v0
.end method

.method private static a(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 854
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils;->aPK:Lcom/android/mail/utils/X;

    invoke-virtual {v0, p1}, Lcom/android/mail/utils/X;->delete(I)V

    .line 856
    if-eqz p2, :cond_0

    .line 857
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 859
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 861
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Landroid/support/v4/app/ab;Landroid/support/v4/app/ao;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Folder;IJLjava/util/Set;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/support/v4/app/ab;",
            "Landroid/support/v4/app/ao;",
            "Lcom/android/mail/providers/Account;",
            "Lcom/android/mail/providers/Conversation;",
            "Lcom/android/mail/providers/Message;",
            "Lcom/android/mail/providers/Folder;",
            "IJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->cB(Ljava/lang/String;)Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p7 .. p7}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPU:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPU:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPV:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPV:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPW:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPW:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 208
    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    new-instance v5, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;

    move-object/from16 v0, p5

    iget-wide v11, v0, Lcom/android/mail/providers/Conversation;->id:J

    move-object/from16 v0, p6

    iget-object v13, v0, Lcom/android/mail/providers/Message;->aBd:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-wide v14, v0, Lcom/android/mail/providers/Message;->id:J

    const/16 v18, 0x0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v16, p9

    move/from16 v19, p8

    invoke-direct/range {v5 .. v19}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;-><init>(Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Folder;JLjava/lang/String;JJII)V

    sget-object v7, Lcom/android/mail/utils/J;->aPN:[I

    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid NotificationActionType"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    :cond_5
    invoke-virtual/range {p7 .. p7}, Lcom/android/mail/providers/Folder;->uQ()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPV:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPV:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPW:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPW:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPU:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPU:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPV:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPV:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPW:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPW:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-object v6, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 208
    :pswitch_0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/aY;->c(Landroid/content/Context;)Landroid/support/v4/app/aY;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4, v7}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v7, "extra-notification-folder"

    move-object/from16 v0, p7

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/support/v4/app/aY;->a(Landroid/content/Intent;)Landroid/support/v4/app/aY;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/support/v4/app/aY;->a(Landroid/content/Intent;)Landroid/support/v4/app/aY;

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/support/v4/app/aY;->m(I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 211
    :goto_3
    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->q(Lcom/android/mail/providers/Folder;)I

    move-result v20

    .line 213
    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->r(Lcom/android/mail/providers/Folder;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 217
    move-object/from16 v0, p2

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Landroid/support/v4/app/ab;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/ab;

    .line 221
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/mail/providers/Message;->uri:Landroid/net/Uri;

    move-object/from16 v23, v0

    new-instance v5, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;

    move-object/from16 v0, p5

    iget-wide v11, v0, Lcom/android/mail/providers/Conversation;->id:J

    move-object/from16 v0, p6

    iget-object v13, v0, Lcom/android/mail/providers/Message;->aBd:Ljava/lang/String;

    move-object/from16 v0, p6

    iget-wide v14, v0, Lcom/android/mail/providers/Message;->id:J

    const/16 v18, 0x1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v16, p9

    move/from16 v19, p8

    invoke-direct/range {v5 .. v19}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;-><init>(Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Folder;JLjava/lang/String;JJII)V

    sget-object v4, Lcom/android/mail/utils/J;->aPN:[I

    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid NotificationActionType"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :pswitch_1
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/aY;->c(Landroid/content/Context;)Landroid/support/v4/app/aY;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4, v7}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v7, "extra-notification-folder"

    move-object/from16 v0, p7

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/support/v4/app/aY;->a(Landroid/content/Intent;)Landroid/support/v4/app/aY;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/support/v4/app/aY;->a(Landroid/content/Intent;)Landroid/support/v4/app/aY;

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/support/v4/app/aY;->m(I)Landroid/app/PendingIntent;

    move-result-object v4

    goto/16 :goto_3

    :pswitch_2
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.android.mail.action.notification.ARCHIVE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    const/high16 v5, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-static {v0, v1, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto/16 :goto_3

    :pswitch_3
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.android.mail.action.notification.DELETE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    const/high16 v5, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-static {v0, v1, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto/16 :goto_3

    .line 221
    :pswitch_4
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/aY;->c(Landroid/content/Context;)Landroid/support/v4/app/aY;

    move-result-object v5

    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    if-ne v6, v4, :cond_e

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v4}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p5

    iget-object v7, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-static {v7}, Lcom/android/mail/utils/NotificationActionUtils;->B(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v7, "extra-notification-folder"

    move-object/from16 v0, p7

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v7, "extra-notification-conversation"

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/support/v4/app/aY;->a(Landroid/content/Intent;)Landroid/support/v4/app/aY;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/support/v4/app/aY;->a(Landroid/content/Intent;)Landroid/support/v4/app/aY;

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/support/v4/app/aY;->m(I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 225
    :goto_5
    new-instance v7, Landroid/support/v4/app/Y;

    sget-object v5, Lcom/android/mail/utils/J;->aPN:[I

    invoke-virtual {v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_2

    move/from16 v5, v20

    :goto_6
    move-object/from16 v0, v22

    invoke-direct {v7, v5, v0, v4}, Landroid/support/v4/app/Y;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 230
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPW:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    if-eq v6, v4, :cond_c

    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    if-ne v6, v4, :cond_d

    .line 232
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 234
    new-instance v5, Landroid/support/v4/app/aN;

    const-string v6, "wear_reply"

    invoke-direct {v5, v6}, Landroid/support/v4/app/aN;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/support/v4/app/aN;->h(Ljava/lang/CharSequence;)Landroid/support/v4/app/aN;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/aN;->a([Ljava/lang/CharSequence;)Landroid/support/v4/app/aN;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/aN;->ar()Landroid/support/v4/app/aL;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/support/v4/app/Y;->a(Landroid/support/v4/app/aL;)Landroid/support/v4/app/Y;

    .line 241
    :cond_d
    invoke-virtual {v7}, Landroid/support/v4/app/Y;->al()Landroid/support/v4/app/W;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/W;)Landroid/support/v4/app/ao;

    .line 242
    const-string v4, "NotifActionUtils"

    const-string v5, "Adding wearable action!!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 221
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_4

    :pswitch_5
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPU:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    if-ne v6, v4, :cond_f

    const-string v4, "com.android.mail.action.notification.ARCHIVE"

    :goto_7
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/mail/utils/NotificationActionUtils;->B(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v7, v5}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    const/high16 v4, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-static {v0, v1, v7, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    goto/16 :goto_5

    :cond_f
    const-string v4, "com.android.mail.action.notification.DELETE"

    goto :goto_7

    .line 225
    :pswitch_6
    const v5, 0x7f020106

    goto :goto_6

    :pswitch_7
    const v5, 0x7f020107

    goto :goto_6

    :pswitch_8
    const v5, 0x7f020104

    goto/16 :goto_6

    :pswitch_9
    const v5, 0x7f020105

    goto/16 :goto_6

    .line 244
    :cond_10
    return-void

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 221
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 225
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 868
    const-string v2, "NotifActionUtils"

    const-string v3, "resendNotifications account: %s, folder: %s"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p1, :cond_2

    move-object v0, v1

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x1

    if-nez p2, :cond_3

    :goto_1
    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 872
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mail.action.RESEND_NOTIFICATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    if-eqz p1, :cond_0

    .line 875
    const-string v1, "accountUri"

    iget-object v2, p1, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 877
    :cond_0
    if-eqz p2, :cond_1

    .line 878
    const-string v1, "folderUri"

    iget-object v2, p2, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v2, v2, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 880
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 881
    return-void

    .line 868
    :cond_2
    const-string v0, "NotifActionUtils"

    invoke-virtual {p1}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/mail/utils/E;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "NotifActionUtils"

    iget-object v5, p2, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/android/mail/utils/E;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 6

    .prologue
    .line 678
    const-string v0, "NotifActionUtils"

    const-string v1, "registerUndoTimeout for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AV()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 681
    sget-wide v0, Lcom/android/mail/utils/NotificationActionUtils;->aPJ:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 682
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/mail/utils/NotificationActionUtils;->aPJ:J

    .line 686
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/android/mail/utils/NotificationActionUtils;->aPJ:J

    add-long/2addr v2, v4

    .line 691
    invoke-static {p0, p1}, Lcom/android/mail/utils/NotificationActionUtils;->c(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 694
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 695
    return-void
.end method

.method private static a(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 906
    invoke-virtual {p1, v0, v1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 907
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 908
    const-string v1, "com.android.mail.extra.EXTRA_NOTIFICATION_ACTION"

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 909
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 5

    .prologue
    .line 704
    const-string v0, "NotifActionUtils"

    const-string v1, "cancelUndoTimeout for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AV()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 707
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 710
    invoke-static {p0, p1}, Lcom/android/mail/utils/NotificationActionUtils;->c(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 713
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 714
    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 722
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mail.action.notification.UNDO_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    invoke-static {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->a(Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)Lcom/android/mail/providers/Conversation;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 725
    invoke-static {v0, p1}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 727
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->oN()Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mail/providers/Folder;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    .line 729
    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 732
    return-object v0
.end method

.method public static d(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 740
    const-string v0, "NotifActionUtils"

    const-string v1, "processDestructiveAction: %s"

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AV()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 743
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AV()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v0

    .line 745
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v1

    .line 746
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v2

    .line 748
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 749
    iget-object v1, v1, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "forceUiNotifications"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 752
    sget-object v4, Lcom/android/mail/utils/J;->aPN:[I

    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 778
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified NotificationActionType is not a destructive action."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :pswitch_0
    invoke-virtual {v2}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 757
    const-string v2, "operation"

    const-string v4, "archive"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {v3, v1, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 775
    :goto_0
    return-void

    .line 763
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 765
    iget-object v2, v2, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v2, v2, Lcom/android/mail/utils/p;->aPj:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 767
    const-string v4, "folders_updated"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {v3, v1, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 774
    :pswitch_1
    invoke-virtual {v3, v1, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static e(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 7

    .prologue
    const/high16 v6, 0x10000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 788
    const-string v0, "NotifActionUtils"

    const-string v1, "createUndoNotification for %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AV()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 791
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->a(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v1

    .line 795
    const-string v0, "NotifActionUtils"

    const-string v2, "createUndoNotification for %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AV()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Landroid/support/v4/app/ab;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ab;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0200df

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ab;->h(I)Landroid/support/v4/app/ab;

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getWhen()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/ab;->a(J)Landroid/support/v4/app/ab;

    const-string v2, "email"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ab;->d(Ljava/lang/String;)Landroid/support/v4/app/ab;

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0400c3

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f0d0179

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AY()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.mail.action.notification.UNDO"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->a(Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)Lcom/android/mail/providers/Conversation;

    move-result-object v5

    iget-object v5, v5, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v4, p1}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    invoke-static {p0, v1, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v5, 0x7f0d0239

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ab;->a(Landroid/widget/RemoteViews;)Landroid/support/v4/app/ab;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.mail.action.notification.DESTRUCT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->a(Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)Lcom/android/mail/providers/Conversation;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mail/providers/Conversation;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {v2, p1}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Intent;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    invoke-static {p0, v1, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ab;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/ab;

    invoke-virtual {v0}, Landroid/support/v4/app/ab;->build()Landroid/app/Notification;

    move-result-object v2

    .line 798
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 800
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 802
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils;->aPK:Lcom/android/mail/utils/X;

    invoke-virtual {v0, v1, p1}, Lcom/android/mail/utils/X;->put(ILjava/lang/Object;)V

    .line 803
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils;->aPM:Lcom/android/mail/utils/Z;

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->getWhen()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mail/utils/Z;->put(IJ)V

    .line 804
    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 811
    const-string v0, "NotifActionUtils"

    const-string v1, "cancelUndoNotification for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AV()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 814
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 815
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v1

    .line 816
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->pg()Lcom/android/mail/providers/Conversation;

    move-result-object v2

    .line 817
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/mail/utils/N;->a(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v3

    .line 823
    sget-object v4, Lcom/android/mail/utils/NotificationActionUtils;->aPL:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-static {p0, v3, v5}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Context;IZ)V

    .line 825
    invoke-static {p0, v0, v1}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Context;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V

    .line 826
    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 834
    const-string v0, "NotifActionUtils"

    const-string v1, "processUndoNotification, %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->AV()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 837
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->oN()Lcom/android/mail/providers/Account;

    move-result-object v0

    .line 838
    invoke-virtual {p1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->vT()Lcom/android/mail/providers/Folder;

    move-result-object v1

    .line 839
    invoke-virtual {v0}, Lcom/android/mail/providers/Account;->uf()Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/mail/utils/N;->a(Landroid/accounts/Account;Lcom/android/mail/providers/Folder;)I

    move-result v0

    .line 841
    invoke-static {p0, v0, v5}, Lcom/android/mail/utils/NotificationActionUtils;->a(Landroid/content/Context;IZ)V

    .line 842
    sget-object v1, Lcom/android/mail/utils/NotificationActionUtils;->aPM:Lcom/android/mail/utils/Z;

    invoke-virtual {v1, v0}, Lcom/android/mail/utils/Z;->delete(I)V

    .line 843
    invoke-static {p0, p1}, Lcom/android/mail/utils/NotificationActionUtils;->d(Landroid/content/Context;Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)V

    .line 844
    return-void
.end method

.method public static q(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 884
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils;->aPK:Lcom/android/mail/utils/X;

    invoke-virtual {v0}, Lcom/android/mail/utils/X;->Bb()Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 885
    return-void
.end method

.method public static r(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 888
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils;->aPK:Lcom/android/mail/utils/X;

    invoke-virtual {v0}, Lcom/android/mail/utils/X;->Bb()Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 889
    return-void
.end method

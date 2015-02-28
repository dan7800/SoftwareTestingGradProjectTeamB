.class final Landroid/support/v4/app/ag;
.super Landroid/support/v4/app/af;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 743
    invoke-direct {p0}, Landroid/support/v4/app/af;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/support/v4/app/ab;)Landroid/app/Notification;
    .locals 29

    .prologue
    .line 746
    new-instance v1, Landroid/support/v4/app/as;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ab;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/ab;->dg:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/ab;->dh:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/ab;->dm:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/ab;->dk:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/ab;->dn:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/ab;->di:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/ab;->dj:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/ab;->dl:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/ab;->dt:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/ab;->du:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/app/ab;->dv:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/ab;->dp:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ab;->dq:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/ab;->do:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ab;->ds:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ab;->dA:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ab;->dB:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ab;->dG:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ab;->cV:Landroid/os/Bundle;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/ab;->dC:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/ab;->dD:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ab;->dE:Landroid/app/Notification;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ab;->dw:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/ab;->dx:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/ab;->dy:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v1 .. v28}, Landroid/support/v4/app/as;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;)V

    .line 753
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ab;->dz:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/support/v4/app/V;->a(Landroid/support/v4/app/T;Ljava/util/ArrayList;)V

    .line 754
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/ab;->dr:Landroid/support/v4/app/an;

    invoke-static {v1, v2}, Landroid/support/v4/app/V;->a(Landroid/support/v4/app/U;Landroid/support/v4/app/an;)V

    .line 755
    invoke-virtual {v1}, Landroid/support/v4/app/as;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

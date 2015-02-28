.class public final Lcom/android/email/SecurityPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Mb:Lcom/android/email/SecurityPolicy;


# instance fields
.field private Mc:Landroid/app/admin/DevicePolicyManager;

.field private final Md:Landroid/content/ComponentName;

.field private Me:Lcom/android/emailcommon/provider/Policy;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SecurityPolicy;->Mb:Lcom/android/email/SecurityPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 90
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->Mc:Landroid/app/admin/DevicePolicyManager;

    .line 91
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    .line 92
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->Me:Lcom/android/emailcommon/provider/Policy;

    .line 93
    return-void
.end method

.method private V(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 743
    if-nez p1, :cond_1

    .line 744
    iget-object v6, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->XT:[Ljava/lang/String;

    const-string v3, "policyKey IS NOT NULL AND policyKey!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Email administration disabled; deleting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secured account(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "uiaccount"

    invoke-static {v4, v2, v3}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->he()V

    invoke-static {v6}, Lcom/android/email/provider/b;->F(Landroid/content/Context;)V

    .line 746
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;JZ)V
    .locals 3

    .prologue
    .line 459
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_0

    .line 461
    invoke-static {p0, v0, p3}, Lcom/android/email/SecurityPolicy;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 462
    if-eqz p3, :cond_0

    .line 464
    invoke-static {p0}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v1

    .line 466
    invoke-interface {v1, v0}, Lcom/android/email/m;->a(Lcom/android/emailcommon/provider/Account;)V

    .line 469
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V
    .locals 3

    .prologue
    .line 480
    if-eqz p2, :cond_0

    .line 481
    iget v0, p1, Lcom/android/emailcommon/provider/Account;->dM:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Lcom/android/emailcommon/provider/Account;->dM:I

    .line 485
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 486
    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/Account;->dM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/Account;->a(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 488
    return-void

    .line 483
    :cond_0
    iget v0, p1, Lcom/android/emailcommon/provider/Account;->dM:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p1, Lcom/android/emailcommon/provider/Account;->dM:I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v10, -0x1

    .line 842
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->w(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v9

    .line 843
    packed-switch p1, :pswitch_data_0

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 845
    :pswitch_0
    invoke-direct {v9, v7}, Lcom/android/email/SecurityPolicy;->V(Z)V

    goto :goto_0

    .line 848
    :pswitch_1
    invoke-direct {v9, v8}, Lcom/android/email/SecurityPolicy;->V(Z)V

    goto :goto_0

    .line 853
    :pswitch_2
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->ab(Landroid/content/Context;)V

    .line 855
    invoke-static {p0}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v0

    .line 858
    invoke-interface {v0}, Lcom/android/email/m;->gI()V

    goto :goto_0

    .line 861
    :pswitch_3
    iget-object v0, v9, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->XT:[Ljava/lang/String;

    const-string v3, "passwordExpirationDays>0"

    const/4 v4, 0x0

    const-string v5, "passwordExpirationDays ASC"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/b/s;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v12

    if-gez v1, :cond_1

    move-wide v2, v10

    :goto_1
    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    invoke-direct {v9}, Lcom/android/email/SecurityPolicy;->hd()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iget-object v4, v9, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v4, v10

    cmp-long v1, v4, v12

    if-gez v1, :cond_2

    move v1, v7

    :goto_2
    invoke-static {v0}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v4

    if-nez v1, :cond_3

    invoke-interface {v4, v2, v3}, Lcom/android/email/m;->g(J)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Policy;->z(Landroid/content/Context;J)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    move v1, v8

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4, v2, v3}, Lcom/android/email/m;->h(J)V

    goto :goto_0

    .line 843
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 580
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->aa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    .line 582
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/email/service/o;->accountType:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 585
    const-string v2, "force"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 586
    const-string v2, "do_not_retry"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    const-string v2, "expedited"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 588
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 589
    const-string v1, "Email"

    const-string v2, "requestSync SecurityPolicy syncAccount %s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 591
    return-void
.end method

.method private hb()Lcom/android/emailcommon/provider/Policy;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const v9, 0x7fffffff

    const/high16 v8, -0x80000000

    const/4 v7, 0x0

    .line 121
    .line 122
    new-instance v6, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 123
    iput v8, v6, Lcom/android/emailcommon/provider/Policy;->ZM:I

    .line 124
    iput v8, v6, Lcom/android/emailcommon/provider/Policy;->ZL:I

    .line 125
    iput v9, v6, Lcom/android/emailcommon/provider/Policy;->ZN:I

    .line 126
    iput v8, v6, Lcom/android/emailcommon/provider/Policy;->ZP:I

    .line 127
    iput v9, v6, Lcom/android/emailcommon/provider/Policy;->ZO:I

    .line 128
    iput v8, v6, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    .line 129
    iput v9, v6, Lcom/android/emailcommon/provider/Policy;->ZR:I

    .line 130
    iput-boolean v7, v6, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    .line 131
    iput-boolean v7, v6, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    .line 136
    iput-boolean v7, v6, Lcom/android/emailcommon/provider/Policy;->ZU:Z

    .line 138
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->XO:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 140
    new-instance v2, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    move v0, v7

    .line 142
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/Policy;->b(Landroid/database/Cursor;)V

    .line 144
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Aggregate from: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    :cond_0
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZM:I

    iget v3, v6, Lcom/android/emailcommon/provider/Policy;->ZM:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->ZM:I

    .line 149
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZL:I

    iget v3, v6, Lcom/android/emailcommon/provider/Policy;->ZL:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->ZL:I

    .line 150
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZN:I

    if-lez v0, :cond_1

    .line 151
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZN:I

    iget v3, v6, Lcom/android/emailcommon/provider/Policy;->ZN:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->ZN:I

    .line 154
    :cond_1
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZR:I

    if-lez v0, :cond_2

    .line 155
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZR:I

    iget v3, v6, Lcom/android/emailcommon/provider/Policy;->ZR:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->ZR:I

    .line 158
    :cond_2
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZP:I

    if-lez v0, :cond_3

    .line 159
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZP:I

    iget v3, v6, Lcom/android/emailcommon/provider/Policy;->ZP:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->ZP:I

    .line 162
    :cond_3
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZO:I

    if-lez v0, :cond_4

    .line 163
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZO:I

    iget v3, v6, Lcom/android/emailcommon/provider/Policy;->ZO:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->ZO:I

    .line 166
    :cond_4
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    if-lez v0, :cond_5

    .line 167
    iget v0, v2, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    iget v3, v6, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    .line 170
    :cond_5
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    iget-boolean v3, v2, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    or-int/2addr v0, v3

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->ZS:Z

    .line 171
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    iget-boolean v3, v2, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    or-int/2addr v0, v3

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    .line 172
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->ZW:Z

    iget-boolean v3, v2, Lcom/android/emailcommon/provider/Policy;->ZW:Z

    or-int/2addr v0, v3

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->ZW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 176
    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 178
    if-eqz v0, :cond_f

    .line 180
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->ZM:I

    if-ne v0, v8, :cond_7

    iput v7, v6, Lcom/android/emailcommon/provider/Policy;->ZM:I

    .line 181
    :cond_7
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->ZL:I

    if-ne v0, v8, :cond_8

    iput v7, v6, Lcom/android/emailcommon/provider/Policy;->ZL:I

    .line 182
    :cond_8
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->ZN:I

    if-ne v0, v9, :cond_9

    iput v7, v6, Lcom/android/emailcommon/provider/Policy;->ZN:I

    .line 183
    :cond_9
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->ZR:I

    if-ne v0, v9, :cond_a

    iput v7, v6, Lcom/android/emailcommon/provider/Policy;->ZR:I

    .line 184
    :cond_a
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->ZP:I

    if-ne v0, v8, :cond_b

    iput v7, v6, Lcom/android/emailcommon/provider/Policy;->ZP:I

    .line 185
    :cond_b
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->ZO:I

    if-ne v0, v9, :cond_c

    .line 186
    iput v7, v6, Lcom/android/emailcommon/provider/Policy;->ZO:I

    .line 187
    :cond_c
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    if-ne v0, v8, :cond_d

    .line 188
    iput v7, v6, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    .line 189
    :cond_d
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 190
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calculated Aggregate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_e
    move-object v0, v6

    .line 197
    :goto_1
    return-object v0

    .line 176
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 194
    :cond_f
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 195
    const-string v0, "Email"

    const-string v1, "Calculated Aggregate: no policy"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    :cond_10
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->aah:Lcom/android/emailcommon/provider/Policy;

    goto :goto_1
.end method

.method private declared-synchronized hc()Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Me:Lcom/android/emailcommon/provider/Policy;

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->hb()Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->Me:Lcom/android/emailcommon/provider/Policy;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Me:Lcom/android/emailcommon/provider/Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized hd()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Mc:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->Mc:Landroid/app/admin/DevicePolicyManager;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Mc:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized w(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;
    .locals 3

    .prologue
    .line 79
    const-class v1, Lcom/android/email/SecurityPolicy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/SecurityPolicy;->Mb:Lcom/android/email/SecurityPolicy;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/email/SecurityPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/email/SecurityPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/SecurityPolicy;->Mb:Lcom/android/email/SecurityPolicy;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/email/SecurityPolicy;->Mb:Lcom/android/email/SecurityPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static x(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 808
    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->XT:[Ljava/lang/String;

    const-string v3, "passwordExpirationDays>0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 811
    if-nez v1, :cond_2

    move v0, v7

    .line 833
    :goto_0
    return v0

    .line 815
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 816
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 817
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/Policy;->z(Landroid/content/Context;J)J

    move-result-wide v2

    .line 818
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 819
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    .line 820
    if-eqz v4, :cond_0

    .line 822
    const/4 v0, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/email/SecurityPolicy;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 824
    const-string v0, "uiaccountdata"

    invoke-static {v0, v2, v3}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 825
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    .line 827
    goto :goto_1

    .line 831
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    goto :goto_1
.end method


# virtual methods
.method public final a(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    .line 601
    if-nez v2, :cond_0

    .line 662
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x0

    .line 605
    iget-wide v4, v2, Lcom/android/emailcommon/provider/Account;->XJ:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-wide v4, v2, Lcom/android/emailcommon/provider/Account;->XJ:J

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/Policy;->y(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    .line 610
    :cond_1
    if-eqz v0, :cond_3

    if-eqz p4, :cond_3

    .line 611
    iget-boolean v1, v0, Lcom/android/emailcommon/provider/Policy;->ZX:Z

    iget-boolean v3, p3, Lcom/android/emailcommon/provider/Policy;->ZX:Z

    if-ne v1, v3, :cond_2

    iget v1, v0, Lcom/android/emailcommon/provider/Policy;->ZZ:I

    iget v3, p3, Lcom/android/emailcommon/provider/Policy;->ZZ:I

    if-eq v1, v3, :cond_3

    .line 613
    :cond_2
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p3}, Lcom/android/emailcommon/provider/Policy;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;)V

    .line 617
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, p3}, Lcom/android/emailcommon/provider/Policy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    const/4 v0, 0x1

    move v1, v0

    .line 618
    :goto_1
    if-nez v1, :cond_8

    iget-object v0, v2, Lcom/android/emailcommon/provider/Account;->XH:Ljava/lang/String;

    invoke-static {p4, v0}, Lcom/android/emailcommon/b/r;->v(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 620
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "setAccountPolicy; policy unchanged"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 626
    :goto_2
    const/4 v0, 0x0

    .line 627
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v3

    .line 629
    iget-object v4, p3, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 631
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Notify policies for "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " not supported."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 633
    const/4 v0, 0x1

    .line 634
    if-eqz p5, :cond_5

    .line 635
    invoke-interface {v3, v2}, Lcom/android/email/m;->c(Lcom/android/emailcommon/provider/Account;)V

    .line 638
    :cond_5
    const-string v1, "uiaccountdata"

    invoke-static {v1, p1, p2}, Lcom/android/email/provider/EmailProvider;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 639
    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 661
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/android/email/SecurityPolicy;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    goto/16 :goto_0

    .line 617
    :cond_7
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 622
    :cond_8
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    sget-object v4, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/emailcommon/provider/Policy;->lB()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v2, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "policyKey"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "securitySyncKey"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-wide v4, v2, Lcom/android/emailcommon/provider/Account;->XJ:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    sget-object v4, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v2, Lcom/android/emailcommon/provider/Account;->XJ:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/provider/Account;->X(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/android/email/SecurityPolicy;->b(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    :goto_5
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->he()V

    goto/16 :goto_2

    .line 622
    :cond_a
    sget-object v4, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v2, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "securitySyncKey"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "policyKey"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exception setting account policy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_b
    invoke-virtual {p0, p3}, Lcom/android/email/SecurityPolicy;->a(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 641
    if-eqz v1, :cond_c

    .line 642
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Notify policies for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 644
    if-eqz p5, :cond_6

    .line 646
    invoke-interface {v3, v2}, Lcom/android/email/m;->b(Lcom/android/emailcommon/provider/Account;)V

    goto/16 :goto_3

    .line 649
    :cond_c
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v3, "Policy is active and unchanged; do not notify."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3

    .line 652
    :cond_d
    const/4 v0, 0x1

    .line 653
    sget-object v1, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Notify policies for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " are not being enforced."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 655
    if-eqz p5, :cond_6

    .line 657
    invoke-interface {v3, v2}, Lcom/android/email/m;->a(Lcom/android/emailcommon/provider/Account;)V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_5
.end method

.method public final a(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/email/SecurityPolicy;->b(Lcom/android/emailcommon/provider/Policy;)I

    move-result v1

    .line 251
    sget-boolean v2, Lcom/android/email/b;->DEBUG:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isActive for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    const-string v3, "FALSE -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    .line 255
    const-string v3, "no_admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 258
    const-string v3, "config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    .line 261
    const-string v3, "password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_2
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    .line 264
    const-string v3, "encryption "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_3
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    .line 267
    const-string v3, "protocol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_4
    const-string v3, "Email"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 271
    :cond_5
    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public final b(Lcom/android/emailcommon/provider/Policy;)I
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 321
    if-nez p1, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->hc()Lcom/android/emailcommon/provider/Policy;

    move-result-object p1

    .line 325
    :cond_0
    sget-object v0, Lcom/android/emailcommon/provider/Policy;->aah:Lcom/android/emailcommon/provider/Policy;

    if-ne p1, v0, :cond_1

    .line 397
    :goto_0
    return v2

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->hd()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 330
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->hj()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 332
    iget v0, p1, Lcom/android/emailcommon/provider/Policy;->ZM:I

    if-lez v0, :cond_10

    .line 333
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    iget v5, p1, Lcom/android/emailcommon/provider/Policy;->ZM:I

    if-ge v0, v5, :cond_10

    move v0, v1

    .line 337
    :goto_1
    iget v5, p1, Lcom/android/emailcommon/provider/Policy;->ZL:I

    if-lez v5, :cond_f

    .line 338
    iget-object v5, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v5

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->lV()I

    move-result v6

    if-ge v5, v6, :cond_e

    .line 341
    :goto_2
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v0

    if-nez v0, :cond_2

    .line 342
    or-int/lit8 v1, v1, 0x4

    .line 345
    :cond_2
    :goto_3
    iget v0, p1, Lcom/android/emailcommon/provider/Policy;->ZR:I

    if-lez v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    iget v0, p1, Lcom/android/emailcommon/provider/Policy;->ZR:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    .line 348
    or-int/lit8 v1, v1, 0x2

    .line 351
    :cond_3
    iget v0, p1, Lcom/android/emailcommon/provider/Policy;->ZO:I

    if-lez v0, :cond_6

    .line 353
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 354
    cmp-long v0, v6, v10

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->lW()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_5

    .line 356
    :cond_4
    or-int/lit8 v1, v1, 0x4

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 361
    cmp-long v0, v6, v10

    if-gez v0, :cond_c

    .line 362
    :goto_4
    if-eqz v3, :cond_6

    .line 363
    or-int/lit8 v1, v1, 0x4

    .line 366
    :cond_6
    iget v0, p1, Lcom/android/emailcommon/provider/Policy;->ZP:I

    if-lez v0, :cond_7

    .line 367
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->ZP:I

    if-ge v0, v2, :cond_7

    .line 369
    or-int/lit8 v1, v1, 0x2

    .line 372
    :cond_7
    iget v0, p1, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    if-lez v0, :cond_8

    .line 373
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    iget v2, p1, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    if-ge v0, v2, :cond_8

    .line 374
    or-int/lit8 v1, v1, 0x4

    .line 377
    :cond_8
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    if-eqz v0, :cond_9

    .line 378
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->hd()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 379
    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    .line 380
    or-int/lit8 v1, v1, 0x8

    .line 383
    :cond_9
    iget-boolean v0, p1, Lcom/android/emailcommon/provider/Policy;->ZW:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 384
    or-int/lit8 v1, v1, 0x2

    .line 389
    :cond_a
    iget-object v0, p1, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 390
    or-int/lit8 v1, v1, 0x10

    :cond_b
    move v2, v1

    .line 394
    goto/16 :goto_0

    :cond_c
    move v3, v2

    .line 361
    goto :goto_4

    :cond_d
    move v2, v3

    .line 397
    goto/16 :goto_0

    :cond_e
    move v1, v0

    goto/16 :goto_2

    :cond_f
    move v1, v0

    goto/16 :goto_3

    :cond_10
    move v0, v2

    goto/16 :goto_1
.end method

.method public final d(Lcom/android/emailcommon/provider/Account;)V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/SecurityPolicy;->b(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 595
    return-void
.end method

.method public final declared-synchronized he()V
    .locals 1

    .prologue
    .line 225
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->Me:Lcom/android/emailcommon/provider/Policy;

    .line 226
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->hg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final hf()V
    .locals 3

    .prologue
    .line 236
    sget-boolean v0, Lcom/android/email/b;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "Email"

    const-string v1, "reducePolicies"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->he()V

    .line 240
    return-void
.end method

.method public final hg()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 406
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->hd()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 408
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->hc()Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    .line 410
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->aah:Lcom/android/emailcommon/provider/Policy;

    if-ne v1, v2, :cond_2

    .line 411
    sget-boolean v1, Lcom/android/email/b;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 412
    const-string v1, "Email"

    const-string v2, "setActivePolicies: none, remove admin"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 415
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->hj()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    sget-boolean v2, Lcom/android/email/b;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 417
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setActivePolicies: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 421
    :cond_3
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Policy;->lV()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 422
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/emailcommon/provider/Policy;->ZM:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 424
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/emailcommon/provider/Policy;->ZR:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 426
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/emailcommon/provider/Policy;->ZN:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 428
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Policy;->lW()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 431
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/emailcommon/provider/Policy;->ZP:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 437
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v6}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 438
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v6}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 439
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/emailcommon/provider/Policy;->ZQ:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 445
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/emailcommon/provider/Policy;->ZW:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_1
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    iget-boolean v1, v1, Lcom/android/emailcommon/provider/Policy;->ZT:Z

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    goto :goto_0

    .line 447
    :catch_0
    move-exception v2

    const-string v2, "Email"

    const-string v3, "SecurityException in setCameraDisabled, nothing changed"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public final hh()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v0

    .line 672
    invoke-interface {v0}, Lcom/android/email/m;->gJ()V

    .line 673
    return-void
.end method

.method public final hi()V
    .locals 3

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->hd()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    const-string v1, "Could not remote wipe because not device admin."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final hj()Z
    .locals 3

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/android/email/SecurityPolicy;->hd()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 698
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hk()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->Md:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final k(J)V
    .locals 7

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->k(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 501
    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->XJ:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->XJ:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Policy;->y(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    .line 504
    if-eqz v1, :cond_0

    .line 505
    sget-boolean v2, Lcom/android/email/b;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 506
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "policiesRequired for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->Xy:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 510
    :cond_2
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/email/SecurityPolicy;->a(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 513
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/o;->r(Landroid/content/Context;)Lcom/android/email/m;

    move-result-object v2

    .line 515
    iget-object v1, v1, Lcom/android/emailcommon/provider/Policy;->aag:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 516
    invoke-interface {v2, v0}, Lcom/android/email/m;->a(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 518
    :cond_3
    invoke-interface {v2, v0}, Lcom/android/email/m;->c(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0
.end method

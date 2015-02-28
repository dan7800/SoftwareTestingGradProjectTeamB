.class public final Lcom/android/email/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Lm:[Ljava/lang/String;


# instance fields
.field public final Ln:J

.field public final Lo:J

.field public final Lp:Ljava/lang/String;

.field public final Lq:J

.field public final Lr:Z

.field public final Ls:Z

.field public final Lt:Z

.field public final Lu:I

.field public final dM:I

.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/a;->Lm:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)V
    .locals 14

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/android/email/a;->Lo:J

    .line 110
    invoke-static/range {p6 .. p7}, Lcom/android/emailcommon/b/a;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/a;->Lp:Ljava/lang/String;

    .line 111
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/email/a;->mName:Ljava/lang/String;

    .line 112
    move-wide/from16 v0, p2

    iput-wide v0, p0, Lcom/android/email/a;->Ln:J

    .line 113
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/android/email/a;->Lq:J

    .line 114
    move/from16 v0, p10

    iput v0, p0, Lcom/android/email/a;->dM:I

    .line 115
    const/4 v3, 0x1

    .line 116
    const/4 v2, 0x1

    .line 117
    const/4 v5, 0x0

    .line 118
    const/4 v4, 0x0

    .line 121
    invoke-static {}, Lcom/android/emailcommon/b/s;->mk()Z

    move-result v6

    if-nez v6, :cond_0

    .line 122
    const/4 v2, 0x0

    .line 126
    :cond_0
    iget-object v6, p0, Lcom/android/email/a;->Lp:Ljava/lang/String;

    sget-object v7, Lcom/android/emailcommon/b/a;->aaX:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/emailcommon/a/i;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/email/a;->Lp:Ljava/lang/String;

    sget-object v7, Lcom/android/emailcommon/b/a;->aaY:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/emailcommon/a/i;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    :cond_1
    const/4 v3, 0x0

    .line 134
    :cond_2
    iget-object v6, p0, Lcom/android/email/a;->mName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/b/a;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    sget-object v7, Lcom/android/emailcommon/b/a;->abb:[Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/android/emailcommon/b/s;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 138
    const/4 v4, 0x0

    .line 139
    const/4 v3, 0x0

    .line 140
    const/4 v2, 0x1

    .line 144
    :goto_0
    move/from16 v0, p10

    and-int/lit16 v6, v0, 0x200

    if-eqz v6, :cond_3

    .line 145
    const/4 v4, 0x0

    .line 146
    const/4 v3, 0x0

    .line 147
    or-int/lit8 v2, v2, 0x20

    .line 151
    :cond_3
    iget-object v6, p0, Lcom/android/email/a;->mName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/b/a;->aB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lcom/android/emailcommon/b/a;->abc:[Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/android/emailcommon/b/s;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "install_non_market_apps"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    .line 158
    :goto_1
    and-int/2addr v3, v4

    .line 161
    if-nez v4, :cond_8

    .line 162
    or-int/lit8 v2, v2, 0x8

    move v4, v3

    move v5, v3

    .line 168
    :goto_2
    iget-wide v6, p0, Lcom/android/email/a;->Lo:J

    const-wide/32 v8, 0x500000

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 169
    invoke-static {p1}, Lcom/android/email/c;->m(Landroid/content/Context;)I

    move-result v6

    .line 170
    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    .line 171
    const/4 v5, 0x0

    .line 172
    const/4 v4, 0x0

    .line 173
    or-int/lit8 v2, v2, 0x2

    .line 178
    :cond_4
    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/android/email/a;->Ln:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/emailcommon/b/a;->c(JJ)Landroid/net/Uri;

    move-result-object v6

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/emailcommon/b/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    :cond_5
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/email/a;->Lp:Ljava/lang/String;

    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v6, 0x80001

    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 180
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 181
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 182
    const/4 v5, 0x0

    .line 183
    const/4 v4, 0x0

    .line 184
    or-int/lit8 v2, v2, 0x4

    .line 187
    :cond_6
    iput-boolean v5, p0, Lcom/android/email/a;->Lr:Z

    .line 188
    iput-boolean v4, p0, Lcom/android/email/a;->Ls:Z

    .line 189
    iput-boolean v3, p0, Lcom/android/email/a;->Lt:Z

    .line 190
    iput v2, p0, Lcom/android/email/a;->Lu:I

    .line 191
    return-void

    .line 156
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    move v5, v3

    goto :goto_2

    :cond_9
    move v12, v5

    move v5, v4

    move v4, v3

    move v3, v12

    goto :goto_2

    :cond_a
    move v12, v4

    move v4, v3

    move v3, v2

    move v2, v12

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 11

    .prologue
    .line 92
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ln:J

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lo:J

    iget-object v6, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Yl:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Ym:Ljava/lang/String;

    iget-wide v8, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->Lq:J

    iget v10, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->dM:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/email/a;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)V

    .line 94
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    if-ne p1, p0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 239
    goto :goto_0

    .line 242
    :cond_3
    check-cast p1, Lcom/android/email/a;

    iget-wide v2, p1, Lcom/android/email/a;->Ln:J

    iget-wide v4, p0, Lcom/android/email/a;->Ln:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final gA()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/email/a;->Lr:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/a;->Ls:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/android/email/a;->Ln:J

    iget-wide v2, p0, Lcom/android/email/a;->Ln:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Attachment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/email/a;->Ln:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/a;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/a;->Lp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/email/a;->Lo:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

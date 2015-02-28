.class public final Lcom/android/mail/browse/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ali:Lcom/android/mail/browse/c;

.field private static final mW:Ljava/lang/String;


# instance fields
.field private ald:Lcom/android/mail/providers/Message;

.field private ale:Lcom/android/mail/providers/Attachment;

.field private final alf:Lcom/android/mail/browse/d;

.field private final alg:Lcom/android/mail/browse/h;

.field private alh:Z

.field private c:Landroid/app/FragmentManager;

.field private mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/a;->mW:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/android/mail/browse/c;

    invoke-direct {v0}, Lcom/android/mail/browse/c;-><init>()V

    sput-object v0, Lcom/android/mail/browse/a;->ali:Lcom/android/mail/browse/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mail/browse/h;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/mail/browse/d;

    invoke-direct {v0, p1}, Lcom/android/mail/browse/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mail/browse/a;->alf:Lcom/android/mail/browse/d;

    .line 66
    iput-object p2, p0, Lcom/android/mail/browse/a;->alg:Lcom/android/mail/browse/h;

    .line 67
    iput-object p1, p0, Lcom/android/mail/browse/a;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mail/browse/a;->mHandler:Landroid/os/Handler;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/browse/a;->alh:Z

    .line 70
    return-void
.end method

.method public static a(Lcom/android/mail/browse/c;)V
    .locals 0

    .prologue
    .line 254
    sput-object p0, Lcom/android/mail/browse/a;->ali:Lcom/android/mail/browse/c;

    .line 255
    return-void
.end method

.method public static y(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/android/mail/browse/a;->ali:Lcom/android/mail/browse/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mail/browse/a;->ali:Lcom/android/mail/browse/c;

    invoke-virtual {v0, p0, p1}, Lcom/android/mail/browse/c;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/mail/browse/a;->c:Landroid/app/FragmentManager;

    .line 74
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Attachment;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    .line 86
    return-void
.end method

.method public final a(Lcom/android/mail/providers/Message;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mail/browse/a;->ald:Lcom/android/mail/providers/Message;

    .line 82
    return-void
.end method

.method public final ar(Z)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mail/browse/a;->alg:Lcom/android/mail/browse/h;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uw()Z

    move-result v1

    .line 180
    iget-object v0, p0, Lcom/android/mail/browse/a;->c:Landroid/app/FragmentManager;

    const-string v2, "attachment-progress"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/g;

    .line 182
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/g;->d(Lcom/android/mail/providers/Attachment;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    iget-object v2, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    iget v2, v2, Lcom/android/mail/providers/Attachment;->ayO:I

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/g;->setProgress(I)V

    .line 187
    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/mail/browse/g;->isIndeterminate()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 188
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/mail/browse/g;->setIndeterminate(Z)V

    .line 190
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->uy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/mail/browse/a;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mail/browse/b;

    invoke-direct {v2, p0, v0}, Lcom/android/mail/browse/b;-><init>(Lcom/android/mail/browse/a;Lcom/android/mail/browse/g;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    iget v0, v0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/mail/browse/a;->alh:Z

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/mail/browse/a;->alg:Lcom/android/mail/browse/h;

    invoke-interface {v0}, Lcom/android/mail/browse/h;->oJ()V

    .line 207
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/mail/browse/a;->alg:Lcom/android/mail/browse/h;

    invoke-interface {v0}, Lcom/android/mail/browse/h;->oK()V

    goto :goto_0

    .line 187
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/android/mail/browse/a;->alg:Lcom/android/mail/browse/h;

    invoke-interface {v0, v1}, Lcom/android/mail/browse/h;->as(Z)V

    goto :goto_2
.end method

.method public final b(IIIZ)V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "state"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "destination"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "rendition"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "additionalPriority"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "delayDownload"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/android/mail/browse/a;->alf:Lcom/android/mail/browse/d;

    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v0, v1}, Lcom/android/mail/browse/d;->b(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 121
    return-void
.end method

.method public final b(Lcom/android/mail/providers/Attachment;)V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 145
    const-string v1, "state"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v1, "destination"

    iget v2, p1, Lcom/android/mail/providers/Attachment;->ayN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    iget-object v1, p0, Lcom/android/mail/browse/a;->alf:Lcom/android/mail/browse/d;

    iget-object v2, p1, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/browse/d;->b(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 149
    return-void
.end method

.method public final bN(I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mail/browse/a;->alg:Lcom/android/mail/browse/h;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uq()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    iget v0, v0, Lcom/android/mail/providers/Attachment;->ayN:I

    if-ne v0, p1, :cond_2

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/mail/browse/a;->alg:Lcom/android/mail/browse/h;

    invoke-interface {v0}, Lcom/android/mail/browse/h;->oJ()V

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/android/mail/browse/a;->oE()V

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/a;->bO(I)V

    goto :goto_0
.end method

.method public final bO(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/mail/browse/a;->b(IIIZ)V

    .line 115
    return-void
.end method

.method public final be(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/mail/browse/a;->mAccount:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public final c(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/android/mail/browse/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 249
    sget-object v1, Lcom/android/mail/browse/a;->mW:Ljava/lang/String;

    const-string v2, "Couldn\'t find Activity for intent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final oC()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/browse/a;->alh:Z

    .line 90
    return-void
.end method

.method public final oD()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 138
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    iget-object v1, p0, Lcom/android/mail/browse/a;->alf:Lcom/android/mail/browse/d;

    iget-object v2, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    iget-object v2, v2, Lcom/android/mail/providers/Attachment;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/android/mail/browse/d;->b(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 141
    return-void
.end method

.method public final oE()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mail/browse/a;->c:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/mail/browse/a;->c:Landroid/app/FragmentManager;

    const-string v2, "attachment-progress"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 161
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 164
    iget-object v1, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    invoke-static {v1}, Lcom/android/mail/browse/g;->c(Lcom/android/mail/providers/Attachment;)Lcom/android/mail/browse/g;

    move-result-object v1

    .line 166
    const-string v2, "attachment-progress"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public final oF()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/mail/browse/a;->c:Landroid/app/FragmentManager;

    const-string v1, "attachment-progress"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final oG()V
    .locals 5

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    iget-object v1, v1, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/mail/utils/ag;->C(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 225
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    invoke-virtual {v1}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mail/utils/ag;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/mail/browse/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 232
    sget-object v1, Lcom/android/mail/browse/a;->mW:Ljava/lang/String;

    const-string v2, "Couldn\'t find Activity for intent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final oH()V
    .locals 5

    .prologue
    .line 263
    sget-object v0, Lcom/android/mail/browse/a;->ali:Lcom/android/mail/browse/c;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    sget-object v0, Lcom/android/mail/browse/a;->ali:Lcom/android/mail/browse/c;

    iget-object v1, p0, Lcom/android/mail/browse/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mail/browse/a;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mail/browse/a;->ald:Lcom/android/mail/providers/Message;

    iget-object v3, p0, Lcom/android/mail/browse/a;->ale:Lcom/android/mail/providers/Attachment;

    iget-object v4, p0, Lcom/android/mail/browse/a;->c:Landroid/app/FragmentManager;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mail/browse/c;->a(Ljava/lang/String;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Attachment;Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

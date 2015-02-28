.class public final Lcom/android/ex/photo/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private agA:I

.field private agB:I

.field private agC:I

.field private agD:I

.field private agE:Z

.field private agF:Z

.field private ags:Ljava/lang/Integer;

.field private agt:Ljava/lang/String;

.field private agu:Ljava/lang/String;

.field private agv:Ljava/lang/String;

.field private agw:Ljava/lang/String;

.field private agx:Ljava/lang/Float;

.field private agy:Z

.field private agz:Z

.field private eN:[Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    .line 141
    invoke-direct {p0}, Lcom/android/ex/photo/f;->nD()V

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Class;B)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/ex/photo/f;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-direct {p0}, Lcom/android/ex/photo/f;->nD()V

    .line 148
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/ex/photo/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private nD()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/ex/photo/f;->agz:Z

    .line 152
    iput-boolean v0, p0, Lcom/android/ex/photo/f;->agE:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/ex/photo/f;->agF:Z

    .line 154
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Lcom/android/ex/photo/f;
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/ex/photo/f;->ags:Ljava/lang/Integer;

    .line 159
    return-object p0
.end method

.method public final aQ(Ljava/lang/String;)Lcom/android/ex/photo/f;
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/ex/photo/f;->agt:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public final aR(Ljava/lang/String;)Lcom/android/ex/photo/f;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/ex/photo/f;->agu:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public final aS(Ljava/lang/String;)Lcom/android/ex/photo/f;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/ex/photo/f;->agv:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public final aT(Ljava/lang/String;)Lcom/android/ex/photo/f;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/ex/photo/f;->agw:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public final aj(Z)Lcom/android/ex/photo/f;
    .locals 0

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/android/ex/photo/f;->agF:Z

    .line 257
    return-object p0
.end method

.method public final h([Ljava/lang/String;)Lcom/android/ex/photo/f;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/ex/photo/f;->eN:[Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public final nE()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lcom/android/ex/photo/f;->ags:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "photo_index"

    iget-object v2, p0, Lcom/android/ex/photo/f;->ags:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/ex/photo/f;->agt:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "initial_photo_uri"

    iget-object v2, p0, Lcom/android/ex/photo/f;->agt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/ex/photo/f;->agt:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/photo/f;->ags:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "specified both photo index and photo uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/android/ex/photo/f;->agu:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "photos_uri"

    iget-object v2, p0, Lcom/android/ex/photo/f;->agu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/ex/photo/f;->agu:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/android/ex/photo/f;->agv:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "resolved_photo_uri"

    iget-object v2, p0, Lcom/android/ex/photo/f;->agv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    :cond_4
    iget-object v0, p0, Lcom/android/ex/photo/f;->eN:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "projection"

    iget-object v2, p0, Lcom/android/ex/photo/f;->eN:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    :cond_5
    iget-object v0, p0, Lcom/android/ex/photo/f;->agw:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 293
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "thumbnail_uri"

    iget-object v2, p0, Lcom/android/ex/photo/f;->agw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/android/ex/photo/f;->agx:Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 297
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "max_scale"

    iget-object v2, p0, Lcom/android/ex/photo/f;->agx:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 300
    :cond_7
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "watch_network"

    iget-boolean v2, p0, Lcom/android/ex/photo/f;->agy:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "scale_up_animation"

    iget-boolean v2, p0, Lcom/android/ex/photo/f;->agz:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    iget-boolean v0, p0, Lcom/android/ex/photo/f;->agz:Z

    if-eqz v0, :cond_8

    .line 304
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "start_x_extra"

    iget v2, p0, Lcom/android/ex/photo/f;->agA:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "start_y_extra"

    iget v2, p0, Lcom/android/ex/photo/f;->agB:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "start_width_extra"

    iget v2, p0, Lcom/android/ex/photo/f;->agC:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "start_height_extra"

    iget v2, p0, Lcom/android/ex/photo/f;->agD:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 310
    :cond_8
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "action_bar_hidden_initially"

    iget-boolean v2, p0, Lcom/android/ex/photo/f;->agE:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    const-string v1, "display_thumbs_fullscreen"

    iget-boolean v2, p0, Lcom/android/ex/photo/f;->agF:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    iget-object v0, p0, Lcom/android/ex/photo/f;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final s(F)Lcom/android/ex/photo/f;
    .locals 1

    .prologue
    .line 202
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/photo/f;->agx:Ljava/lang/Float;

    .line 203
    return-object p0
.end method

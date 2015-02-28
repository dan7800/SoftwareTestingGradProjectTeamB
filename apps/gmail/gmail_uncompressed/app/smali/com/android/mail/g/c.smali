.class public Lcom/android/mail/g/c;
.super Lcom/android/ex/photo/k;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field protected arX:Lcom/android/mail/browse/a;

.field private asa:Z

.field private final axp:Lcom/android/mail/g/e;

.field private axq:Ljava/lang/String;

.field private axr:Landroid/view/MenuItem;

.field private axs:Landroid/view/MenuItem;

.field private axt:Landroid/view/MenuItem;

.field private axu:Landroid/view/MenuItem;

.field private axv:Landroid/view/MenuItem;

.field private axw:Landroid/view/MenuItem;

.field private axx:Landroid/view/MenuItem;

.field private axy:Landroid/view/Menu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/g/c;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/g/e;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/ex/photo/k;-><init>(Lcom/android/ex/photo/t;)V

    .line 90
    iput-object p1, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/android/mail/g/c;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mail/g/c;->ti()V

    return-void
.end method

.method private f(Lcom/android/mail/providers/Attachment;)V
    .locals 2

    .prologue
    .line 335
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Attachment;->ur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, p1}, Lcom/android/mail/browse/a;->a(Lcom/android/mail/providers/Attachment;)V

    .line 337
    iget-object v0, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/a;->bO(I)V

    .line 339
    :cond_0
    return-void
.end method

.method private ti()V
    .locals 2

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/android/mail/g/c;->tj()Lcom/android/mail/providers/Attachment;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->ur()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/a;->a(Lcom/android/mail/providers/Attachment;)V

    .line 325
    iget-object v1, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v1}, Lcom/android/mail/browse/a;->oD()V

    .line 326
    iget-object v1, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    iget v0, v0, Lcom/android/mail/providers/Attachment;->ayN:I

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/a;->bO(I)V

    .line 328
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/ex/photo/b/a;)V
    .locals 3

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/android/ex/photo/k;->a(Lcom/android/ex/photo/b/a;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/mail/g/c;->tj()Lcom/android/mail/providers/Attachment;

    move-result-object v0

    .line 259
    iget v1, v0, Lcom/android/mail/providers/Attachment;->state:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/a;->a(Lcom/android/mail/providers/Attachment;)V

    .line 261
    iget-object v1, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    iget v0, v0, Lcom/android/mail/providers/Attachment;->ayN:I

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/a;->bO(I)V

    .line 263
    :cond_0
    return-void
.end method

.method public final a(Lcom/android/ex/photo/b/a;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 267
    invoke-super {p0, p1, p2}, Lcom/android/ex/photo/k;->a(Lcom/android/ex/photo/b/a;Landroid/database/Cursor;)V

    .line 268
    new-instance v0, Lcom/android/mail/providers/Attachment;

    invoke-direct {v0, p2}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {p1}, Lcom/android/ex/photo/b/a;->oc()Lcom/android/ex/photo/views/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ex/photo/b/a;->od()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/ex/photo/b/a;->oe()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uw()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/mail/providers/Attachment;->size:I

    invoke-virtual {v1, v4}, Lcom/android/ex/photo/views/e;->setMax(I)V

    iget v4, v0, Lcom/android/mail/providers/Attachment;->ayO:I

    invoke-virtual {v1, v4}, Lcom/android/ex/photo/views/e;->setProgress(I)V

    invoke-virtual {v1, v5}, Lcom/android/ex/photo/views/e;->setIndeterminate(Z)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->ux()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f09014d

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/android/mail/g/d;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/mail/g/d;-><init>(Lcom/android/mail/g/c;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/android/ex/photo/views/e;->setVisibility(I)V

    .line 269
    :cond_1
    return-void

    .line 268
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/photo/b/a;->of()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/ex/photo/views/e;->setIndeterminate(Z)V

    goto :goto_0
.end method

.method public final nQ()Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/mail/g/c;->nR()V

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public final nR()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/android/mail/g/c;->tj()Lcom/android/mail/providers/Attachment;

    move-result-object v3

    .line 174
    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/android/mail/g/c;->axr:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mail/g/c;->axt:Landroid/view/MenuItem;

    if-eqz v0, :cond_a

    .line 175
    iget-object v4, p0, Lcom/android/mail/g/c;->axr:Landroid/view/MenuItem;

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->ut()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->ur()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->uu()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 177
    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->us()Z

    move-result v0

    .line 178
    iget-object v4, p0, Lcom/android/mail/g/c;->axt:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 179
    iget-object v4, p0, Lcom/android/mail/g/c;->axv:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 180
    iget-object v4, p0, Lcom/android/mail/g/c;->axw:Landroid/view/MenuItem;

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->ur()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->ut()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 181
    iget-object v4, p0, Lcom/android/mail/g/c;->axx:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/mail/g/c;->asa:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    iget-object v0, p0, Lcom/android/mail/g/c;->axq:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/mail/providers/Attachment;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mail/browse/a;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 191
    invoke-virtual {p0}, Lcom/android/mail/g/c;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    .line 192
    :goto_3
    if-eqz v3, :cond_4

    .line 194
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 196
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->ut()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->ur()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uu()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 201
    :goto_4
    iget-object v4, p0, Lcom/android/mail/g/c;->axs:Landroid/view/MenuItem;

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 205
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Attachment;

    .line 206
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->us()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/android/mail/g/c;->axu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 215
    :cond_4
    invoke-static {}, Lcom/android/mail/utils/ag;->Be()Z

    move-result v0

    if-nez v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/android/mail/g/c;->axt:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 217
    iget-object v0, p0, Lcom/android/mail/g/c;->axu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 221
    :cond_5
    invoke-static {}, Lcom/android/mail/utils/ag;->Bg()Z

    move-result v0

    if-nez v0, :cond_6

    .line 222
    iget-object v0, p0, Lcom/android/mail/g/c;->axv:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    :cond_6
    :goto_5
    return-void

    :cond_7
    move v0, v2

    .line 175
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 180
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 181
    goto :goto_2

    .line 185
    :cond_a
    iget-object v0, p0, Lcom/android/mail/g/c;->axy:Landroid/view/Menu;

    if-eqz v0, :cond_6

    .line 186
    iget-object v0, p0, Lcom/android/mail/g/c;->axy:Landroid/view/Menu;

    const v1, 0x7f0d02a2

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_5

    .line 191
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    new-instance v4, Lcom/android/mail/providers/Attachment;

    invoke-direct {v4, v3}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_c

    move-object v3, v0

    goto/16 :goto_3

    :cond_d
    move v0, v2

    goto :goto_4
.end method

.method public final nU()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 232
    invoke-super {p0}, Lcom/android/ex/photo/k;->nU()V

    .line 234
    invoke-virtual {p0}, Lcom/android/mail/g/c;->tj()Lcom/android/mail/providers/Attachment;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    invoke-interface {v1}, Lcom/android/mail/g/e;->nH()Lcom/android/ex/photo/a;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    invoke-interface {v2}, Lcom/android/mail/g/e;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Lcom/android/mail/providers/Attachment;->size:I

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/android/mail/utils/b;->E(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->uu()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    invoke-interface {v0}, Lcom/android/mail/g/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0900db

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/ex/photo/a;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 252
    :goto_0
    invoke-virtual {p0}, Lcom/android/mail/g/c;->nR()V

    .line 253
    return-void

    .line 246
    :cond_0
    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->ut()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v0, v0, Lcom/android/mail/providers/Attachment;->ayN:I

    if-ne v0, v6, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    invoke-interface {v0}, Lcom/android/mail/g/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0900e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/ex/photo/a;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-interface {v1, v2}, Lcom/android/ex/photo/a;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/ex/photo/k;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance v0, Lcom/android/mail/browse/a;

    iget-object v1, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    invoke-interface {v1}, Lcom/android/mail/g/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mail/browse/a;-><init>(Landroid/content/Context;Lcom/android/mail/browse/h;)V

    iput-object v0, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    .line 98
    iget-object v0, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    iget-object v1, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    invoke-interface {v1}, Lcom/android/mail/g/e;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/a;->a(Landroid/app/FragmentManager;)V

    .line 100
    iget-object v0, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    invoke-interface {v0}, Lcom/android/mail/g/e;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 101
    sget-object v0, Lcom/android/mail/g/b;->axn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/g/c;->axq:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/android/mail/g/b;->axm:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    sget-object v0, Lcom/android/mail/g/b;->EXTRA_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Message;

    .line 104
    sget-object v3, Lcom/android/mail/g/b;->axo:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mail/g/c;->asa:Z

    .line 106
    iget-object v1, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v1, v2}, Lcom/android/mail/browse/a;->be(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/a;->a(Lcom/android/mail/providers/Message;)V

    .line 108
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    invoke-interface {v0}, Lcom/android/mail/g/e;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 114
    const v1, 0x7f100010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    iput-object p1, p0, Lcom/android/mail/g/c;->axy:Landroid/view/Menu;

    .line 117
    iget-object v0, p0, Lcom/android/mail/g/c;->axy:Landroid/view/Menu;

    const v1, 0x7f0d02a3

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/g/c;->axr:Landroid/view/MenuItem;

    .line 118
    iget-object v0, p0, Lcom/android/mail/g/c;->axy:Landroid/view/Menu;

    const v1, 0x7f0d02a4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/g/c;->axs:Landroid/view/MenuItem;

    .line 119
    iget-object v0, p0, Lcom/android/mail/g/c;->axy:Landroid/view/Menu;

    const v1, 0x7f0d02a5

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/g/c;->axt:Landroid/view/MenuItem;

    .line 120
    iget-object v0, p0, Lcom/android/mail/g/c;->axy:Landroid/view/Menu;

    const v1, 0x7f0d02a6

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/g/c;->axu:Landroid/view/MenuItem;

    .line 121
    iget-object v0, p0, Lcom/android/mail/g/c;->axy:Landroid/view/Menu;

    const v1, 0x7f0d02a7

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/g/c;->axv:Landroid/view/MenuItem;

    .line 122
    iget-object v0, p0, Lcom/android/mail/g/c;->axy:Landroid/view/Menu;

    const v1, 0x7f0d02a8

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/g/c;->axw:Landroid/view/MenuItem;

    .line 123
    iget-object v0, p0, Lcom/android/mail/g/c;->axy:Landroid/view/Menu;

    const v1, 0x7f0d029c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/g/c;->axx:Landroid/view/MenuItem;

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 138
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v2

    const-string v3, "menu_item"

    const-string v4, "photo_viewer"

    invoke-interface {v2, v3, v1, v4}, Lcom/android/mail/a/d;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    invoke-interface {v0}, Lcom/android/mail/g/e;->finish()V

    .line 162
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 144
    :cond_1
    const v2, 0x7f0d02a3

    if-ne v1, v2, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/android/mail/g/c;->tj()Lcom/android/mail/providers/Attachment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mail/g/c;->f(Lcom/android/mail/providers/Attachment;)V

    goto :goto_0

    .line 146
    :cond_2
    const v2, 0x7f0d02a4

    if-ne v1, v2, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/android/mail/g/c;->nV()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/mail/providers/Attachment;

    invoke-direct {v2, v1}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    invoke-direct {p0, v2}, Lcom/android/mail/g/c;->f(Lcom/android/mail/providers/Attachment;)V

    goto :goto_2

    .line 148
    :cond_3
    const v2, 0x7f0d02a5

    if-ne v1, v2, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/android/mail/g/c;->tj()Lcom/android/mail/providers/Attachment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v1, v0}, Lcom/android/mail/browse/a;->a(Lcom/android/mail/providers/Attachment;)V

    iget-object v0, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0}, Lcom/android/mail/browse/a;->oG()V

    goto :goto_0

    .line 150
    :cond_4
    const v2, 0x7f0d02a6

    if-ne v1, v2, :cond_6

    .line 151
    invoke-virtual {p0}, Lcom/android/mail/g/c;->nV()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/android/mail/providers/Attachment;

    invoke-direct {v3, v1}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    iget-object v3, v3, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/mail/utils/ag;->C(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/a;->c(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 152
    :cond_6
    const v0, 0x7f0d02a7

    if-ne v1, v0, :cond_7

    .line 153
    invoke-virtual {p0}, Lcom/android/mail/g/c;->tj()Lcom/android/mail/providers/Attachment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    invoke-interface {v1}, Lcom/android/mail/g/e;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/support/v4/d/a;

    invoke-direct {v2, v1}, Landroid/support/v4/d/a;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/support/v4/d/a;->az()V

    invoke-virtual {v0}, Lcom/android/mail/providers/Attachment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mail/j/b;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/mail/providers/Attachment;->ayP:Landroid/net/Uri;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/d/a;->a(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/mail/g/c;->mW:Ljava/lang/String;

    const-string v2, "Can\'t print photo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 154
    :cond_7
    const v0, 0x7f0d02a8

    if-ne v1, v0, :cond_8

    .line 155
    invoke-direct {p0}, Lcom/android/mail/g/c;->ti()V

    goto/16 :goto_0

    .line 156
    :cond_8
    const v0, 0x7f0d029c

    if-ne v1, v0, :cond_9

    .line 157
    iget-object v0, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {p0}, Lcom/android/mail/g/c;->tj()Lcom/android/mail/providers/Attachment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/a;->a(Lcom/android/mail/providers/Attachment;)V

    .line 158
    iget-object v0, p0, Lcom/android/mail/g/c;->arX:Lcom/android/mail/browse/a;

    invoke-virtual {v0}, Lcom/android/mail/browse/a;->oH()V

    goto/16 :goto_0

    .line 160
    :cond_9
    invoke-super {p0, p1}, Lcom/android/ex/photo/k;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method protected final tj()Lcom/android/mail/providers/Attachment;
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/mail/g/c;->nV()Landroid/database/Cursor;

    move-result-object v1

    .line 414
    if-nez v1, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 418
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/mail/providers/Attachment;

    invoke-direct {v0, v1}, Lcom/android/mail/providers/Attachment;-><init>(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public final tk()Lcom/android/mail/g/e;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/mail/g/c;->axp:Lcom/android/mail/g/e;

    return-object v0
.end method

.class public Lcom/android/mail/ui/FolderItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static aJj:[F


# instance fields
.field private aJk:Landroid/widget/TextView;

.field private aJl:Landroid/widget/TextView;

.field private aJm:Landroid/widget/TextView;

.field private aqp:Lcom/android/mail/providers/Folder;

.field private final mW:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mW:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/android/mail/ui/FolderItemView;->as(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mW:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/android/mail/ui/FolderItemView;->as(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mW:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/android/mail/ui/FolderItemView;->as(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public static a(Lcom/android/mail/providers/Folder;Lcom/android/mail/providers/Folder;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    if-nez p0, :cond_2

    .line 97
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_3
    if-eq p0, p1, :cond_0

    iget-object v2, p0, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    iget-object v3, p1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v2, v3}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/mail/providers/Folder;->aAa:Z

    iget-boolean v3, p1, Lcom/android/mail/providers/Folder;->aAa:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/mail/providers/Folder;->aAe:I

    iget v3, p1, Lcom/android/mail/providers/Folder;->aAe:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/mail/providers/Folder;->aAf:I

    iget v3, p1, Lcom/android/mail/providers/Folder;->aAf:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static as(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/android/mail/ui/FolderItemView;->aJj:[F

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 71
    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    const/4 v2, 0x7

    aput v0, v1, v2

    sput-object v1, Lcom/android/mail/ui/FolderItemView;->aJj:[F

    .line 78
    :cond_0
    return-void
.end method

.method private cX(I)V
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/mail/ui/FolderItemView;->aJl:Landroid/widget/TextView;

    if-lez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    if-lez p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aJl:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/ui/FolderItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/mail/utils/ag;->l(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_0
    return-void

    .line 144
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Folder;Lcom/android/mail/utils/p;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 111
    iput-object p1, p0, Lcom/android/mail/ui/FolderItemView;->aqp:Lcom/android/mail/providers/Folder;

    .line 113
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aJk:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    if-eqz p2, :cond_0

    .line 116
    iget-object v0, p1, Lcom/android/mail/providers/Folder;->azZ:Lcom/android/mail/utils/p;

    invoke-virtual {v0, p2}, Lcom/android/mail/utils/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    const v3, 0x7f0d01ad

    invoke-virtual {p0, v3}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aqp:Lcom/android/mail/providers/Folder;

    iget v0, v0, Lcom/android/mail/providers/Folder;->aAe:I

    if-lez v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aJl:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aqp:Lcom/android/mail/providers/Folder;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Lcom/android/mail/providers/Folder;->cz(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/mail/ui/FolderItemView;->aqp:Lcom/android/mail/providers/Folder;

    iget v3, v3, Lcom/android/mail/providers/Folder;->aAe:I

    iget-object v4, p0, Lcom/android/mail/ui/FolderItemView;->aJm:Landroid/widget/TextView;

    if-lez v3, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-lez v3, :cond_1

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v2, Lcom/android/mail/ui/FolderItemView;->aJj:[F

    invoke-direct {v1, v2, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aJm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aJm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mail/ui/FolderItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/mail/utils/ag;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 119
    goto :goto_0

    :cond_3
    move v2, v1

    .line 125
    goto :goto_1

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aJm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aqp:Lcom/android/mail/providers/Folder;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->t(Lcom/android/mail/providers/Folder;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/FolderItemView;->cX(I)V

    goto :goto_2
.end method

.method public final cY(I)V
    .locals 5

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/mail/ui/FolderItemView;->mW:Ljava/lang/String;

    const-string v1, "FLF->FolderItem.getFolderView: unread count mismatch found (%s vs %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/ui/FolderItemView;->aJl:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    invoke-direct {p0, p1}, Lcom/android/mail/ui/FolderItemView;->cX(I)V

    .line 172
    return-void
.end method

.method public final l(Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f0d01ae

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    invoke-static {p1, v0}, Lcom/android/mail/providers/Folder;->a(Lcom/android/mail/providers/Folder;Landroid/widget/ImageView;)V

    .line 138
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 84
    const v0, 0x7f0d01af

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aJk:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0d00d8

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aJl:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0d01b0

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/FolderItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mail/ui/FolderItemView;->aJm:Landroid/widget/TextView;

    .line 87
    return-void
.end method

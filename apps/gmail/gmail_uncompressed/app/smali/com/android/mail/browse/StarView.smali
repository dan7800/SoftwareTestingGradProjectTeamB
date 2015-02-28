.class public Lcom/android/mail/browse/StarView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final auo:[I


# instance fields
.field private aup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010108

    aput v2, v0, v1

    sput-object v0, Lcom/android/mail/browse/StarView;->auo:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public final aD(Z)V
    .locals 2

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/mail/browse/StarView;->aup:Z

    .line 37
    invoke-virtual {p0}, Lcom/android/mail/browse/StarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/mail/browse/StarView;->aup:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0900a1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mail/browse/StarView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/mail/browse/StarView;->refreshDrawableState()V

    .line 40
    return-void

    .line 37
    :cond_0
    const v0, 0x7f0900a0

    goto :goto_0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 44
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 45
    iget-boolean v1, p0, Lcom/android/mail/browse/StarView;->aup:Z

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/android/mail/browse/StarView;->auo:[I

    invoke-static {v0, v1}, Lcom/android/mail/browse/StarView;->mergeDrawableStates([I[I)[I

    .line 48
    :cond_0
    return-object v0
.end method

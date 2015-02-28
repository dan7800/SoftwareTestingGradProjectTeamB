.class public final Lcom/android/mail/ui/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aGq:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/mail/ui/ao;->aGq:Landroid/support/v4/view/ViewPager;

    .line 33
    return-void
.end method

.method private cP(I)I
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mail/ui/ao;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->bb()Landroid/support/v4/view/U;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/U;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private cQ(I)I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mail/ui/ao;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-static {v0}, Lcom/android/mail/utils/al;->aH(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/mail/ui/ao;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->bb()Landroid/support/v4/view/U;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/U;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 59
    :cond_0
    return p1
.end method


# virtual methods
.method public final xS()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ao;->cQ(I)I

    move-result v0

    return v0
.end method

.method public final xT()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mail/ui/ao;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->bb()Landroid/support/v4/view/U;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/U;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ao;->cQ(I)I

    move-result v0

    return v0
.end method

.method public final xU()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mail/ui/ao;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->bd()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ao;->cQ(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ao;->cQ(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ao;->cP(I)I

    move-result v0

    return v0
.end method

.method public final xV()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mail/ui/ao;->aGq:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->bd()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ao;->cQ(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ao;->cQ(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mail/ui/ao;->cP(I)I

    move-result v0

    return v0
.end method

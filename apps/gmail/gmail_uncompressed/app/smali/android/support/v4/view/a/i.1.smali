.class public final Landroid/support/v4/view/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final jR:Landroid/support/v4/view/a/l;


# instance fields
.field private final jS:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1124
    new-instance v0, Landroid/support/v4/view/a/j;

    invoke-direct {v0}, Landroid/support/v4/view/a/j;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    .line 1136
    :goto_0
    return-void

    .line 1125
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1126
    new-instance v0, Landroid/support/v4/view/a/o;

    invoke-direct {v0}, Landroid/support/v4/view/a/o;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    goto :goto_0

    .line 1127
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 1128
    new-instance v0, Landroid/support/v4/view/a/n;

    invoke-direct {v0}, Landroid/support/v4/view/a/n;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    goto :goto_0

    .line 1129
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 1130
    new-instance v0, Landroid/support/v4/view/a/m;

    invoke-direct {v0}, Landroid/support/v4/view/a/m;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    goto :goto_0

    .line 1131
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 1132
    new-instance v0, Landroid/support/v4/view/a/k;

    invoke-direct {v0}, Landroid/support/v4/view/a/k;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    goto :goto_0

    .line 1134
    :cond_4
    new-instance v0, Landroid/support/v4/view/a/p;

    invoke-direct {v0}, Landroid/support/v4/view/a/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1478
    iput-object p1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    .line 1479
    return-void
.end method

.method public static D(Landroid/view/View;)Landroid/support/v4/view/a/i;
    .locals 1

    .prologue
    .line 1496
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    invoke-interface {v0, p0}, Landroid/support/v4/view/a/l;->E(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/i;->h(Ljava/lang/Object;)Landroid/support/v4/view/a/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/view/a/i;)Landroid/support/v4/view/a/i;
    .locals 2

    .prologue
    .line 1531
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/i;->h(Ljava/lang/Object;)Landroid/support/v4/view/a/i;

    move-result-object v0

    return-object v0
.end method

.method public static bs()Landroid/support/v4/view/a/i;
    .locals 1

    .prologue
    .line 1520
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    invoke-interface {v0}, Landroid/support/v4/view/a/l;->bt()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/i;->h(Ljava/lang/Object;)Landroid/support/v4/view/a/i;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/Object;)Landroid/support/v4/view/a/i;
    .locals 1

    .prologue
    .line 1465
    if-eqz p0, :cond_0

    .line 1466
    new-instance v0, Landroid/support/v4/view/a/i;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/i;-><init>(Ljava/lang/Object;)V

    .line 1468
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addAction(I)V
    .locals 2

    .prologue
    .line 1692
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;I)V

    .line 1693
    return-void
.end method

.method public final addChild(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1646
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;Landroid/view/View;)V

    .line 1647
    return-void
.end method

.method public final addChild(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1664
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1665
    return-void
.end method

.method public final br()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2410
    if-ne p0, p1, :cond_1

    .line 2427
    :cond_0
    :goto_0
    return v0

    .line 2413
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 2414
    goto :goto_0

    .line 2416
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 2417
    goto :goto_0

    .line 2419
    :cond_3
    check-cast p1, Landroid/support/v4/view/a/i;

    .line 2420
    iget-object v2, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 2421
    iget-object v2, p1, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 2422
    goto :goto_0

    .line 2424
    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2425
    goto :goto_0
.end method

.method public final getActions()I
    .locals 2

    .prologue
    .line 1677
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->j(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1835
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1836
    return-void
.end method

.method public final getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1859
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1860
    return-void
.end method

.method public final getClassName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2197
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->k(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2245
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->l(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2173
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->m(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 2221
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->n(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 2405
    iget-object v0, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final isAccessibilityFocused()Z
    .locals 2

    .prologue
    .line 2004
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->A(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isClickable()Z
    .locals 2

    .prologue
    .line 2053
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->q(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 2

    .prologue
    .line 2101
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->r(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFocusable()Z
    .locals 2

    .prologue
    .line 1931
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->s(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFocused()Z
    .locals 2

    .prologue
    .line 1955
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->t(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isLongClickable()Z
    .locals 2

    .prologue
    .line 2077
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->u(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isSelected()Z
    .locals 2

    .prologue
    .line 2029
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->x(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isVisibleToUser()Z
    .locals 2

    .prologue
    .line 1979
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->z(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final recycle()V
    .locals 2

    .prologue
    .line 2271
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/l;->y(Ljava/lang/Object;)V

    .line 2272
    return-void
.end method

.method public final setAccessibilityFocused(Z)V
    .locals 2

    .prologue
    .line 2020
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->i(Ljava/lang/Object;Z)V

    .line 2021
    return-void
.end method

.method public final setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1850
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1851
    return-void
.end method

.method public final setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1874
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1875
    return-void
.end method

.method public final setClassName(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 2212
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2213
    return-void
.end method

.method public final setClickable(Z)V
    .locals 2

    .prologue
    .line 2068
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->a(Ljava/lang/Object;Z)V

    .line 2069
    return-void
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 2260
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2261
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2

    .prologue
    .line 2116
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Z)V

    .line 2117
    return-void
.end method

.method public final setFocusable(Z)V
    .locals 2

    .prologue
    .line 1946
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;Z)V

    .line 1947
    return-void
.end method

.method public final setFocused(Z)V
    .locals 2

    .prologue
    .line 1970
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->d(Ljava/lang/Object;Z)V

    .line 1971
    return-void
.end method

.method public final setLongClickable(Z)V
    .locals 2

    .prologue
    .line 2092
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->e(Ljava/lang/Object;Z)V

    .line 2093
    return-void
.end method

.method public final setPackageName(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 2188
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2189
    return-void
.end method

.method public final setParent(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1803
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->d(Ljava/lang/Object;Landroid/view/View;)V

    .line 1804
    return-void
.end method

.method public final setScrollable(Z)V
    .locals 2

    .prologue
    .line 2164
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->f(Ljava/lang/Object;Z)V

    .line 2165
    return-void
.end method

.method public final setSelected(Z)V
    .locals 2

    .prologue
    .line 2044
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->g(Ljava/lang/Object;Z)V

    .line 2045
    return-void
.end method

.method public final setSource(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1540
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->e(Ljava/lang/Object;Landroid/view/View;)V

    .line 1541
    return-void
.end method

.method public final setSource(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 1563
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/a/l;->b(Ljava/lang/Object;Landroid/view/View;I)V

    .line 1564
    return-void
.end method

.method public final setVisibleToUser(Z)V
    .locals 2

    .prologue
    .line 1995
    sget-object v0, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v1, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/l;->h(Ljava/lang/Object;Z)V

    .line 1996
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2433
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2437
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/i;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 2438
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "; boundsInParent: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/i;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "; boundsInScreen: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2443
    const-string v0, "; packageName: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2444
    const-string v0, "; className: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2445
    const-string v0, "; text: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2446
    const-string v0, "; contentDescription: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2447
    const-string v0, "; viewId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->B(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2449
    const-string v0, "; checkable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->o(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2450
    const-string v0, "; checked: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->p(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2451
    const-string v0, "; focusable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->isFocusable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2452
    const-string v0, "; focused: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2453
    const-string v0, "; selected: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2454
    const-string v0, "; clickable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2455
    const-string v0, "; longClickable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->isLongClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2456
    const-string v0, "; enabled: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2457
    const-string v0, "; password: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->v(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "; scrollable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/support/v4/view/a/i;->jR:Landroid/support/v4/view/a/l;

    iget-object v3, p0, Landroid/support/v4/view/a/i;->jS:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/l;->w(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2460
    const-string v0, "; ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2461
    invoke-virtual {p0}, Landroid/support/v4/view/a/i;->getActions()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2462
    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v3, v1, v3

    .line 2463
    xor-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    .line 2464
    sparse-switch v3, :sswitch_data_0

    const-string v0, "ACTION_UNKNOWN"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2465
    if-eqz v1, :cond_0

    .line 2466
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v1

    .line 2468
    goto :goto_0

    .line 2464
    :sswitch_0
    const-string v0, "ACTION_FOCUS"

    goto :goto_1

    :sswitch_1
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_1

    :sswitch_2
    const-string v0, "ACTION_SELECT"

    goto :goto_1

    :sswitch_3
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_1

    :sswitch_4
    const-string v0, "ACTION_CLICK"

    goto :goto_1

    :sswitch_5
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_1

    :sswitch_6
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_1

    :sswitch_7
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_1

    :sswitch_8
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    :sswitch_9
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    :sswitch_a
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_1

    :sswitch_b
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_1

    :sswitch_c
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_1

    :sswitch_d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_1

    :sswitch_e
    const-string v0, "ACTION_CUT"

    goto :goto_1

    :sswitch_f
    const-string v0, "ACTION_COPY"

    goto :goto_1

    :sswitch_10
    const-string v0, "ACTION_PASTE"

    goto :goto_1

    :sswitch_11
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_1

    .line 2469
    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2471
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2464
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method

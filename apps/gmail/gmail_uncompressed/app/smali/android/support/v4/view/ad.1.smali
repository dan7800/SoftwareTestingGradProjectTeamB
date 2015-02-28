.class public final Landroid/support/v4/view/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final if:Landroid/support/v4/view/an;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1152
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1153
    new-instance v0, Landroid/support/v4/view/ae;

    invoke-direct {v0}, Landroid/support/v4/view/ae;-><init>()V

    sput-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    .line 1171
    :goto_0
    return-void

    .line 1154
    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1155
    new-instance v0, Landroid/support/v4/view/am;

    invoke-direct {v0}, Landroid/support/v4/view/am;-><init>()V

    sput-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    goto :goto_0

    .line 1156
    :cond_1
    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 1157
    new-instance v0, Landroid/support/v4/view/al;

    invoke-direct {v0}, Landroid/support/v4/view/al;-><init>()V

    sput-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    goto :goto_0

    .line 1158
    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 1159
    new-instance v0, Landroid/support/v4/view/ak;

    invoke-direct {v0}, Landroid/support/v4/view/ak;-><init>()V

    sput-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    goto :goto_0

    .line 1160
    :cond_3
    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 1161
    new-instance v0, Landroid/support/v4/view/aj;

    invoke-direct {v0}, Landroid/support/v4/view/aj;-><init>()V

    sput-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    goto :goto_0

    .line 1162
    :cond_4
    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 1163
    new-instance v0, Landroid/support/v4/view/ai;

    invoke-direct {v0}, Landroid/support/v4/view/ai;-><init>()V

    sput-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    goto :goto_0

    .line 1164
    :cond_5
    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 1165
    new-instance v0, Landroid/support/v4/view/ah;

    invoke-direct {v0}, Landroid/support/v4/view/ah;-><init>()V

    sput-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    goto :goto_0

    .line 1166
    :cond_6
    const/4 v1, 0x7

    if-lt v0, v1, :cond_7

    .line 1167
    new-instance v0, Landroid/support/v4/view/ag;

    invoke-direct {v0}, Landroid/support/v4/view/ag;-><init>()V

    sput-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    goto :goto_0

    .line 1169
    :cond_7
    new-instance v0, Landroid/support/v4/view/af;

    invoke-direct {v0}, Landroid/support/v4/view/af;-><init>()V

    sput-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 1946
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;F)V

    .line 1947
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 1407
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/an;->a(Landroid/view/View;IIII)V

    .line 1408
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 1579
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/an;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1580
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 1656
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1657
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/T;)V
    .locals 1

    .prologue
    .line 2262
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;Landroid/support/v4/view/T;)V

    .line 2263
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a/i;)V
    .locals 1

    .prologue
    .line 1328
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;Landroid/support/v4/view/a/i;)V

    .line 1329
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 1343
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 1344
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1421
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1422
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 1438
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/an;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 1439
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 2234
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/view/an;->a(Landroid/view/ViewGroup;Z)V

    .line 2235
    return-void
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 1962
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->b(Landroid/view/View;F)V

    .line 1963
    return-void
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1181
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 1978
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->c(Landroid/view/View;F)V

    .line 1979
    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1480
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->c(Landroid/view/View;I)V

    .line 1481
    return-void
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2056
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->d(Landroid/view/View;F)V

    .line 2057
    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1691
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->d(Landroid/view/View;I)V

    .line 1692
    return-void
.end method

.method public static e(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2068
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->e(Landroid/view/View;F)V

    .line 2069
    return-void
.end method

.method public static f(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 2156
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->f(Landroid/view/View;F)V

    .line 2157
    return-void
.end method

.method public static g(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1192
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/view/an;->e(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1206
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->h(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1389
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->i(Landroid/view/View;)V

    .line 1390
    return-void
.end method

.method public static j(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1456
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->j(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static k(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1536
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->k(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static l(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1600
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->l(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static m(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1671
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->m(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static n(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 1703
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->n(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1716
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->o(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1292
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/an;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1293
    return-void
.end method

.method public static p(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1772
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->p(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1498
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/an;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static q(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 1898
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->q(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static r(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1920
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->r(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .locals 1

    .prologue
    .line 1733
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/an;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public static s(Landroid/view/View;)Landroid/support/v4/view/aV;
    .locals 1

    .prologue
    .line 1932
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->s(Landroid/view/View;)Landroid/support/v4/view/aV;

    move-result-object v0

    return-object v0
.end method

.method public static t(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 2137
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->t(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public static u(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 2213
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->u(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static v(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2221
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->v(Landroid/view/View;)V

    .line 2222
    return-void
.end method

.method public static w(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2242
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->w(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static x(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2253
    sget-object v0, Landroid/support/v4/view/ad;->if:Landroid/support/v4/view/an;

    invoke-interface {v0, p0}, Landroid/support/v4/view/an;->x(Landroid/view/View;)V

    .line 2254
    return-void
.end method

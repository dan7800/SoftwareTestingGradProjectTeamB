.class final Landroid/support/v7/internal/widget/V;
.super Landroid/support/v4/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/f/g",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/PorterDuffColorFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/support/v4/f/g;-><init>(I)V

    .line 351
    return-void
.end method

.method private static b(ILandroid/graphics/PorterDuff$Mode;)I
    .locals 2

    .prologue
    .line 362
    add-int/lit8 v0, p0, 0x1f

    .line 364
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    return v0
.end method


# virtual methods
.method final a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .prologue
    .line 354
    invoke-static {p1, p2}, Landroid/support/v7/internal/widget/V;->b(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/V;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method final a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .prologue
    .line 358
    invoke-static {p1, p2}, Landroid/support/v7/internal/widget/V;->b(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/support/v7/internal/widget/V;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

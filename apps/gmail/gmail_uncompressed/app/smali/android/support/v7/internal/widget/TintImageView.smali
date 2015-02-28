.class public Landroid/support/v7/internal/widget/TintImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final wK:[I


# instance fields
.field private final AO:Landroid/support/v7/internal/widget/U;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/widget/TintImageView;->wK:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010119
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget-object v0, Landroid/support/v7/internal/widget/TintImageView;->wK:[I

    invoke-static {p1, p2, v0, p3}, Landroid/support/v7/internal/widget/Z;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroid/support/v7/internal/widget/Z;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/Z;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 52
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/Z;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/Z;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_0
    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/Z;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/Z;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/Z;->recycle()V

    .line 62
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/Z;->eU()Landroid/support/v7/internal/widget/U;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/TintImageView;->AO:Landroid/support/v7/internal/widget/U;

    .line 63
    return-void
.end method


# virtual methods
.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintImageView;->AO:Landroid/support/v7/internal/widget/U;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/U;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

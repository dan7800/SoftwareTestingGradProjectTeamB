.class public final Landroid/support/v7/internal/widget/W;
.super Landroid/widget/RadioButton;
.source "SourceFile"


# static fields
.field private static final wK:[I


# instance fields
.field private final AO:Landroid/support/v7/internal/widget/U;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010107

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/W;->wK:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/W;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;B)V

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;B)V
    .locals 2

    .prologue
    const v1, 0x101007e

    .line 46
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Landroid/support/v7/internal/widget/W;->wK:[I

    invoke-static {p1, p2, v0, v1}, Landroid/support/v7/internal/widget/Z;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroid/support/v7/internal/widget/Z;

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/Z;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/W;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/Z;->recycle()V

    .line 53
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/Z;->eU()Landroid/support/v7/internal/widget/U;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/W;->AO:Landroid/support/v7/internal/widget/U;

    .line 54
    return-void
.end method


# virtual methods
.method public final setButtonDrawable(I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/widget/W;->AO:Landroid/support/v7/internal/widget/U;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/U;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/W;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    return-void
.end method

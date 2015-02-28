.class public final Landroid/support/v7/internal/widget/Q;
.super Landroid/widget/CheckBox;
.source "SourceFile"


# static fields
.field private static final wK:[I


# instance fields
.field private final AO:Landroid/support/v7/internal/widget/U;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010107

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/Q;->wK:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/Q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;B)V

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;B)V
    .locals 2

    .prologue
    const v1, 0x101006c

    .line 45
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v0, Landroid/support/v7/internal/widget/Q;->wK:[I

    invoke-static {p1, p2, v0, v1}, Landroid/support/v7/internal/widget/Z;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroid/support/v7/internal/widget/Z;

    move-result-object v0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/Z;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/Q;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/Z;->recycle()V

    .line 52
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/Z;->eU()Landroid/support/v7/internal/widget/U;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/Q;->AO:Landroid/support/v7/internal/widget/U;

    .line 53
    return-void
.end method


# virtual methods
.method public final setButtonDrawable(I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/Q;->AO:Landroid/support/v7/internal/widget/U;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/U;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/Q;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

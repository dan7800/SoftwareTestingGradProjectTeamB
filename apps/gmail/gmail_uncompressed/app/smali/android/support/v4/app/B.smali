.class final Landroid/support/v4/app/B;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# instance fields
.field final synthetic cm:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Landroid/support/v4/app/B;->cm:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/support/v4/app/B;->cm:Landroid/graphics/Rect;

    return-object v0
.end method

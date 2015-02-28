.class public final Lcom/google/android/gms/people/accountswitcherview/F;
.super Landroid/graphics/drawable/ColorDrawable;
.source "SourceFile"


# instance fields
.field private afW:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/F;-><init>(B)V

    .line 18
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 26
    const/high16 v0, 0x33000000

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/F;->afW:I

    return v0
.end method

.method public final setIntrinsicHeight(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/gms/people/accountswitcherview/F;->afW:I

    .line 38
    return-void
.end method

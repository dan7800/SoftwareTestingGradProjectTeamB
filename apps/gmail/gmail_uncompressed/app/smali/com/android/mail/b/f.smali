.class public Lcom/android/mail/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/b/e;


# static fields
.field private static akA:I

.field private static akB:I

.field private static akz:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/android/mail/b/f;->akz:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    .line 55
    const v0, 0x7f0f0001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    sput-object v0, Lcom/android/mail/b/f;->akz:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    sput v0, Lcom/android/mail/b/f;->akA:I

    .line 57
    const v0, 0x7f0a00af

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mail/b/f;->akB:I

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public bd(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/android/mail/b/f;->akA:I

    rem-int/2addr v0, v1

    .line 64
    sget-object v1, Lcom/android/mail/b/f;->akz:Landroid/content/res/TypedArray;

    sget v2, Lcom/android/mail/b/f;->akB:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    return v0
.end method

.class public final Lcom/android/mail/b/b;
.super Lcom/android/mail/b/a;
.source "SourceFile"


# static fields
.field private static akp:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mail/b/b;->akp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/a/a;Lcom/android/mail/b/j;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/mail/b/a;-><init>(Landroid/content/res/Resources;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/android/mail/b/b;->a(Lcom/android/a/a;)V

    .line 36
    invoke-virtual {p0, p3}, Lcom/android/mail/b/b;->a(Lcom/android/mail/b/j;)V

    .line 38
    sget-object v0, Lcom/android/mail/b/b;->akp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 39
    const v0, 0x7f020039

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mail/b/b;->akp:Landroid/graphics/Bitmap;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/android/mail/b/b;->akp:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/android/mail/b/b;->akp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Lcom/android/mail/b/b;->akp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/mail/b/b;->a(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    .line 47
    return-void
.end method

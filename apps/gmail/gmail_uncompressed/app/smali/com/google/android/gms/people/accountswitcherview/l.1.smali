.class public final Lcom/google/android/gms/people/accountswitcherview/l;
.super Lcom/google/android/gms/people/accountswitcherview/o;
.source "SourceFile"


# static fields
.field private static chp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/people/accountswitcherview/o;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Z)V

    .line 30
    return-void
.end method

.method protected static cl(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/gms/people/accountswitcherview/l;->chp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/people/accountswitcherview/A;->cid:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/people/accountswitcherview/l;->chp:Landroid/graphics/Bitmap;

    .line 76
    :cond_0
    sget-object v0, Lcom/google/android/gms/people/accountswitcherview/l;->chp:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/gms/people/accountswitcherview/m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/people/accountswitcherview/m;-><init>(Lcom/google/android/gms/people/accountswitcherview/l;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/people/accountswitcherview/l;->cl(Landroid/content/Context;)Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/l;->a(Lcom/google/android/gms/people/accountswitcherview/p;)V

    .line 69
    return-void
.end method

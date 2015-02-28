.class public Lcom/google/android/gms/people/accountswitcherview/i;
.super Lcom/google/android/gms/people/accountswitcherview/o;
.source "SourceFile"


# static fields
.field private static chp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/people/accountswitcherview/o;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Z)V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/people/accountswitcherview/i;Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/people/accountswitcherview/p;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 25
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-super/range {v0 .. v5}, Lcom/google/android/gms/people/accountswitcherview/o;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/people/accountswitcherview/p;Landroid/graphics/Bitmap;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/gms/people/accountswitcherview/j;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/people/accountswitcherview/j;-><init>(Lcom/google/android/gms/people/accountswitcherview/i;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Lcom/google/android/gms/people/accountswitcherview/p;)V

    .line 79
    return-void
.end method

.method public final a(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/gms/people/accountswitcherview/j;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/people/accountswitcherview/j;-><init>(Lcom/google/android/gms/people/accountswitcherview/i;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/google/android/gms/people/accountswitcherview/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/i;->a(Lcom/google/android/gms/people/accountswitcherview/p;)V

    .line 73
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/gms/people/accountswitcherview/i;->chp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/people/accountswitcherview/A;->cie:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/people/accountswitcherview/h;->f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/people/accountswitcherview/i;->chp:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/google/android/gms/people/accountswitcherview/i;->chp:Landroid/graphics/Bitmap;

    return-object v0
.end method

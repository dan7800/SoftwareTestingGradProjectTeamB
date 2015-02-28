.class public Lcom/google/android/gms/people/accountswitcherview/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile chv:Ljava/util/concurrent/Executor;

.field private static chw:I


# instance fields
.field public final bbm:Lcom/google/android/gms/common/api/n;

.field private chA:Z

.field private chB:F

.field private chC:F

.field private final chx:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private chy:Lcom/google/android/gms/people/accountswitcherview/p;

.field private final chz:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/people/accountswitcherview/p;",
            ">;"
        }
    .end annotation
.end field

.field private mClosed:Z

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/people/accountswitcherview/o;->chv:Ljava/util/concurrent/Executor;

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/google/android/gms/people/accountswitcherview/o;->chv:Ljava/util/concurrent/Executor;

    .line 58
    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/people/accountswitcherview/o;->chw:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Z)V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chx:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chz:Ljava/util/LinkedList;

    .line 94
    iput-object p1, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/google/android/gms/people/accountswitcherview/o;->bbm:Lcom/google/android/gms/common/api/n;

    .line 96
    iput-boolean p3, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chA:Z

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    sget v1, Lcom/google/android/gms/people/accountswitcherview/C;->cix:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chC:F

    .line 99
    sget v1, Lcom/google/android/gms/people/accountswitcherview/C;->ciw:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chB:F

    .line 100
    return-void
.end method

.method private UU()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chz:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chy:Lcom/google/android/gms/people/accountswitcherview/p;

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chz:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/accountswitcherview/p;

    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chy:Lcom/google/android/gms/people/accountswitcherview/p;

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chy:Lcom/google/android/gms/people/accountswitcherview/p;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/p;->oV()V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 290
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne p1, v1, :cond_0

    if-ne v0, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v4, v0

    int-to-float v6, v2

    div-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v3, p1

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v0, v1

    mul-float/2addr v0, v7

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    sub-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v6, v2

    mul-float/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v0, v2, v4

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/people/accountswitcherview/o;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 37
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/google/android/gms/people/accountswitcherview/o;->chw:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gms/people/accountswitcherview/o;->chw:I

    :cond_0
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lcom/google/android/gms/people/accountswitcherview/o;->chw:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/people/accountswitcherview/o;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chA:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/people/accountswitcherview/o;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chB:F

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/people/accountswitcherview/o;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chC:F

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/people/accountswitcherview/o;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chx:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 149
    const/4 v0, 0x0

    move v1, v0

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chz:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chz:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/people/accountswitcherview/p;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/p;->aKf:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chz:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chy:Lcom/google/android/gms/people/accountswitcherview/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chy:Lcom/google/android/gms/people/accountswitcherview/p;

    iget-object v0, v0, Lcom/google/android/gms/people/accountswitcherview/p;->aKf:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chy:Lcom/google/android/gms/people/accountswitcherview/p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/people/accountswitcherview/p;->chD:Z

    .line 162
    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/people/accountswitcherview/p;Landroid/graphics/Bitmap;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 178
    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chy:Lcom/google/android/gms/people/accountswitcherview/p;

    if-eq v0, p3, :cond_2

    .line 181
    const-string v0, "AvatarManager"

    const-string v1, "Got a different request than we\'re waiting for!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mClosed:Z

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/o;->UU()V

    .line 207
    :cond_0
    if-eqz p2, :cond_1

    .line 209
    :try_start_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chy:Lcom/google/android/gms/people/accountswitcherview/p;

    .line 186
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mClosed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    .line 204
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mClosed:Z

    if-nez v0, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/o;->UU()V

    .line 207
    :cond_3
    if-eqz p2, :cond_1

    .line 209
    :try_start_3
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 189
    :cond_4
    :try_start_4
    iget-object v0, p3, Lcom/google/android/gms/people/accountswitcherview/p;->aKf:Landroid/widget/ImageView;

    .line 190
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_5

    iget-boolean v0, p3, Lcom/google/android/gms/people/accountswitcherview/p;->chD:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_7

    .line 204
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mClosed:Z

    if-nez v0, :cond_6

    .line 205
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/o;->UU()V

    .line 207
    :cond_6
    if-eqz p2, :cond_1

    .line 209
    :try_start_5
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 195
    :cond_7
    :try_start_6
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Kk()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p2, :cond_9

    .line 196
    :cond_8
    const-string v0, "AvatarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Avatar loaded: status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  pfd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_9
    if-eqz p2, :cond_a

    .line 200
    new-instance v0, Lcom/google/android/gms/people/accountswitcherview/q;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/people/accountswitcherview/q;-><init>(Lcom/google/android/gms/people/accountswitcherview/o;Lcom/google/android/gms/people/accountswitcherview/p;Landroid/os/ParcelFileDescriptor;Landroid/graphics/Bitmap;I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_c

    sget-object v1, Lcom/google/android/gms/people/accountswitcherview/o;->chv:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/people/accountswitcherview/q;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    move-object p2, v6

    .line 204
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mClosed:Z

    if-nez v0, :cond_b

    .line 205
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/o;->UU()V

    .line 207
    :cond_b
    if-eqz p2, :cond_1

    .line 209
    :try_start_7
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 211
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 200
    :cond_c
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 204
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mClosed:Z

    if-nez v1, :cond_d

    .line 205
    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/o;->UU()V

    .line 207
    :cond_d
    if-eqz p2, :cond_e

    .line 209
    :try_start_9
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 211
    :cond_e
    :goto_2
    throw v0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public final a(Lcom/google/android/gms/people/accountswitcherview/p;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chx:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/google/android/gms/people/accountswitcherview/p;->acw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p1, Lcom/google/android/gms/people/accountswitcherview/p;->aKf:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chx:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/google/android/gms/people/accountswitcherview/p;->acw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v0, p1, Lcom/google/android/gms/people/accountswitcherview/p;->aKf:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/o;->a(Landroid/widget/ImageView;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/people/accountswitcherview/p;->aKf:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/people/accountswitcherview/o;->a(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/google/android/gms/people/accountswitcherview/o;->bbm:Lcom/google/android/gms/common/api/n;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/n;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "AvatarManager"

    const-string v1, "Client not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chz:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/people/accountswitcherview/o;->UU()V

    goto :goto_0
.end method

.method public final close()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chy:Lcom/google/android/gms/people/accountswitcherview/p;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chy:Lcom/google/android/gms/people/accountswitcherview/p;

    iput-boolean v1, v0, Lcom/google/android/gms/people/accountswitcherview/p;->chD:Z

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->chz:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 110
    iput-boolean v1, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mClosed:Z

    .line 111
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gms/people/accountswitcherview/o;->mContext:Landroid/content/Context;

    return-object v0
.end method

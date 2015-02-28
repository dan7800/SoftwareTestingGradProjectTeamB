.class public final Landroid/support/v4/app/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ac;


# instance fields
.field private dM:I

.field private dN:Landroid/app/PendingIntent;

.field private dO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private dP:Landroid/graphics/Bitmap;

.field private dQ:I

.field private dR:I

.field private dS:I

.field private dT:I

.field private dU:I

.field private dV:I

.field private dz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/W;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ao;->dz:Ljava/util/ArrayList;

    .line 2288
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/ao;->dM:I

    .line 2290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ao;->dO:Ljava/util/ArrayList;

    .line 2293
    const v0, 0x800005

    iput v0, p0, Landroid/support/v4/app/ao;->dR:I

    .line 2294
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/ao;->dS:I

    .line 2295
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/ao;->dT:I

    .line 2297
    const/16 v0, 0x50

    iput v0, p0, Landroid/support/v4/app/ao;->dV:I

    .line 2304
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/ab;)Landroid/support/v4/app/ab;
    .locals 5

    .prologue
    .line 2346
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2348
    iget-object v0, p0, Landroid/support/v4/app/ao;->dz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2349
    const-string v2, "actions"

    invoke-static {}, Landroid/support/v4/app/V;->ai()Landroid/support/v4/app/ae;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/ao;->dz:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/ao;->dz:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/support/v4/app/W;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/W;

    invoke-interface {v3, v0}, Landroid/support/v4/app/ae;->a([Landroid/support/v4/app/W;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2353
    :cond_0
    iget v0, p0, Landroid/support/v4/app/ao;->dM:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2354
    const-string v0, "flags"

    iget v2, p0, Landroid/support/v4/app/ao;->dM:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2356
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ao;->dN:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 2357
    const-string v0, "displayIntent"

    iget-object v2, p0, Landroid/support/v4/app/ao;->dN:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2359
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ao;->dO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2360
    const-string v2, "pages"

    iget-object v0, p0, Landroid/support/v4/app/ao;->dO:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/ao;->dO:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/Notification;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2363
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/ao;->dP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 2364
    const-string v0, "background"

    iget-object v2, p0, Landroid/support/v4/app/ao;->dP:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2366
    :cond_4
    iget v0, p0, Landroid/support/v4/app/ao;->dQ:I

    if-eqz v0, :cond_5

    .line 2367
    const-string v0, "contentIcon"

    iget v2, p0, Landroid/support/v4/app/ao;->dQ:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2369
    :cond_5
    iget v0, p0, Landroid/support/v4/app/ao;->dR:I

    const v2, 0x800005

    if-eq v0, v2, :cond_6

    .line 2370
    const-string v0, "contentIconGravity"

    iget v2, p0, Landroid/support/v4/app/ao;->dR:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2372
    :cond_6
    iget v0, p0, Landroid/support/v4/app/ao;->dS:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 2373
    const-string v0, "contentActionIndex"

    iget v2, p0, Landroid/support/v4/app/ao;->dS:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2376
    :cond_7
    iget v0, p0, Landroid/support/v4/app/ao;->dT:I

    if-eqz v0, :cond_8

    .line 2377
    const-string v0, "customSizePreset"

    iget v2, p0, Landroid/support/v4/app/ao;->dT:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2379
    :cond_8
    iget v0, p0, Landroid/support/v4/app/ao;->dU:I

    if-eqz v0, :cond_9

    .line 2380
    const-string v0, "customContentHeight"

    iget v2, p0, Landroid/support/v4/app/ao;->dU:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2382
    :cond_9
    iget v0, p0, Landroid/support/v4/app/ao;->dV:I

    const/16 v2, 0x50

    if-eq v0, v2, :cond_a

    .line 2383
    const-string v0, "gravity"

    iget v2, p0, Landroid/support/v4/app/ao;->dV:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2386
    :cond_a
    iget-object v0, p1, Landroid/support/v4/app/ab;->cV:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p1, Landroid/support/v4/app/ab;->cV:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p1, Landroid/support/v4/app/ab;->cV:Landroid/os/Bundle;

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2387
    return-object p1
.end method

.method public final a(Landroid/support/v4/app/W;)Landroid/support/v4/app/ao;
    .locals 1

    .prologue
    .line 2420
    iget-object v0, p0, Landroid/support/v4/app/ao;->dz:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2421
    return-object p0
.end method

.method public final b(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ao;
    .locals 0

    .prologue
    .line 2562
    iput-object p1, p0, Landroid/support/v4/app/ao;->dP:Landroid/graphics/Bitmap;

    .line 2563
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2204
    new-instance v0, Landroid/support/v4/app/ao;

    invoke-direct {v0}, Landroid/support/v4/app/ao;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/ao;->dz:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/ao;->dz:Ljava/util/ArrayList;

    iget v1, p0, Landroid/support/v4/app/ao;->dM:I

    iput v1, v0, Landroid/support/v4/app/ao;->dM:I

    iget-object v1, p0, Landroid/support/v4/app/ao;->dN:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/support/v4/app/ao;->dN:Landroid/app/PendingIntent;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/ao;->dO:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/ao;->dO:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/ao;->dP:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/support/v4/app/ao;->dP:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/support/v4/app/ao;->dQ:I

    iput v1, v0, Landroid/support/v4/app/ao;->dQ:I

    iget v1, p0, Landroid/support/v4/app/ao;->dR:I

    iput v1, v0, Landroid/support/v4/app/ao;->dR:I

    iget v1, p0, Landroid/support/v4/app/ao;->dS:I

    iput v1, v0, Landroid/support/v4/app/ao;->dS:I

    iget v1, p0, Landroid/support/v4/app/ao;->dT:I

    iput v1, v0, Landroid/support/v4/app/ao;->dT:I

    iget v1, p0, Landroid/support/v4/app/ao;->dU:I

    iput v1, v0, Landroid/support/v4/app/ao;->dU:I

    iget v1, p0, Landroid/support/v4/app/ao;->dV:I

    iput v1, v0, Landroid/support/v4/app/ao;->dV:I

    return-object v0
.end method

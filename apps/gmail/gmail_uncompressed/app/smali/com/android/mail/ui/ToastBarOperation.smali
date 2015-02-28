.class public Lcom/android/mail/ui/ToastBarOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/mail/ui/ab;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/android/mail/ui/ToastBarOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LQ:I

.field private final Zr:I

.field private final aEr:I

.field private final aKo:Z

.field private final aqp:Lcom/android/mail/providers/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/android/mail/ui/do;

    invoke-direct {v0}, Lcom/android/mail/ui/do;-><init>()V

    sput-object v0, Lcom/android/mail/ui/ToastBarOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(IIIZLcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/mail/ui/ToastBarOperation;->LQ:I

    .line 52
    iput p2, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    .line 53
    iput-boolean p4, p0, Lcom/android/mail/ui/ToastBarOperation;->aKo:Z

    .line 54
    iput p3, p0, Lcom/android/mail/ui/ToastBarOperation;->Zr:I

    .line 55
    iput-object p5, p0, Lcom/android/mail/ui/ToastBarOperation;->aqp:Lcom/android/mail/providers/Folder;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ToastBarOperation;->LQ:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aKo:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ToastBarOperation;->Zr:I

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iput-object v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aqp:Lcom/android/mail/providers/Folder;

    .line 72
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Am()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;Lcom/android/mail/providers/Folder;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 156
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d0277

    if-ne v0, v2, :cond_0

    .line 157
    const v0, 0x7f090106

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d0278

    if-ne v0, v2, :cond_1

    .line 161
    const v0, 0x7f090104

    .line 167
    :goto_1
    if-ne v0, v1, :cond_3

    const-string v0, ""

    goto :goto_0

    .line 162
    :cond_1
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d0276

    if-ne v0, v2, :cond_2

    .line 163
    const v0, 0x7f090105

    goto :goto_1

    :cond_2
    move v0, v1

    .line 165
    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ar(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public au(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d0278

    if-ne v0, v2, :cond_0

    .line 126
    const v0, 0x7f11000b

    .line 150
    :goto_0
    if-ne v0, v1, :cond_b

    const-string v0, ""

    .line 152
    :goto_1
    return-object v0

    .line 127
    :cond_0
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d0277

    if-ne v0, v2, :cond_1

    .line 128
    const v0, 0x7f090106

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mail/ui/ToastBarOperation;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v2, v2, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 129
    :cond_1
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d027d

    if-ne v0, v2, :cond_2

    .line 130
    const v0, 0x7f11000c

    goto :goto_0

    .line 131
    :cond_2
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d000e

    if-ne v0, v2, :cond_3

    .line 132
    const v0, 0x7f090107

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mail/ui/ToastBarOperation;->aqp:Lcom/android/mail/providers/Folder;

    iget-object v2, v2, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 133
    :cond_3
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d0276

    if-ne v0, v2, :cond_4

    .line 134
    const v0, 0x7f11000a

    goto :goto_0

    .line 135
    :cond_4
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d0284

    if-ne v0, v2, :cond_5

    .line 136
    const v0, 0x7f110006

    goto :goto_0

    .line 137
    :cond_5
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d0285

    if-ne v0, v2, :cond_6

    .line 138
    const v0, 0x7f110007

    goto :goto_0

    .line 139
    :cond_6
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d0280

    if-ne v0, v2, :cond_7

    .line 140
    const v0, 0x7f110008

    goto :goto_0

    .line 141
    :cond_7
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d0281

    if-ne v0, v2, :cond_8

    .line 142
    const v0, 0x7f110005

    goto :goto_0

    .line 143
    :cond_8
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d028e

    if-ne v0, v2, :cond_9

    .line 144
    const v0, 0x7f110004

    goto :goto_0

    .line 145
    :cond_9
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    const v2, 0x7f0d0286

    if-ne v0, v2, :cond_a

    .line 146
    const v0, 0x7f110009

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 148
    goto/16 :goto_0

    .line 150
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->LQ:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->LQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public av(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->Zr:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, " mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, " mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lcom/android/mail/ui/ToastBarOperation;->LQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, " mBatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-boolean v1, p0, Lcom/android/mail/ui/ToastBarOperation;->aKo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Lcom/android/mail/ui/ToastBarOperation;->Zr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, " mFolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/android/mail/ui/ToastBarOperation;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->LQ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aEr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aKo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->Zr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/android/mail/ui/ToastBarOperation;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    return-void

    :cond_0
    move v0, v1

    .line 96
    goto :goto_0
.end method

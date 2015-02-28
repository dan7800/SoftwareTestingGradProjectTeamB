.class public Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Tw:Landroid/accounts/Account;

.field private final Xy:Ljava/lang/String;

.field private bsE:Ljava/lang/String;

.field private final bsF:I

.field private final bsG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/google/android/gm/welcome/t;

    invoke-direct {v0}, Lcom/google/android/gm/welcome/t;-><init>()V

    sput-object v0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsE:Ljava/lang/String;

    .line 181
    const-class v0, Landroid/accounts/Account;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Tw:Landroid/accounts/Account;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Xy:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsF:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsG:I

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsE:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Tw:Landroid/accounts/Account;

    .line 191
    iput-object p3, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Xy:Ljava/lang/String;

    .line 192
    iput p4, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsF:I

    .line 193
    iput p5, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsG:I

    .line 194
    return-void
.end method


# virtual methods
.method public final IZ()Z
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsF:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Ja()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 227
    iget v1, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsF:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public final el(I)Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;
    .locals 6

    .prologue
    .line 231
    new-instance v0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsE:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Tw:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Xy:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsG:I

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;-><init>(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 242
    instance-of v1, p1, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    check-cast p1, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    .line 246
    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsE:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Tw:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Tw:Landroid/accounts/Account;

    invoke-static {v1, v2}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Xy:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Xy:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsF:I

    iget v2, p1, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsF:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsG:I

    iget v2, p1, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsG:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fy(Ljava/lang/String;)Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;
    .locals 6

    .prologue
    .line 236
    new-instance v0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;

    iget-object v1, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsE:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Tw:Landroid/accounts/Account;

    iget v4, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsF:I

    iget v5, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsG:I

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;-><init>(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;II)V

    return-object v0
.end method

.method public final getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsE:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Xy:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 255
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Tw:Landroid/accounts/Account;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Xy:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsG:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final mr()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Tw:Landroid/accounts/Account;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Tw:Landroid/accounts/Account;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    iget-object v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->Xy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Lcom/google/android/gm/welcome/WelcomeTourState$AccountState;->bsG:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    return-void
.end method

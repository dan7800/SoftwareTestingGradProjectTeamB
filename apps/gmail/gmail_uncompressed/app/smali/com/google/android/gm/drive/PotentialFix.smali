.class public Lcom/google/android/gm/drive/PotentialFix;
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
            "Lcom/google/android/gm/drive/PotentialFix;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final baF:Ljava/lang/String;

.field private final baG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final baH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final baI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final baJ:Z

.field private final baK:Ljava/lang/String;

.field private final baL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/gm/drive/k;

    invoke-direct {v0}, Lcom/google/android/gm/drive/k;-><init>()V

    sput-object v0, Lcom/google/android/gm/drive/PotentialFix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baF:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baG:Ljava/util/List;

    .line 122
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baG:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baH:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baH:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baI:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baI:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baJ:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baK:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baL:Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baL:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 131
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/api/a/a/a/d;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/google/api/a/a/a/d;->Dq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baF:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/google/api/a/a/a/d;->Dr()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baG:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Lcom/google/api/a/a/a/d;->Ds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baH:Ljava/util/List;

    .line 64
    invoke-virtual {p1}, Lcom/google/api/a/a/a/d;->YH()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baJ:Z

    .line 65
    invoke-virtual {p1}, Lcom/google/api/a/a/a/d;->Dt()Ljava/util/List;

    move-result-object v0

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/drive/PotentialFix;->baI:Ljava/util/List;

    .line 68
    const-string v2, "READER"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/google/android/gm/drive/PotentialFix;->baI:Ljava/util/List;

    const-string v3, "READER"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    const-string v2, "COMMENTER"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/google/android/gm/drive/PotentialFix;->baI:Ljava/util/List;

    const-string v3, "COMMENTER"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    const-string v2, "WRITER"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baI:Ljava/util/List;

    const-string v2, "WRITER"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/a/a/a/d;->YI()Lcom/google/api/a/a/a/f;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/api/a/a/a/f;->Dv()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baK:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/google/api/a/a/a/d;->YG()Lcom/google/api/a/a/a/e;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/api/a/a/a/e;->Dw()Ljava/util/List;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lcom/google/android/gm/drive/PotentialFix;->baL:Ljava/util/List;

    .line 86
    return-void

    :cond_4
    move-object v0, v1

    .line 80
    goto :goto_0
.end method

.method public static dG(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 36
    const-string v0, "ADD_COLLABORATORS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "INCREASE_PUBLIC_VISIBILITY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "INCREASE_DOMAIN_VISIBILITY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final Dq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baF:Ljava/lang/String;

    return-object v0
.end method

.method public final Dr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baG:Ljava/util/List;

    return-object v0
.end method

.method public final Ds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baH:Ljava/util/List;

    return-object v0
.end method

.method public final Dt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baI:Ljava/util/List;

    return-object v0
.end method

.method public final Du()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baJ:Z

    return v0
.end method

.method public final Dv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baK:Ljava/lang/String;

    return-object v0
.end method

.method public final Dw()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baL:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baG:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baH:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baI:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 139
    iget-boolean v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baJ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/gm/drive/PotentialFix;->baL:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 142
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

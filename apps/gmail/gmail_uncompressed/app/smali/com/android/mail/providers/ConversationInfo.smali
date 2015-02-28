.class public Lcom/android/mail/providers/ConversationInfo;
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
            "Lcom/android/mail/providers/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final azL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/providers/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field public azM:I

.field public azN:I

.field public azO:Ljava/lang/String;

.field public azP:Ljava/lang/String;

.field public azQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/android/mail/providers/j;

    invoke-direct {v0}, Lcom/android/mail/providers/j;-><init>()V

    sput-object v0, Lcom/android/mail/providers/ConversationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/android/mail/providers/ConversationInfo;->azM:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/ConversationInfo;->azM:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/ConversationInfo;->azN:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azP:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azQ:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/android/mail/providers/ParticipantInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/mail/providers/ConversationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static c([B)Lcom/android/mail/providers/ConversationInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 97
    array-length v0, p0

    invoke-virtual {v1, p0, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 98
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    sget-object v0, Lcom/android/mail/providers/ConversationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ConversationInfo;

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    iput p1, p0, Lcom/android/mail/providers/ConversationInfo;->azM:I

    .line 115
    iput p2, p0, Lcom/android/mail/providers/ConversationInfo;->azN:I

    .line 116
    iput-object p3, p0, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lcom/android/mail/providers/ConversationInfo;->azP:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/android/mail/providers/ConversationInfo;->azQ:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public final a(Lcom/android/mail/providers/ParticipantInfo;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public final b(Lcom/android/mail/providers/ConversationInfo;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    iget v0, p1, Lcom/android/mail/providers/ConversationInfo;->azM:I

    iput v0, p0, Lcom/android/mail/providers/ConversationInfo;->azM:I

    .line 71
    iget v0, p1, Lcom/android/mail/providers/ConversationInfo;->azN:I

    iput v0, p0, Lcom/android/mail/providers/ConversationInfo;->azN:I

    .line 72
    iget-object v0, p1, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/android/mail/providers/ConversationInfo;->azP:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azP:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/android/mail/providers/ConversationInfo;->azQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azQ:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final bi(Z)Z
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/ParticipantInfo;

    .line 137
    invoke-virtual {v0, p1}, Lcom/android/mail/providers/ParticipantInfo;->bi(Z)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azQ:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    .line 144
    :goto_1
    return v1

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azP:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/mail/providers/ConversationInfo;->azM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/mail/providers/ConversationInfo;->azN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/mail/providers/ConversationInfo;->azQ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/mail/providers/ConversationInfo;->azP:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    const-string v1, "[ConversationInfo object: messageCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget v1, p0, Lcom/android/mail/providers/ConversationInfo;->azM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", draftCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget v1, p0, Lcom/android/mail/providers/ConversationInfo;->azN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", firstSnippet= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ", firstUnreadSnippet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lcom/android/mail/providers/ConversationInfo;->azP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, ", participants = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final uN()[B
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 106
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/providers/ConversationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/mail/providers/ConversationInfo;->azM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/android/mail/providers/ConversationInfo;->azN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/mail/providers/ConversationInfo;->azL:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 90
    return-void
.end method

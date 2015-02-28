.class public Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Nc:Lcom/android/mail/providers/Account;

.field private final YQ:Ljava/lang/String;

.field private final aPO:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

.field private final aPP:J

.field private final aPQ:J

.field private final aPR:J

.field private final aPS:I

.field private final aPT:I

.field private final ald:Lcom/android/mail/providers/Message;

.field private final amr:Lcom/android/mail/providers/Conversation;

.field private final aqp:Lcom/android/mail/providers/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 595
    new-instance v0, Lcom/android/mail/utils/K;

    invoke-direct {v0}, Lcom/android/mail/utils/K;-><init>()V

    sput-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    invoke-static {}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->values()[Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPO:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 616
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    iput-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->Nc:Lcom/android/mail/providers/Account;

    .line 617
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Conversation;

    iput-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->amr:Lcom/android/mail/providers/Conversation;

    .line 618
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Message;

    iput-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->ald:Lcom/android/mail/providers/Message;

    .line 619
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    iput-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aqp:Lcom/android/mail/providers/Folder;

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPP:J

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->YQ:Ljava/lang/String;

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPQ:J

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPR:J

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPS:I

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPT:I

    .line 626
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;B)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0, p1, p2}, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Conversation;Lcom/android/mail/providers/Message;Lcom/android/mail/providers/Folder;JLjava/lang/String;JJII)V
    .locals 1

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPO:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 503
    iput-object p2, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->Nc:Lcom/android/mail/providers/Account;

    .line 504
    iput-object p3, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->amr:Lcom/android/mail/providers/Conversation;

    .line 505
    iput-object p4, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->ald:Lcom/android/mail/providers/Message;

    .line 506
    iput-object p5, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aqp:Lcom/android/mail/providers/Folder;

    .line 507
    iput-wide p6, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPP:J

    .line 508
    iput-object p8, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->YQ:Ljava/lang/String;

    .line 509
    iput-wide p9, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPQ:J

    .line 510
    iput-wide p11, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPR:J

    .line 511
    iput p13, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPS:I

    .line 512
    iput p14, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPT:I

    .line 513
    return-void
.end method

.method static synthetic a(Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;)Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->amr:Lcom/android/mail/providers/Conversation;

    return-object v0
.end method


# virtual methods
.method public final AV()Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPO:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    return-object v0
.end method

.method public final AW()Lcom/android/mail/providers/Message;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->ald:Lcom/android/mail/providers/Message;

    return-object v0
.end method

.method public final AX()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPT:I

    return v0
.end method

.method public final AY()I
    .locals 2

    .prologue
    .line 560
    sget-object v0, Lcom/android/mail/utils/J;->aPN:[I

    iget-object v1, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPO:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-virtual {v1}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 570
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no action text for this NotificationActionType."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :pswitch_0
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0}, Lcom/android/mail/providers/Folder;->uR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const v0, 0x7f090175

    .line 568
    :goto_0
    return v0

    .line 565
    :cond_0
    const v0, 0x7f090176

    goto :goto_0

    .line 568
    :pswitch_1
    const v0, 0x7f090177

    goto :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public final getSource()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPS:I

    return v0
.end method

.method public final getWhen()J
    .locals 2

    .prologue
    .line 548
    iget-wide v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPR:J

    return-wide v0
.end method

.method public final oN()Lcom/android/mail/providers/Account;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->Nc:Lcom/android/mail/providers/Account;

    return-object v0
.end method

.method public final pg()Lcom/android/mail/providers/Conversation;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->amr:Lcom/android/mail/providers/Conversation;

    return-object v0
.end method

.method public final vT()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aqp:Lcom/android/mail/providers/Folder;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 582
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPO:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-virtual {v0}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->Nc:Lcom/android/mail/providers/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 584
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->amr:Lcom/android/mail/providers/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 585
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->ald:Lcom/android/mail/providers/Message;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 586
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aqp:Lcom/android/mail/providers/Folder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 587
    iget-wide v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPP:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 588
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->YQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    iget-wide v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPQ:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 590
    iget-wide v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPR:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 591
    iget v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationAction;->aPT:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    return-void
.end method

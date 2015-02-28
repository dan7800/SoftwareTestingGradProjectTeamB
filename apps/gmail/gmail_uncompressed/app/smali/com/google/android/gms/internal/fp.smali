.class public final Lcom/google/android/gms/internal/fp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/q;


# instance fields
.field public final bRY:Ljava/lang/String;

.field public final bSA:J

.field public final bSB:Z

.field public final bSC:J

.field public final bSD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bSE:J

.field public final bSF:Ljava/lang/String;

.field public final bSG:J

.field public final bSH:Ljava/lang/String;

.field public final bSI:Z

.field public final bSJ:Ljava/lang/String;

.field public final bSK:Ljava/lang/String;

.field public final bSL:Z

.field public final bSM:Z

.field public final bSN:Z

.field public final bSw:Z

.field public final bSx:Ljava/lang/String;

.field public final bSy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bSz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final errorCode:I

.field public final orientation:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/q;

    invoke-direct {v0}, Lcom/google/android/gms/internal/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fp;->CREATOR:Lcom/google/android/gms/internal/q;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JI",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fp;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fp;->bRY:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fp;->bSx:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/fp;->bSy:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/internal/fp;->errorCode:I

    if-eqz p6, :cond_1

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/fp;->bSz:Ljava/util/List;

    iput-wide p7, p0, Lcom/google/android/gms/internal/fp;->bSA:J

    iput-boolean p9, p0, Lcom/google/android/gms/internal/fp;->bSB:Z

    iput-wide p10, p0, Lcom/google/android/gms/internal/fp;->bSC:J

    if-eqz p12, :cond_2

    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/fp;->bSD:Ljava/util/List;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/internal/fp;->bSE:J

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/fp;->orientation:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/fp;->bSF:Ljava/lang/String;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/fp;->bSG:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/fp;->bSH:Ljava/lang/String;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fp;->bSI:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/fp;->bSJ:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/internal/fp;->bSK:Ljava/lang/String;

    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fp;->bSL:Z

    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fp;->bSM:Z

    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fp;->bSw:Z

    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fp;->bSN:Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/q;->a(Lcom/google/android/gms/internal/fp;Landroid/os/Parcel;)V

    return-void
.end method

.class public Lcom/google/android/gms/feedback/ErrorReport;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/feedback/ErrorReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bJA:Landroid/app/ApplicationErrorReport;

.field public bJB:I

.field public bJC:Ljava/lang/String;

.field public bJD:Ljava/lang/String;

.field public bJE:Ljava/lang/String;

.field public bJF:Ljava/lang/String;

.field public bJG:Ljava/lang/String;

.field public bJH:Ljava/lang/String;

.field public bJI:Ljava/lang/String;

.field public bJJ:I

.field public bJK:Ljava/lang/String;

.field public bJL:Ljava/lang/String;

.field public bJM:Ljava/lang/String;

.field public bJN:Ljava/lang/String;

.field public bJO:[Ljava/lang/String;

.field public bJP:[Ljava/lang/String;

.field public bJQ:[Ljava/lang/String;

.field public bJR:Ljava/lang/String;

.field public bJS:Ljava/lang/String;

.field public bJT:[B

.field public bJU:I

.field public bJV:I

.field public bJW:I

.field public bJX:I

.field public bJY:Ljava/lang/String;

.field public bJZ:Ljava/lang/String;

.field public bKa:Landroid/os/Bundle;

.field public bKb:Z

.field public bKc:I

.field public bKd:I

.field public bKe:Z

.field public bKf:Ljava/lang/String;

.field public bKg:Ljava/lang/String;

.field public blK:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public exceptionClassName:Ljava/lang/String;

.field public exceptionMessage:Ljava/lang/String;

.field public release:Ljava/lang/String;

.field public stackTrace:Ljava/lang/String;

.field public throwClassName:Ljava/lang/String;

.field public throwFileName:Ljava/lang/String;

.field public throwLineNumber:I

.field public throwMethodName:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/feedback/g;

    invoke-direct {v0}, Lcom/google/android/gms/feedback/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/feedback/ErrorReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJA:Landroid/app/ApplicationErrorReport;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->versionCode:I

    return-void
.end method

.method constructor <init>(ILandroid/app/ApplicationErrorReport;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZIIZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/app/ApplicationErrorReport;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJA:Landroid/app/ApplicationErrorReport;

    iput p1, p0, Lcom/google/android/gms/feedback/ErrorReport;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJA:Landroid/app/ApplicationErrorReport;

    iput-object p3, p0, Lcom/google/android/gms/feedback/ErrorReport;->description:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJB:I

    iput-object p5, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJC:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJD:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJE:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJF:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJG:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJH:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJI:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJJ:I

    iput-object p13, p0, Lcom/google/android/gms/feedback/ErrorReport;->release:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJK:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJL:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJM:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJN:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJO:[Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJP:[Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJQ:[Ljava/lang/String;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJR:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJS:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJT:[B

    move/from16 v0, p24

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJU:I

    move/from16 v0, p25

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJV:I

    move/from16 v0, p26

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJW:I

    move/from16 v0, p27

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJX:I

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJY:Ljava/lang/String;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->blK:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bJZ:Ljava/lang/String;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bKa:Landroid/os/Bundle;

    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bKb:Z

    move/from16 v0, p33

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bKc:I

    move/from16 v0, p34

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bKd:I

    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bKe:Z

    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->exceptionClassName:Ljava/lang/String;

    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->throwFileName:Ljava/lang/String;

    move/from16 v0, p38

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->throwLineNumber:I

    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->throwClassName:Ljava/lang/String;

    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->throwMethodName:Ljava/lang/String;

    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->stackTrace:Ljava/lang/String;

    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->exceptionMessage:Ljava/lang/String;

    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bKf:Ljava/lang/String;

    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bKg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/feedback/g;->a(Lcom/google/android/gms/feedback/ErrorReport;Landroid/os/Parcel;I)V

    return-void
.end method
